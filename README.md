Foreign Movie Slicer: helping people learn new languages
========================================================

If you want to learn a new foreign word and have a video with its subtitle, **Foreign Movie Slicer** is what you need!


Goal
====

The goal (at least initally), was to solve one of the problems proposed in ThoughtWorks Code Jam (during FISL 11, Porto Alegre). We could not use TDD/BDDD and it was possible to use third party libraries or softwares to solve the problem.

It didn't matter how it was done and how ugly the code was, the only requirement was: it just need to work as soon as possible.


Usage
=====

You need to tell what is the wanted word and the video file path. It assumes there is a subtitle for that video. Like:

    $ ruby foreign.rb matrix "The Matrix.avi"


*Note:* it works only for videos with subtitle name "s.srt" :-)


How it Works
============

It parses the subtitle file, looking for the wanted word. When it finds that, it then calls `vlc` player to play that video slice and close the player.


Team
====

There were about 7 guys working on this project and we don't know their secret names. But there is a photo of the hackers!

![Foreign Movie Slicer hackers around irb](http://a.yfrog.com/img38/1525/yi1z.jpg)
