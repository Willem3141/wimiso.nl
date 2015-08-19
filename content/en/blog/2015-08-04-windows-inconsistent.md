---
id: 2015-08-04-windows-inconsistent
title: Why is Windows so inconsistent?
kind: article
created_at: 2015-08-04 16:35
tags:
 - random
---

A few days ago our family laptop was upgraded to Windows 10, coming from Windows 8.1. Let's have a look how well it works...

<!-- more -->

<div class="alert alert-warning"><b>Warning:</b> this article is a rant. Read at your own risk.</div>

I was really looking forward to Windows 10, since it was said that many strange Windows 8 features (that I wasn't really fond of) would be reverted, and because there would be new features. (Virtual desktops! Yay!) However, I was quite disappointed after I had tried it.

Bugs
----

I didn't really search for bugs; I bumped into several problems however. Cortana sometimes asks for your attention, but something isn't quite right there.

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/cortana-user-name.png", :description => "How are you, Mr Name Surname?" %>

(By the way, Cortana had already asked me for my name, and I really just entered *Willem*.)

In general Cortana seems confused about interface texts. I have the feeling that translatable strings are mixed up somewhere.

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/cortana-menu.png", :description => "I think the correct labels would read, from top to bottom: Menu, Home, Notebooks, Reminders, Feedback. The icons are correct, actually." %>

This also makes it rather hard to configure Cortana. In the settings panel all strings seem to have shifted one place.

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/cortana-strange-menu.png", :description => "Note the Off label at the on/off switches." %>

The nastiest bug I saw was &ndash; ironically enough &ndash; in the *Snipping tool* that I used to make screenshots of the Start menu for this article. The problem seemed to be that the Start menu was supposed to open on the foreground, and the overlay of the *Snipping tool* tried to also open on the foreground. I couldn't even open a task manager window to kill the *Snipping tool*. Finally I needed to log off my session and log on again to solve it.

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/clipping-tool-hang.jpg", :description => "Sorry for the bad quality, but the program used to make screenshots actually crashed." %>

Inconsistency
-------------

We should take into account that Windows 10 was only released one week ago. I suppose that the bugs I mentioned will be solved quickly. What I dislike much more about Windows 10 is that it is not consistent. In fact, not at all. The system doesn't feel like one thing: it seems like programs were created by separate teams that used completely different design guide lines &ndash; oh yeah, that actually was the case! Some programs are still &lsquo;old-fashioned&rsquo; applications with a normal desktop interface, while some programs look like the Metro apps from Windows 8, but then put inside a window.

Let's start with the *File Explorer*. Clicking with the right mouse button on a file results in a popup menu.

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/file-explorer-popup-file.png", :description => "No problems so far..." %>

But for some incomprehensible reason you get a menu that looks completely different when you click the path name instead of a file.

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/file-explorer-popup-address-bar.png", :description => "Distinct popup menus until now: 2." %>

And when you open a dropdown menu in the ribbon, you get a different one again. (Even the text rendering is different!)

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/file-explorer-popup-ribbon.png", :description => "Distinct popup menus until now: 3." %>

And that was all in the *File Explorer* &ndash; a normal desktop application. If we look at a Metro application, we see a completely different type of menu.

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/alarms-popup.png", :description => "Distinct popup menus until now: 4." %>

The shell also has its own share of popup menus, for example when clicking an item with the right mouse button.

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/start-menu-popup.png", :description => "Distinct popup menus until now: 5." %>

Or when you click the little arrow behind *File Explorer* to open a sub menu. (It is very similar to the previous one, but for some reason this menu has a subtle shadow, and the other one doesn't. Also, the font is a bit smaller.)

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/start-menu-submenu.png", :description => "Distinct popup menus until now: 6." %>

Different topic: the system settings. Apparently, Microsoft thought it would be a good idea to make a Metro-style application for the settings. Okay, I understand that. But why did they leave the old desktop application in as well?

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/two-settings-windows.png", :description => "Moar inconsistency!" %>

Most stuff is configurable in both versions...

<%= render "/image.html", :url => "/static/img/2015-08-04-windows-inconsistent/two-resolution-windows.png", :description => "Oh, nice, now you can set the screen resolution on two different places." %>

... but not all of them, like the window theme &ndash; you can only change that in the desktop version. And the privacy settings are only in the Metro version. Why? No idea. And then they think it's strange that people can't find stuff, right?

I'll stop here, although I could go on for ages about things like these. My opinion is probably clear by now, namely: I'm in a state of total confusion about why Microsoft thought that it would be a good idea to throw consistency out of the window.
