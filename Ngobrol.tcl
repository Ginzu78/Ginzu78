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

putlog "autotalk.tcl,v1.1:. Loaded! - By CrazyCat"
