---
id: 2014-12-30-signals-in-qml
title: Signals and functions in QML
kind: article
created_at: 2014-12-30 19:21
tags:
 - programming
needs_highlighting: true
---

Today when I was working on a small QML program, I ran into a very stupid bug. I used a `Timer` to make something happen after five seconds. <!-- more --> So I did:

    #!js
    Timer {
        id: someTimer
        interval: 5000
        onTriggered: function() {
            // do something
        }
    }

and triggered the timer elsewhere using `someTimer.start()`. However, that did not work; the timer was never triggered for some reason.

Well, after about one hour and a half, and a lot of messing around with example code that &lsquo;magically&rsquo; did work, I suddenly saw it. That `function()` is incorrect:

    #!js
    Timer {
        id: someTimer
        interval: 5000
        onTriggered: {
            // do something
        }
    }

which indeed fixed the issue. Sigh. I don't even know why I put that there in the first place... Sometimes the most stupid bugs can keep you busy for hours.
