set asmsg {
   "!info"
   "Wellcome to #IRCForever"
   "Oh là laaaa je suis fatigué"
   "je re , Smoke Time !!!"
   "Don't Flood broo.."
   "c'est fatiguant , d'être un robot Ouuuff!!!"
   "ScaNNiing...Spam.."
   "--===SiZogaL==-- looking BadNiCk"
   "❤❤ love is love"
   "Nice chat broo.."
   "hahaha.. LoL"
   "Matamu...!!"
   "-.,,.-°''°-.,,.-°''° \_Õ{ ScAnInG SpAM -.,,.-°''°-.,,.-°''° \_Õ{"
   "See you broo"
   "Don't PM me, because i'm still away"
}
proc autospeak {min hour day month dow} {
   putserv "PRIVMSG #IRCForever :[lindex $::asmsg [rand [llength $::asmsg]]]"
}

bind cron - "*/9 * * * *" autospeak
