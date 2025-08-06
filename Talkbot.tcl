## -----------------------------------------------------------------------
##           AutoTalk.TCL ver 1.0 Disign by: (-=�razyFire=-)                               
## -----------------------------------------------------------------------
## FOR MORE INFORMATION VISIT OUR CHANNEL (bot home #Djebel) 
## my email : crazy@link.bg
## AutoTalk.TCL V1.0
## by: (-=�razyFire=-)
## 
## All newsheadlines parsed by this script are (C) AutoTalk`eggdrop`team 
## 
## AutoTalk Version History:1 Command    V1.0  - Public command like (botnick) (command) 
##                        2 protection   v1.0  - This script i just made medium protection
##                                              if some one flood color or say bad word or what on channel
##                                              the bot will lock channel for a moment (mode +mi).
##                                              ( i have been tried it on Channel #Djebel)                                       
##                        3 entertainment v1.0 - Auto speak and respon :).
##                                        v1.1 - Auto speak when some one change they nickname
##                                        v1.2 - Auto speak when some get kick or join channel.          
## The author takes no responsibility whatsoever for the usage and working of this script !
## 

## ----------------------------------------------------------------
## Set global variables and specificic
## ----------------------------------------------------------------

## -=[ SPEAK ]=-  Set the next line as the channels you want to run in
## for all channel just type "*" if only for 1 channel or 2 chnnel just
## type "#channel1 #channel2"
set speaks_chans "#SweetHell"

# Set you want in XXX minute you bot always talk on minute 
set speaks_time 20

## -=[ Hello ]=-  Set the next line as the channels you want to run in
## for all channel just type "*" if only for 1 channel or 2 chnnel just
## type "*"
set hello_chans "*"

## -=[ BRB ]=-  Set the next line as the channels you want to run in
## for all channel just type "*" if only for 1 channel or 2 chnnel just
## type "*"
set brb_chans "*"

## -=[ BYE ]=-  Set the next line as the channels you want to run in
## for all channel just type "*" if only for 1 channel or 2 chnnel just
## type "*"
set bye_chans "*"

## -=[ PING ]=-  Set the next line as the channels you want to run in
## for all channel just type "*" if only for 1 channel or 2 chnnel just
## type "*"
set ping_chans "*"


## ----------------------------------------------------------------
## --- Don't change anything below here if you don't know how ! ---
## ----------------------------------------------------------------

######################################################################
##--------------------------------------------------------------------
##--- F O R     ---   E N T E R T A I N M E N T  ---    CHANNEL   ----
##--------------------------------------------------------------------
######################################################################         
### SPEAK ###
set spoken.v "Auto talk"
# Set the next lines as the random speaks msgs you want to say
set speaks_msg {
  {"Kesuksesan adalah hasil dari kerja keras dan ketekunan."}
  {"Jangan pernah berhenti belajar, karena hidup tidak pernah berhenti mengajar."}
}

if {![string match "*time_speaks*" [timers]]} {
  timer $speaks_time time_speaks
}

proc time_speaks {} {
  global speaks_msg speaks_chans speaks_time
  if {$speaks_chans == "*"} {
    set speaks_temp [channels]
    } else {
    set speaks_temp $speaks_chans
  }
  foreach chan $speaks_temp {
    set speaks_rmsg [lindex $speaks_msg [rand [llength $speaks_msg]]]
    foreach msgline $speaks_rmsg {
      puthelp "PRIVMSG $chan :[subst $msgline]"
    }
  }
  if {![string match "*time_speaks*" [timers]]} {
    timer $speaks_time time_speaks
  }
}



##  PING PONG ##
set Reponden2.v "Ping Respon"
bind pub - "rakia" ping_speak 
bind pub - "rakiq" ping_speak
bind pub - "bira" ping_speak
bind pub - "biri" ping_speak
bind pub - "piem" ping_speak
bind pub - "vodka" ping_speak
bind pub - "vodki" ping_speak
bind pub - "piq" ping_speak

set ranping {
  "ti li kaza rakia??? -ha nazdrave togava:o)))"
  "rakia rakia...  ouuuu...!!! -a sipi po edna malka sq :o)))"
  "vodka vodka...  ouuuu...!!! -a sipi po edna malka sq :o)))"
  "az sam na pe6terska 4e nema mani za drugi extri" 
  "be kvo piene we az edvam gledam we4e"
  "huh we tva da ne sam vav irc.alkoxolik.org"
  "bahti alkoxolizite :)))"
  "no gospodine! vie kazahte 4e 6te se sabli4ame? - mahai sa ma.. 6a piim sq"
  "az mislq 4e moje da udarim i po nqkoq vodka daa.. :)))"
  "ai kajete ne6to za ebane we stiga s tva piene"
  "ai de, ma koi 6a zemi pieneto"
  "ni6teme nii bogastvo, ni6teme nii pari, a iskame rakii da piem do zori ;o)"
  "a taka da si doidem na dumata"
  "aee... 6a sa pie bal sam vi 4ata lqlq :)))"
  "parvo po edna biri4ka lekinko da izbiem klina"
  "Uraaaa.. 6a piim.. peem, piim..peem, piim... piim... ppp..i..e..mmmm"
}

proc ping_speak {nick uhost hand chan text} {
  global botnick ping_chans ranping
  if {(([lsearch -exact [string tolower $ping_chans] [string tolower $chan]] != -1) || ($ping_chans == "*"))} {
    set pings [lindex $ranping [rand [llength $ranping]]]
    putserv "PRIVMSG $chan :$nick $pings"
  }
} 

##  hello ##
set Reponden3.v "hello Respon"
bind pub - "hello" hello_speak 
bind pub - "alo" hello_speak 
bind pub - "zdr" hello_speak 
bind pub - "hai" hello_speak 
bind pub - "hi" hello_speak 

set ranhello {
  "Hello juga bro..."
  "kamu mau ngomong sama siapa ^_^"
  "Berisik amat sih..."
  "helooooooooo"
  "iya saya dengar.."
  "Mau kenalan ya..."
  "hi bro...?"
  "Hi there"
  "kamu tingal dimana??"
  "Santai aja broo..."  
  "yeah, yeah hi HI"
}

proc hello_speak {nick uhost hand chan text} {
  global botnick hello_chans ranhello
  if {(([lsearch -exact [string tolower $hello_chans] [string tolower $chan]] != -1) || ($hello_chans == "*"))} {
    set helos [lindex $ranhello [rand [llength $ranhello]]]
    putserv "PRIVMSG $chan :$nick $helos"
  }
} 

##  Brb  ##
set Reponden4.v "Brb Respon"
bind pub - "brb" brb_speak 
set ranbrb {
  "ok broo..."
  "Kembali lagi ya.."
  "jangan lama-lama ya..."
  "BRB = Benerin Rambut Bawah ;)"
  "Mau kemana??
}

proc brb_speak {nick uhost hand chan text} {
  global botnick brb_chans ranbrb
  if {(([lsearch -exact [string tolower $brb_chans] [string tolower $chan]] != -1) || ($brb_chans == "*"))} {
    set brbs [lindex $ranbrb [rand [llength $ranbrb]]]
    putserv "PRIVMSG $chan :$nick $brbs"
  }
} 

##  Bye  ##
set Reponden5.v "Bye respon"
bind pub - "bye" bye_speak 
bind pub - "4ao" bye_speak 
bind pub - "chao" bye_speak 
set ranbye {
  "bye juga broo..."
  "Mau kemana???"
}

proc bye_speak {nick uhost hand chan text} {
  global botnick bye_chans ranbye
  if {(([lsearch -exact [string tolower $bye_chans] [string tolower $chan]] != -1) || ($bye_chans == "*"))} {
    set byes [lindex $ranbye [rand [llength $ranbye]]]
    putserv "PRIVMSG $chan : $nick $byes"
  }
} 


## -----------------------------------------------------------------------
#putlog "-=-=   ENTERTAINMENT  PROSES   =-=-=-=-=-"
#putlog "Entertainment Channel (auto/respon) Ver 1.0:"
#putlog "1.${spoken.v},2.${Reponden2.v},3.${Reponden3.v}"
#putlog "4.${Reponden4.v},5.${Reponden5.v}"
putlog "AutoTalk bY dJ_TEDY Loaded. \002[join $speaks_chans ", "]\002"
##------------------------------------------------------------------------
##                      ***    E N D   OF  ENT1.0.TCL ***
## -----------------------------------------------------------------------
