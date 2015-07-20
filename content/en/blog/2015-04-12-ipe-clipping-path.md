---
id: 2015-04-12-ipe-clipping-path
title: "Clipping paths in Ipe"
kind: article
created_at: 2015-04-12 14:03
tags:
 - tricks
---

In this post I want to explain a little-known (at least to me) feature of the Ipe drawing editor: you can use a so-called *clipping path* to restrict the drawing of an object to a certain arbitrarily-shaped area.

<!-- more -->

How does it work?
-----------------

Sometimes you want to restrict the drawing of an object to a rectangle. That means that while the object itself isn't changed, it is only drawn inside the rectangle, and hidden outside of it.

We can extend this concept to include arbitrary paths instead of only rectangles. We call such a path a *clipping path*, since it *clips* the object to its shape. So, a clipping path is a closed curve that defines an area outside of which some object should not be drawn.

<%= render "/image.html", :url => "/static/img/2015-04-12-ipe-clipping-path.svg", :description => "How clipping works: the shapes on the right are clipped by the dotted circular clipping path" %>

Now the good news: Ipe supports clipping paths. The option is hidden very well in the interface, although the manual mentions it briefly. (But who reads the manual anyway 😃) Here is how it works:

1. First, select the object you want to clip. This needs to be a group object, since you can only apply clipping paths to groups, not to single objects. To group elements, use *Edit > Group* or press `Ctrl+G`. Of course, if you want to add a clipping path to one object, a simple workaround is to just make a group consisting your single element.
2. After that, select the clipping path while holding `Shift`. The clipping path needs to be a path object (yeah, logical, right?). Now the group and the path should both be selected; the group with a pinkish colour, and the path with a red colour.
3. Right-click either the group or the path and select *Add clipping path*.

Here is a video demo:

<%= render "/video.html", :url => "/static/video/2015-04-12-ipe-clipping-paths-demo", :description => "An example of clipping an object" %>

Why do you need this?
---------------------

You can use this for lots of things. For example, if you want to make a circle-shaped image with shapes inside it, you can use a circular clipping shape as an easy way to hide everything outside of the circle.

More complicated clipping paths are possible as well. You can even use clipping paths that consist of multiple path objects. To do this, select the path objects and select *Compose paths* from the right-click menu. Now the path objects are merged into one path object, which you can use as a clipping path.

I don't see the *Add clipping path* option!
-------------------------------------------

Okay, if this all worked for you, you can stop reading here. However, there is a caveat: some Ipe versions (at least 7.1.1) contain a bug that causes the *Add clipping path* option to not be shown, even when you have selected a group and a path. This makes it completely impossible to add a clipping path from the Ipe interface in the normal way. The simplest fix is to just upgrade Ipe (the bug is fixed in version 7.1.3).

If you are unable to upgrade, you can still work around the bug easily by using the *Edit as XML* option.

1. Select your clipping path and click *Edit as XML* in its right-click menu.
2. In the resulting dialog box, select all text between the `<path>` and the `</path>` tags, and copy it.
3. Paste this in a text editor, and replace all newlines by spaces. Copy the result.
4. Now, select the group you want to clip, and click *Edit as XML* in its right-click menu.
5. Replace the `<group>` tag by `<group clip="...">`, where you paste the text from step 3 on the `...`. Click `Ok`, and the clipping path is applied.
