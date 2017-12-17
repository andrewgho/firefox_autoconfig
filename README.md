firefox_autoconfig - lock some Firefox preferences against unwanted features
============================================================================

I am a long-time user of the
[Mozilla Firefox](https://www.mozilla.org/en-US/firefox/)
browser because I enjoy its extension ecosystem, and believe that having many
implementations of web browsers is healthy for the world. However, there are
some features in modern Firefox that I dislike. For example, I'm not personally
interested in using any social integration features or
[Pocket](https://getpocket.com/),
and I resent it when a browser foists application-level features on me.
I was also incensed that one time
[Mozilla force-installed a marketing related add-on](http://mashable.com/2017/12/16/mr-robot-looking-glass-mozilla-firefox-backlash/#PC4Yx6MGJiqA)
via its experiments system.

Firefox has a
[enterprise deployment guide](https://developer.mozilla.org/en-US/Firefox/Enterprise_deployment)
which includes instructions on how to lock down various user preferences.
This repository includes some autoconfig files and a simple Makefile to put
them in the right place (on macOS—pull requests welcome for other operating
systems).

Install
-------

This puts the two config files in place on macOS:

    make

The config files disable:

* Pocket integration
* Social integration
* Shield experiments
