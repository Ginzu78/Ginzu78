################################################################
# Auto Respond v1.0
#
# Author: ]Kami[ (http://www.slo-eggdrop.com)
# Bugs, questions: http://www.slo-eggdrop.com/forum
#
# History:
#        -n/a
#
# Latest Version: 
#               -1.0
#
# To do:
#      -Timer (so bot will respond to words with some delay)
#      -Respond to multiple words (bind pubm ;))
#
# Info:
# Bot will respond to some words (only on channels) with pre
# defined answers. Script is very simple, so expect updates soon :)
##################################################################
# Pubs
##################################################################
bind pub -|- "ok" pub:ok
bind pub -|- "hi" pub:kak_hi
bind pub -|- "bodoh" pub:goblok
bind pub -|- "bye" pub:pergi sono
bind pub -|- "lol" pub:hahahaha
bind pub -|- "apa?" pub:mautau aja loe
bind pub -|- ":)" pub:smile
bind pub -|- ":(" pub:sad
bind pub -|- ";)" pub:wink
bind pub -|- "morning" pub:morning too
bind pub -|- "goblok" pub:goblok loe
bind pub -|- "wk" pub:wkwkwkw
bind pub -|- ":D" pub:big
bind pub -|- "haha" pub:haha
bind pub -|- "hehe" pub:hehe
bind pub -|- ":P" pub:tung
bind pub -|- "malam" pub:mau anu ya
bind pub -|- "sayang" pub:kepala peyang
bind pub -|- "ml" pub:makan lontong
bind pub -|- "cpg" pub:cupang
###################################################################
#                       Code starts here                          
################################################################### 

proc pub:ok {nick host handle chan arg} {
  putquick "PRIVMSG $chan :ok juga"
} 
 
proc pub:hi {nick host handle channel arg} {
    putquick "PRIVMSG $channel :hi, mirip kuntilanak"
} 

proc pub:bodoh {nick host handle channel arg} {
    putquick "PRIVMSG $channel :goblom loe :>"
} 

proc pub:bye {nick host handle channel arg} {
    putquick "PRIVMSG $channel :iya.. pergi sana :)"
} 

proc pub:lol {nick host handle channel arg} {
    putquick "PRIVMSG $channel :hahaha"
}

proc pub:morning {nick host handle channel arg} {
    putquick "PRIVMSG $channel :morning too :)"
}

proc pub:smile {nick host handle channel arg} {
    putquick "PRIVMSG $channel :;)"
}

proc pub:wk {nick host handle channel arg} {
    putquick "PRIVMSG $channel :wkwkwkwk"
}


proc pub:sad {nick host handle channel arg} {
    putquick "PRIVMSG $channel ::/"
}

proc pub:big {nick host handle channel arg} {
    putquick "PRIVMSG $channel :oh ja :D"
}
proc pub:take {nick host handle channel arg} {
    putquick "PRIVMSG $channel :lol"
}

proc pub:lol {nick host handle channel arg} {
    putquick "PRIVMSG $channel ::D"
}

proc pub:haha {nick host handle channel arg} {
    putquick "PRIVMSG $channel :lol :P"
}

proc pub:hehe {nick host handle channel arg} {
    putquick "PRIVMSG $channel ::P"
}

proc pub:king {nick host handle channel arg} {
    putquick "PRIVMSG $channel :ni me :)"
}


proc pub:kje {nick host handle channel arg} {
    putquick "PRIVMSG $channel :www.eggdrop.gajba.net ;)"
}

proc pub:uzivaj {nick host handle channel arg} {
    putquick "PRIVMSG $channel :enako :)"
}

proc pub:wink {nick host handle channel arg} {
    putquick "PRIVMSG $channel ::)"
}

proc pub:averse {nick host handle channel arg} {
    putquick "PRIVMSG $channel :AversE r0x ;)"
}



putlog "Auto Respond v1.0 by \]Kami\[ (http://Www.slo-eggdrop.com) loaded"
