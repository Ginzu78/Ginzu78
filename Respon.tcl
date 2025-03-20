##  hello ##
set Reponden3.v "hello Respon"
bind pub - hello hello_speak 
bind pub - alo hello_speak 
bind pub - hello_speak 
bind pub - alooo hello_speak 
bind pub - hallo hello_speak 
bind pub - hai hello_speak 
bind pub - hi hello_speak

set ranhello {
  "hello there, nice to meet you"
  "hello how are you ^_^"
  "chat on channel please"
  "Are you ok?"
  "Hi too, ohh ur so cutee xP~"
  "halooooooooo"
  "chat in channel please"
  "yes, Hello too, do I know ya ?"
  "hwllo honey.."
  "Hi there"
  "hello, whats up"
  "oi oi oi oi oi"  
  "hello how are you ^_^"
  "hey whats up"
  "yeah, yeah hi HI"
  "hello, nice to see yea!"
  "Hi i'm happy today!!"
  "asl pls, I like to chat with you in channel"
  ",konnichiwa (halo dalam bahasa jepang)<== maklum baru belajar :P"
  ",how do you do? i'm happy to meet you"
  "it was nice meeting you"
  "how are you today ? are you okay ?"
}

##  brb ##
set Reponden3.v "brb Respon"
bind pub - brb brb_speak 

set ranbrb {
"Where do you want to go?"
"don't take too long okay?

##  Morning ##
set Reponden3.v "Morning Respon"
bind pub - Morning Morning_speak 

set ranmorning {
"Morning too"
"what time is it now?"

proc hello_speak {nick uhost hand chan text} {
 global botnick hello_chans ranhello
if {(([lsearch -exact [string tolower $hello_chans] [string tolower $chan]] != -1) || 
($hello_chans == "*"))} {
set helos [lindex $ranhello [rand [llength $ranhello]]]
putserv "PRIVMSG $chan :$nick $helos"
  }
} 

proc Morning_speak {nick uhost hand chan text} {
 global botnick morning_chans ranmorning
if {(([lsearch -exact [string tolower $morning_chans] [string tolower $chan]] != -1) || 
($morning_chans == "*"))} {
set mornings [lindex $ranmorning [rand [llength $ranmorning]]]
putserv "PRIVMSG $chan :$nick $mornings"
  }
} 

proc brb_speak {nick uhost hand chan text} {
 global botnick brb_chans ranbrb
if {(([lsearch -exact [string tolower $brb_chans] [string tolower $chan]] != -1) || 
($brb_chans == "*"))} {
set brbs [lindex $ranbrb [rand [llength $ranbrb]]]
putserv "PRIVMSG $chan :$nick $brbs"
  }
} 
