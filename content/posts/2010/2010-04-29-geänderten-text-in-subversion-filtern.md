---
title: "Geänderten Text in Subversion filtern"
date: 2010-04-29T11:07:08
lastmod: 2010-04-29T11:07:08
categories:
  - SKM
  - Subversion
---
Ich hatte ein kleines Problem und wollte in einem Subversion Repository rausfinden, in welcher Version ein Änderung vorliegt. Also habe ich mir 
Kurzerhand folgendes Script geschrieben (check.sh)

```bash
#!/bin/bash
REVISIONS=`svn log pom.xml -q|grep "^r" | cut -d"r" -f2 | cut -d" " -f1`
for rev in $REVISIONS; do
    svn blame -r$rev:$rev pom.xml | tr -s " " | grep -v "\ \-\ \- "
done
```

Wenn man dann die Ausgabe des Scriptes filtert:

```bash
check.sh | grep "Text"
```

Die Ausgabe sieht ungefährt wie folgt aus:

```bash
1345 asdfasdfasdf
```
Die 1345 ist die Revision Nummber in der die Änderung ("Text") gemacht wurde.

Das Problem bei dem Script ist, dass es sehr gut funktioniert, aber sobalt das Repository bzw. die Anzahl der Revisions die durchsucht werden 
müssen größer wird, dauert es etwas. Besser wäre da die Nutzung von <a href="http://www.supose.org">SupoSE</a>.
<br/>
<br/><strong>Update:</strong>Es gibt leider ein kleines Problem, dass bei der obigen Methode nur der geänderte Text gefunden werden kann aber 
kein Text, der gelöscht wurde.
