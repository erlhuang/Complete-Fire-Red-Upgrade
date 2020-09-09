.thumb
.text
.align 2

.include "../asm_defines.s"
/*
ability_tables.s
	tables associated with ability ban lists or activation
*/

.equ ABILITY_TABLES_TERMIN, 0xFF

.global gRolePlayBannedAbilities
.global gRolePlayAttackerBannedAbilities
.global gSkillSwapBannedAbilities
.global gWorrySeedBannedAbilities
.global gGastroAcidBannedAbilities
.global gEntrainmentBannedAbilitiesAttacker
.global gEntrainmentBannedAbilitiesTarget
.global gSimpleBeamBannedAbilities
.global gReceiverBannedAbilities
.global gTraceBannedAbilities
.global gNeutralizingGasBannedAbilities

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

gRolePlayBannedAbilities:
.byte ABILITY_TRACE
.byte ABILITY_WONDERGUARD
.byte ABILITY_FORECAST
.byte ABILITY_FLOWERGIFT
.byte ABILITY_MULTITYPE
.byte ABILITY_ILLUSION
.byte ABILITY_ZENMODE
.byte ABILITY_IMPOSTER
.byte ABILITY_STANCECHANGE
.byte ABILITY_POWEROFALCHEMY
.byte ABILITY_RECEIVER
.byte ABILITY_SCHOOLING
.byte ABILITY_COMATOSE
.byte ABILITY_SHIELDSDOWN
.byte ABILITY_DISGUISE
.byte ABILITY_BATTLEBOND
.byte ABILITY_POWERCONSTRUCT
.byte ABILITY_ICEFACE
.byte ABILITY_HUNGERSWITCH
.byte ABILITY_TABLES_TERMIN

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

gRolePlayAttackerBannedAbilities:
.byte ABILITY_MULTITYPE
.byte ABILITY_ZENMODE
.byte ABILITY_STANCECHANGE
.byte ABILITY_SCHOOLING
.byte ABILITY_COMATOSE
.byte ABILITY_SHIELDSDOWN
.byte ABILITY_DISGUISE
.byte ABILITY_BATTLEBOND
.byte ABILITY_POWERCONSTRUCT
.byte ABILITY_ICEFACE
.byte ABILITY_TABLES_TERMIN

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

gSkillSwapBannedAbilities:
.byte ABILITY_WONDERGUARD
.byte ABILITY_MULTITYPE
.byte ABILITY_ILLUSION
.byte ABILITY_STANCECHANGE
.byte ABILITY_SCHOOLING
.byte ABILITY_COMATOSE
.byte ABILITY_SHIELDSDOWN
.byte ABILITY_DISGUISE
.byte ABILITY_BATTLEBOND
.byte ABILITY_POWERCONSTRUCT
.byte ABILITY_NEUTRALIZINGGAS
.byte ABILITY_ICEFACE
.byte ABILITY_HUNGERSWITCH
.byte ABILITY_TABLES_TERMIN

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

gWorrySeedBannedAbilities:
.byte ABILITY_MULTITYPE
.byte ABILITY_STANCECHANGE
.byte ABILITY_SCHOOLING
.byte ABILITY_COMATOSE
.byte ABILITY_SHIELDSDOWN
.byte ABILITY_DISGUISE
.byte ABILITY_BATTLEBOND
.byte ABILITY_POWERCONSTRUCT
.byte ABILITY_TRUANT
.byte ABILITY_ICEFACE
.byte ABILITY_TABLES_TERMIN

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

gGastroAcidBannedAbilities:
.byte ABILITY_MULTITYPE
.byte ABILITY_STANCECHANGE
.byte ABILITY_SCHOOLING
.byte ABILITY_COMATOSE
.byte ABILITY_SHIELDSDOWN
.byte ABILITY_DISGUISE
.byte ABILITY_BATTLEBOND
.byte ABILITY_POWERCONSTRUCT
.byte ABILITY_ICEFACE
.byte ABILITY_TABLES_TERMIN

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

gEntrainmentBannedAbilitiesAttacker:
.byte ABILITY_TRACE
.byte ABILITY_FORECAST
.byte ABILITY_FLOWERGIFT
.byte ABILITY_ZENMODE
.byte ABILITY_ILLUSION
.byte ABILITY_IMPOSTER
.byte ABILITY_POWEROFALCHEMY
.byte ABILITY_RECEIVER
.byte ABILITY_DISGUISE
.byte ABILITY_POWERCONSTRUCT
.byte ABILITY_NEUTRALIZINGGAS
.byte ABILITY_ICEFACE
.byte ABILITY_HUNGERSWITCH
.byte ABILITY_TABLES_TERMIN

gSimpleBeamBannedAbilities:
gEntrainmentBannedAbilitiesTarget:
.byte ABILITY_TRUANT
.byte ABILITY_MULTITYPE
.byte ABILITY_STANCECHANGE
.byte ABILITY_SCHOOLING
.byte ABILITY_COMATOSE
.byte ABILITY_SHIELDSDOWN
.byte ABILITY_DISGUISE
.byte ABILITY_BATTLEBOND
.byte ABILITY_ICEFACE
.byte ABILITY_TABLES_TERMIN

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

gReceiverBannedAbilities:
.byte ABILITY_TRACE
.byte ABILITY_FORECAST
.byte ABILITY_FLOWERGIFT
.byte ABILITY_MULTITYPE
.byte ABILITY_ILLUSION
.byte ABILITY_ZENMODE
.byte ABILITY_IMPOSTER
.byte ABILITY_STANCECHANGE
.byte ABILITY_POWEROFALCHEMY
.byte ABILITY_RECEIVER
.byte ABILITY_SCHOOLING
.byte ABILITY_COMATOSE
.byte ABILITY_SHIELDSDOWN
.byte ABILITY_DISGUISE
.byte ABILITY_BATTLEBOND
.byte ABILITY_POWERCONSTRUCT
.byte ABILITY_WONDERGUARD
.byte ABILITY_NEUTRALIZINGGAS
.byte ABILITY_ICEFACE
.byte ABILITY_HUNGERSWITCH
.byte ABILITY_TABLES_TERMIN

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

gTraceBannedAbilities:
.byte ABILITY_TRACE
.byte ABILITY_FORECAST
.byte ABILITY_FLOWERGIFT
.byte ABILITY_MULTITYPE
.byte ABILITY_ILLUSION
.byte ABILITY_ZENMODE
.byte ABILITY_IMPOSTER
.byte ABILITY_STANCECHANGE
.byte ABILITY_POWEROFALCHEMY
.byte ABILITY_RECEIVER
.byte ABILITY_SCHOOLING
.byte ABILITY_COMATOSE
.byte ABILITY_SHIELDSDOWN
.byte ABILITY_DISGUISE
.byte ABILITY_BATTLEBOND
.byte ABILITY_POWERCONSTRUCT
.byte ABILITY_NEUTRALIZINGGAS
.byte ABILITY_ICEFACE
.byte ABILITY_HUNGERSWITCH
.byte ABILITY_TABLES_TERMIN

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

gNeutralizingGasBannedAbilities:
.byte ABILITY_MULTITYPE
.byte ABILITY_STANCECHANGE
.byte ABILITY_SCHOOLING
.byte ABILITY_COMATOSE
.byte ABILITY_SHIELDSDOWN
.byte ABILITY_DISGUISE
.byte ABILITY_BATTLEBOND
.byte ABILITY_POWERCONSTRUCT
.byte ABILITY_NEUTRALIZINGGAS
.byte ABILITY_ICEFACE
.byte ABILITY_HUNGERSWITCH
.byte ABILITY_TABLES_TERMIN
