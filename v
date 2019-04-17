#!/usr/bin/env fish


# -a, --alternate-editor=COMMAND
# if the Emacs server is not running, run the specified shell command instead.
# This can also be specified via the ALTERNATE_EDITOR environment variable. If
# the value of ALTERNATE_EDITOR is the empty string, run "emacs --daemon" to
# start Emacs in daemon mode, and try to connect to it.
emacsclient -a "" -s /tmp/emacs1000/server $argv
