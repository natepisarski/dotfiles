# Dot files - Nate Pisarski
A collection of configuration files that I use on my computer.

# How to use these
Well, here's the thing... This is more of a backup repository than it is an actually useful share. So, unfortunately, you may not be able to pick these up and "run with them", so to say. But they hopefully serve as useful examples for how to do things on your system. My name is 'nate', so you may have to change some "/home/nate/" stuff around.

# Types of files in here
There are a few random files thrown in here. Some of the most important ones:

## Emacs Module System
If you copy `ConfigurationFiles/emacsd` to your `~/.emacs.d`, it will set you up with a small module system for Emacs. It comes pre-bundled with a few modules that configure things to my liking, but these can be changed. The `emacs` file in the root of the project utilizes these modules.

## Two kinds of herbstluftwm and i3 configurations
These set up a lot of infrastructure for tiling window managers, both single monitor and triple. Both set up new shortcuts for setting backgrounds, transparency, etc. The herbstluftwm panel configuration in `herbstluftwm_multimonitor_panel` parses `herbstclient` output to colorize tags that will swap monitors, which is for some reason not a default feature of hlwm.

# License
Use these truly however you want. Public Domain.
