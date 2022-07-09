---
title: "Kommandozeile und Java?"
date: 2010-12-28T09:58:00
lastmod: 2010-12-28T09:58
categories:
  - Java
  - Neuigkeiten
---
Es passiert doch dann und wann, dass man noch einen Kommandozeile unterstützen muss. Das Problem ist dann, wie löst man das Problem mit Java? 

Klar kann man hingehen und alles selbst schreiben, aber das muss man nicht. Es gibt doch entsprechende Bibliotheken, die das schon sehr schön erledigen.

In meinem speziellen Fall hatte ich das Problem, dass ich eine Unterstützung benötigte, die so etwas wie <strong>Kommandos</strong> unterstützt. 
Das heißt so etwas wie:
```bash
programmname Kommando [Optionen]
```

Dabei ist <strong>Kommando</strong> ein Name für eine Programmfunktion und damit wird dann ein entsprechender Programmteil aufgerufen. 
Beispiele für solche Konstellationen sind z.B. <a href="http://subversion.apache.org">Subversion</a>, <a href="http://git-scm.com/">Git</a>, 
<a href="http://mercurial.selenic.com/">Mercurial</a> oder <a href="http://bazaar.canonical.com/en/">Bazaar</a> und viele andere Programme.
