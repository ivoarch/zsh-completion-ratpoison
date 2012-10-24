#compdef ratpoison
#
# [2005-04-05, 20.49-21.17] by Zrajm C Akfohg (GPL-2 license)
#
# TODO:
# o add completion of args to ratpoison commands (where useful)
# o better completion of --display arg
#

local state context line
typeset -A opt_args

   _arguments \
       '(- :)'{-h,--help}'[display help information]' \
       '(- :)'{-v,--version}'[display version information]' \
       '(-d --display)'{-d,--display}'[specify X display to use]:display:_x_display' \
       '(-s --screen)'{-s,--screen}'[use only specified screen]:number:' \
       '(-c --command)'{-c,--command}'[send ratpoison colon-command]:ratpoison command:->cmd' \
       '(-i --interactive)'{-i,--interactive}'[send commands in interactive mode]' \
       '(-f --file)'{-f,--file}'[specify an alternative config file]:files:_files'

   if [[ $state = cmd ]]; then
local rpcommands
       rpcommands=(
	   abort addhook alias bind banish chdir clrunmanaged cnext cprev color
	   cother curframe definekey dedicate delete delkmap describekey echo
	   escape exec fdump focus focuslast focusleft focusdown focusright
	   focusprev focusup fselect gdelete getenv getsel gmerge gmove gnew
	   gnewbg gnext gprev gravity groups gselect help hsplit inext info iprev
	   iother kill lastmsg license link listhook meta msgwait newkmap newwm
	   next nextscreen number only other prev prevscreen prompt putsel quit
	   ratwarp ratrelwarp ratclick rathold readkey redisplay remhook remove
	   resize restart rudeness sdump select set setenv sfdump shrink split
	   source sselect startup_message time title tmpwm unalias unbind
	   undefinekey undo unmanage unsetenv verbexec version vsplit warp windows
       )
       _values "ratpoison commands" ${(q)rpcommands[@]}
fi
  #[[eof]]
