# Set here the your msgs.
set mygreetmsgs {
  
  "!jam"
  "!seen AriesBoy"
  "Oh là laaaa je suis fatigué"
  "je re , Smoke Time !!!"
  "!info"
  "c'est fatiguant  , d'être un robot Ouuuff!!!"
  "Wellcome bro"
  "how are you pplz"
  "Greetings pplz"
  "who can give access"
  "i love you, but you not love me"
  "
}

### DONT EDIT BELOW ###
proc greetTrig {} {
  global mygreettrig
  return $mygreettrig
}

setudef flag autogreetings
 
bind join - * greet:msg
bind pub - ${mygreettrig}greets greet:pub


proc autospeak {min hour day month dow} {
   putserv "PRIVMSG #yourchan $greetmsg"
}

bind cron - "*/5 * * * *" autospeak

putlog "autotalk.tcl,v1.1:. Loaded! - By SiZogaL"

set speaks_chans "*"
set speaks_time 500
set hello_chans "*"
set brb_chans "*"
set bye_chans "*"
set ping_chans "*"

set spoken.v "Auto talk"
# Set the next lines as the random speaks msgs you want to say
set speaks_msg {

{"Every strike brings me closer to the next home run."- Babe Ruth"}
{"Believe you can and you're halfway there." - Theodore Roosevelt"}
{"It is never too late to be what you might have been." - George Eliot"}
{"Happiness is not by chance, but by choice."- Jim Rohn"}
{"Some people look for a beautiful place. Others make a place beautiful."- Hazrat Inayat Khan"}
{"My mission in life is not merely to survive, but to thrive."- Maya Angelou"}
{"You are enough just as you are."- Meghan Markle."}
{"i am nothing with you.."}
{"One's destination is never a place, but a new way of seeing things."- Henry Miller"}
{"There are years that ask questions and years that answer."- Zora Neale Hurston Their Eyes"}
{"Each of us is more than the worst thing we've ever done."- Bryan Stevenson, Just Mercy."}
{"You make a life out of what you have, not what you're missing."- Kate Morton the forgotten garden"}
{"Be yourself; everyone else is already taken."- Oscar Wilde"}
{"Life is what happens when you're busy making other plans." -John Lennon"}
{"Success is not final; failure is not fatal: It is the courage to continue that counts." -Winston Churchill"}
{"The most important thing is to enjoy your life - to be happy - it's all that matters." - Audrey Hepburn"}
{"Action is the foundational key to all success." - Pablo Picasso"}
{"There is only one certainty in life and that is that nothing is certain." -G.K. Chesterton"}
{"What do we live for if it is not to make life less difficult for each other." -George Eliot"}
{"It is a funny thing about life; if you refuse to accept anything but the best, you very often get it." -W. Somerset Maugham"}
{"The beautiful thing about learning is nobody can take it away from you." -B.B. King"}
{"ngomong kek dr tadi.."}
{"You only have to do a very few things right in your life-so long as you don't do too many things wrong." -Warren Buffet"}
{"Not everything that is faced can be changed. But nothing can be changed until it is faced." - James Baldwin"}
{"They always say time changes things, but you actually have to change them yourself-Andi warhol"}
{"The best way to predict the future is to create it." -Peter F. Drucker"}
{"In real life, I assure you, there is no such thing as algebra." -Fran Lebowitz"}
{"Never keep up with the Joneses. Drag them down to your level. It's cheaper." -Quentin Crisp"}
{"Nobody gets to live life backward. Look ahead-that's where your future lies." -Ann Landers"}
}

if {![string match "*speaks_time*" [timers]]} {
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



##  hello ##
set Reponden3.v "hello Respon"
bind pub - hello hello_speak 
bind pub - alo hello_speak 
bind pub - aloo hello_speak 
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
  "apaaaaaaa , suka yaaaaa ma Saya,hmm"
  "chat in channel please"
  "yes, Hello too, do I know ya ?"
  "alo sayank"
  "Hi there"
  "hello, whats up"
  "oi oi oi oi oi"  
  "Halo juga nich, kamu sapa nich, kok sok kenal banget ma saya =P"
  "hello how are you ^_^"
  "Hai bro apa kabarmu, bagaimana dengan kabar keluargamu ?"
  "hey whats up"
  "yeah, yeah hi HI"
  "hello, nice to see yea!"
  "Hi i'm happy today!!"
  "hai hai hai hai juga"
  "apa khbar nich nama kamu siapa"
  "halo juga perkenalkan nama ku Yazmien Octavia, kalau kamu siapa?"
  "asl gua = 20 f jember, rumah gua di kencong , tebak yg mana :P"
  "hi ,  =)  , kenalan yukk"
  "asl pls, I like to chat with you in channel"
  "Hi juga, kamu makin kiyut aja dech, gemesssss"
  "alo juga, siapa disitu ?"
  ",konnichiwa (halo dalam bahasa jepang)<== maklum baru belajar :P"
  ",how do you do? i'm happy to meet you"
  ",halo juga saya senang dapat berjumpa dengan anda lagi"
  "it was nice meeting you"
  "menyenakan dapat bertemu dengan anda lagi"
  "how are you today ? are you okay ?"
}

proc hello_speak {nick uhost hand chan text} {
 global botnick hello_chans ranhello
if {(([lsearch -exact [string tolower $hello_chans] [string tolower $chan]] != -1) || 
($hello_chans == "*"))} {
set helos [lindex $ranhello [rand [llength $ranhello]]]
putserv "PRIVMSG $chan :$nick $helos"
  }
} 
