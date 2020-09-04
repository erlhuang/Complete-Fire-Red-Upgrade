.thumb
.align 2

.include "../xse_commands.s"
.include "../xse_defines.s"
.include "../asm_defines.s" 

.global EventScript_WonderTrade
EventScript_WonderTrade: 
    lock
    faceplayer
    checkflag 0x99E 
    if 0x1 _goto AlreadyDone 
    showmoney 0x0 0x0 0x0
    msgbox gText_RandomEgg MSG_YESNO 
    compare LASTRESULT NO 
    if equal _goto CancelEgg 
    checkmoney 0x1388 0x0
    compare LASTRESULT 0x1
    if 0x0 _goto NotEnoughMoney
    special2 LASTRESULT 0x83
    compare LASTRESULT 0x6
    if notequal _goto ReceiveEgg  @if we have a slot open 
    msgbox gText_RandomEggNoRoom MSG_FACE
    hidemoney 0x00 0x00 
    release 
    end 

ReceiveEgg:
    msgbox gText_RandomEgg2 MSG_NORMAL
    fanfare 0x101
    msgbox gText_RandomEgg_ReceivedEgg MSG_KEEPOPEN
    waitfanfare
    waitkeypress 
    setflag 0x943
    giveegg SPECIES_MUDKIP
    clearflag 0x943 
    setflag 0x99E
    msgbox gText_RandomEgg3 MSG_NORMAL 
    sound 0x58 
    removemoney 0x1388 0x00
    updatemoney 0x00 0x00 0x00
    checksound
    msgbox gText_punchtutor_Wait MSG_NORMAL
    hidemoney 0x00 0x00 
    msgbox gText_RandomEgg5 MSG_NORMAL
    release
    end

AlreadyDone: 
    msgbox gText_RandomEgg4 MSG_FACE 
    release 
    end 

CancelEgg:
    hidemoney 0x00 0x00 
    release 
    end 

NotEnoughMoney: 
    msgbox gText_RandomEggNotEnough MSG_FACE
    hidemoney 0x00 0x00 
    release 
    end 

.global EventScript_WonderTrade2
EventScript_WonderTrade2: 
    lock
    faceplayer
    msgbox gText_RandomEgg MSG_FACE
    setflag 0x943
    giveegg SPECIES_FLOETTE
    clearflag 0x943 
    release
    end

.global EventScript_AskRandomizer
EventScript_AskRandomizer: 
    @ msgbox gText_DoYouWantRandomizer MSG_YESNO 
    @ compare LASTRESULT YES 
    @ if equal _call setrandom 
    @ msgbox gText_DoYouWantAbility MSG_YESNO 
    @ compare LASTRESULT YES 
    @ if equal _call setability 
    @ msgbox gText_DoYouWantLearnsets MSG_YESNO 
    @ compare LASTRESULT YES 
    @ if equal _call setlearnsets 
    setvar 0x5100 0x1
    release 
    end 

setrandom:
    setflag 0x940 
    return 
 
setability:
    setflag 0x941
    return 

setlearnsets:
    setflag 0x942
    return 

