---
id: 2015-01-21-killing-in-kwin
title: Killing programs in KWin
kind: article
created_at: 2015-01-21 15:44
tags:
 - tricks
---

This is an interesting trick that I noticed if you are running [KWin](http://en.wikipedia.org/wiki/KWin): you can very easily forcefully quit a program. Press **Ctrl + Alt + Esc**, and the cursor is replaced by a skull. Then click the program you want to kill, and it is gone immediately. If you accidentally pressed the shortcut and you don't want to kill any program, just click on the right mouse button to dismiss the function.

<!-- more -->

<%= render "image", :url => "/static/img/2015-01-21-killing-in-kwin.png", :description => "Notice the skull cursor" %>

If this doesn't work, the keyboard shortcut may not be set. In that case, go to the *Global Keyboard Shortcuts*, pick component *KWin* and set *Force Quit Window* to **Ctrl + Alt + Esc** (or any other shortcut).