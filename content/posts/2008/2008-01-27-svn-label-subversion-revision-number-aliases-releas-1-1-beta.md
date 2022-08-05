---
title: "SVN-Label: Subversion Revision Number Aliases - Releas 1.1 beta"
date: 2008-01-27T15:22:08
lastmod: 2008-01-27T15:22:08
categories:
  - SKM
  - Subversion
---
Es wurde <a href="http://svnlabel.remynet.org/"  title="SVN Label">SVN Label</a> veröffentlicht, um eine pseudo Funktionalität in Subversion, wie in CVS vorhanden zu emulieren. Es geht darum, einer Revision einen sog. Tag zu geben. Aber eben keinen Subversion Tag, der ja technisch betrachtet auch ein Branch ist, sondern eine Information in einer Revision property gespeicherte Information. Das soll dazu dienen den Übergang zu Subversion etwas einfacher zu gestalten. Es wird ein Hook-Script (pre-revprop-change) benötigt, dass dann diese Information wieder an den Benutzer liefert. Die Speicherung der Labels wir in einer MySQL Datenbank vorgenommen.
