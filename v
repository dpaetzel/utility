#!/usr/bin/env fish


# -a, --alternate-editor=COMMAND
# if the Emacs server is not running, run the specified shell command instead.
# This can also be specified via the ALTERNATE_EDITOR environment variable. If
# the value of ALTERNATE_EDITOR is the empty string, run "emacs --daemon" to
# start Emacs in daemon mode, and try to connect to it.
# XMODIFIERS=@im=none emacsclient --create-frame -a "" -s /tmp/emacs1000/server $argv

# Always remove any -c argument which is a relic parameter from the time I used
# emacsclient.
# argparse 'c/create-frame' -- $argv

# emacs $argv


XMODIFIERS=@im=none emacsclient --create-frame -a "" $argv
