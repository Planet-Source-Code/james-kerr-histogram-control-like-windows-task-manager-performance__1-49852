Simple Histogram Control
========================

This control is like Windows Task Manager performance scrollers.
It's pretty simple, so the lack of comments :-( shouldn't be a problem.

The main useful bit is bulding the scroller in a hidden picture box, and using bitblt to move it onto the
UserControl (so we don't have to keep adding to the memory required for the display).

There are a few properties for the colours and grid settings, and the whole thing's runtime resizeable
(though I don't know why you'd want to do that).

Feel free to use/modify/improve etc. this for your own stuff - hope you find it useful!

Greetings from Scotland.

James (JamesKerr@tcmsys.com)