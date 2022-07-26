---
title: "Perl und die Subversion Bindings"
date: 2007-10-12T10:06:24
lastmod: 2007-10-12T10:06:24
categories:
  - SKM
  - Subversion
---
Ich hatte das Problem, verschiedene Änderungen an einem Repository so zu gestalten, dass lediglich eine neue Revision dabei rauskommt.
Hierbei handelt es sich um verschiedene Kopieroperationen, die innerhalb einer Revision durchgeführt werden mussten.
Wenn man das innerhalb einer Arbeitskopie macht, geht das ohne Probleme. Nur ich wollte das Ganze <b>ohne</b> Arbeitskopie haben.
Eine Ausnahme auf der Kommandzeile bildet die Erzeugung von Verzechnissen per *svn mkdir*. Hierbei können mehrere Verzeichnisse 
innerhalb einer Transaktion (sprich einer Revision) angelegt werden.

```bash
svn mkdir URL/dir1 URL/dir2 URL/dir3 -m"- Create directory structure"
```

Im Grunde sollten die folgenden Befehle zu einer Änderung innerhalb einer Revision führen und nicht wie drei.

```bash
svn copy URL/file1 URL/X/file1
svn copy URL/file2 URL/X/file2
svn copy URL/file3 URL/X/file3
```
