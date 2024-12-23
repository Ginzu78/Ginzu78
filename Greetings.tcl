# greetings.tcl
#
# This script greets people who join channels.
#
# Enable for a channel with:	.chanset #channel +greetings
# Disable for a channel with: 	.chanset #channel -greetings
#
# See https://github.com/hwipl/eggdrop-scripts for the latest version and
# additional information including the license (MIT).

# tested versions, might run on earlier versions
package require Tcl 8.6
package require eggdrop 1.9.5

namespace eval ::greetings {
	# channel flag for enabling/disabling greetings
	setudef flag greetings
}

# greet users when they join a channel
proc ::greetings::join_greeting { nick host hand chan } {
	# check channel flag if greetings are enabled in this channel
	if {![channel get $chan greetings]} {
		return 0
	}
	puthelp "PRIVMSG $chan :Wellcome to :$chan :${nick}!"
	return 1
}

namespace eval ::greetings {
	bind join - * ::greetings::join_greeting
	putlog "Loaded greetings.tcl"
}
