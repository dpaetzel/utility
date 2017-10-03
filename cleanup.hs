#!/usr/bin/env stack
-- stack --install-ghc runghc --package turtle
{-# LANGUAGE OverloadedStrings #-}
import Turtle


-- Clean up the $HOME directory (moving anything not belonging there to
-- $HOME/Temporary).


allowedUnsynced =
  [ "Dropbox"
  , "Code"
  , "Mail"
  , "Temporary"
  ]


synced = do
  -- procs "mr" [ "--force", "run", "pwd" ] empty
  shells "mr --force run pwd" empty


main = view synced


-- allowed=( $(grep --no-filename --color -i -E '^\[.*\]' .mrconfig .git.mrconfig .git-annex.mrconfig | sed -r 's/\[(.*)\]/\1/' | paste -d ' ' -s) )
-- temporary=Temporary

-- currentDir=$(pwd)
-- cd $HOME

-- IFS=$'\n'
-- for f in $(ls); do
--     if [[ ${allowed[(i)$f]} -gt $#allowed ]]; then
--         cd $temporary
--         if [[ -e "$f" ]]; then
--             printf "Archiving older versions of $f… "
--             archiveFilename=$(mktemp -u -d -p . "$f-XXXXX")
--             mv "$f" "$archiveFilename" 2&> /dev/null
--         fi
--         cd $HOME

--         print "Cleaning $f"
--         mv "$f" "$temporary"
--     fi
-- done

-- cd "$currentDir"
