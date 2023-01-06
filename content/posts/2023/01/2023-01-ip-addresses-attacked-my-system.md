---
title: "Figure out which ip addresses attacked my system at most"
date: 2023-01-06T12:46:46
lastmod: 2023-01-06T12:46:46
categories:
  - programming
  - shell
  - linux
---
I'm very often on the command line of a linux machine (only plain console via ssh no UI) and 
have to analyze different information from text files. Typically, log files which contain
line oriented things like login failures or alike.

For example having a `auth.log` on a Debian system which look like this (a 10 line snippet):
```text
Jan  1 00:00:50 Debian-bullseye-latest-amd64-base sshd[2515800]: Invalid user web2 from 103.66.206.219 port 57758
Jan  1 00:00:50 Debian-bullseye-latest-amd64-base sshd[2515800]: pam_unix(sshd:auth): check pass; user unknown
Jan  1 00:00:50 Debian-bullseye-latest-amd64-base sshd[2515800]: pam_unix(sshd:auth): authentication failure; logname= uid=0 euid=0 tty=ssh ruser= rhost=103.66.206.219 
Jan  1 00:00:52 Debian-bullseye-latest-amd64-base sshd[2515800]: Failed password for invalid user web2 from 103.66.206.219 port 57758 ssh2
Jan  1 00:00:53 Debian-bullseye-latest-amd64-base sshd[2515800]: Received disconnect from 103.66.206.219 port 57758:11: Bye Bye [preauth]
Jan  1 00:00:53 Debian-bullseye-latest-amd64-base sshd[2515800]: Disconnected from invalid user web2 103.66.206.219 port 57758 [preauth]
Jan  1 00:01:44 Debian-bullseye-latest-amd64-base sshd[2515995]: pam_unix(sshd:auth): authentication failure; logname= uid=0 euid=0 tty=ssh ruser= rhost=218.92.0.190  user=root
Jan  1 00:01:46 Debian-bullseye-latest-amd64-base sshd[2515995]: Failed password for root from 218.92.0.190 port 34975 ssh2
Jan  1 00:01:51 Debian-bullseye-latest-amd64-base sshd[2515995]: Failed password for root from 218.92.0.190 port 34975 ssh2
Jan  1 00:01:54 Debian-bullseye-latest-amd64-base sshd[2515995]: Failed password for root from 218.92.0.190 port 34975 ssh2
...
Jan  1 00:03:19 Debian-bullseye-latest-amd64-base sshd[2516404]: Failed password for root from 218.92.0.190 port 56977 ssh2
Jan  1 00:03:21 Debian-bullseye-latest-amd64-base sshd[2516423]: pam_unix(sshd:auth): authentication failure; logname= uid=0 euid=0 tty=ssh ruser= rhost=51.142.182.209  user=root
Jan  1 00:03:22 Debian-bullseye-latest-amd64-base sshd[2516404]: Failed password for root from 218.92.0.190 port 56977 ssh2
Jan  1 00:03:23 Debian-bullseye-latest-amd64-base sshd[2516423]: Failed password for root from 51.142.182.209 port 1024 ssh2
Jan  1 00:03:23 Debian-bullseye-latest-amd64-base sshd[2516423]: Received disconnect from 51.142.182.209 port 1024:11: Bye Bye [preauth]
Jan  1 00:03:23 Debian-bullseye-latest-amd64-base sshd[2516423]: Disconnected from authenticating user root 51.142.182.209 port 1024 [preauth]
```
I want to know how many attempts where made to break into my system via the user `root` on my system.
So I have to filter the above file like this:
```shell
cat auth.log | grep " Disconnected from authenticating user root " | wc -l
14134
```
That means during January up to know more than 14,000 times it has been tried to attack my system. Ok, but 
I want to know more. What about the different IP addresses which have been used for those attacks? Each line of that
format contains also an ip address. So try to extract that information.

I usually go step-by-step to find the solution. So first I try to extract the ip address which can be extracted
via the following:
```shell
cat auth.log | grep " Disconnected from authenticating user root " | tr -s " " | cut -d " " -f11
218.92.0.190
51.142.182.209
218.92.0.190
218.92.0.190
218.92.0.190
...
```
The output contain only the ip address. But now I would like to know how many ip addresses are being used.
That means first we have to sort the ip addresses to identify duplicate entries in the resulting list.
Unfortunately appending a `sort` to the pipes is simply not enough.
```shell
cat auth.log | grep " Disconnected from authenticating user root " | tr -s " " | cut -d " " -f11 | sort
...
121.26.142.238
121.26.142.238
121.26.142.238
121.26.142.238
121.26.142.238
121.26.142.238
121.26.142.238
121.26.142.238
12.191.116.182
12.191.116.182
12.191.116.182
12.191.116.182
12.191.116.182
12.191.116.182
12.191.116.182
12.191.116.182
...
```
If you take a deeper look into the list the order of ip addresses is not correct. I would expect to 
have `12.191.116.182` before `121.26.142.238`. That means we have to go a different way. This can be done via `sort`.
The way you have to go is via: `sort -t . -k 1,1n -k 2,2n -k 3,3n -k 4,4n`. The option `-t` is to define a different
field separator. In case of ip addresses we use the `.` as separator. Finally, you have to define `-k 1,1n` which 
uses `1` the field number (the first digits of the ip address) and `,1n` the start position and the type `n` means
numeric. You can add the option `--debug` to understand the logic of the `-k` option. The result of 
this intermediate step looks like this:

```shell
cat auth.log | grep " Disconnected from authenticating user root " 
    tr -s " "
    cut -d " " -f11
    sort -t . -k 1,1n -k 2,2n -k 3,3n -k 4,4n
...
222.119.64.11
222.119.64.11
222.119.64.11
222.119.64.11
222.119.64.11
222.119.64.11
222.119.64.11
222.252.25.186
222.252.25.186
222.252.25.186
222.252.25.186
222.252.25.186
222.252.25.186
222.252.25.186
222.252.25.186
222.252.25.186
222.252.25.186
222.252.25.186
222.252.25.186
222.252.25.186
223.17.0.181
223.17.0.181
223.17.0.181
223.17.0.181
223.17.0.181
...
```
So now I need a way to group the same ip's into a group and count the number within that group. 
Luckily on linux that's an easy task just by using `uniq` which reports or omit repeated lines. So to know how many unique 
ip addresses are attacking my system can be solved by using this:
```shell
cat auth.log | grep " Disconnected from authenticating user root " |  
    tr -s " " |
    cut -d " " -f11 |
    sort -t . -k 1,1n -k 2,2n -k 3,3n -k 4,4n |
    uniq |
    wc -l
691
```
So that means 691 unique ip addresses have attacked my system within this year. Furthermore,
I would like to know what are the top 10 ip addresses which have been used. That can be accomplished
by using:
```shell
cat auth.log | grep " Disconnected from authenticating user root " |  
    tr -s " " |
    cut -d " " -f11 |
    sort -t . -k 1,1n -k 2,2n -k 3,3n -k 4,4n |
    uniq -c |
    sort -nr |
    head -10
   
   1132 61.177.173.11
    688 218.92.0.190
    440 61.177.173.2
    142 195.226.194.242
    141 195.226.194.142
     70 61.177.172.124
     60 61.177.173.36
     58 159.65.132.116
     54 61.177.173.50
     52 211.250.74.124
    
```
So the ip address `61.177.173.11` has tried to attack my system 1132 times etc. 
Some explanations about the usage of `uniq -c` that automatically counts the unique lines and prints out something
like this:
```text
    688 218.92.0.190
```
The `688` means the ip address has been occurred 688 times within the file. The final part `sort -nr` is
needed to sort based on that number and the `r` reverses the result meaning the largest number is at the 
beginning and `head -10` prints out the first `10` lines.
