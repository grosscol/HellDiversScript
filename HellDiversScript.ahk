#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
#Persistent ; Only the user can kill the application
#SingleInstance force ; Don't need multiple script copies
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#IfWinActive Helldivers ; Enables hotkeys on active window (game)


;        __  __________    __    ____  _____    ____________  _____
;       / / / / ____/ /   / /   / __ \/  _/ |  / / ____/ __ \/ ___/
;      / /_/ / __/ / /   / /   / / / // / | | / / __/ / /_/ /\__ \ 
;     / __  / /___/ /___/ /___/ /_/ // /  | |/ / /___/ _, _/___/ / 
;    /_/ /_/_____/_____/_____/_____/___/  |___/_____/_/ |_|/____/
;      AutoHotKey Script - By Spirits & Crushfield -  v0.10.0 

; All-in-One HellDiversScript
; Dev Team Blu3spirits, Crushfield
; Thanks to bred34 for the stratagem directionals
; Special Thanks to grasshopper and Pawteegal 

; --- List of names of programmed strategem sequences -------------------------
; AMGIIMinigunTurret      ARX34RailcannonTurret         AC22DumDum               AD289Angel
; AD334GuardDog           AT47AntiTankEmplacement       AirdroppedAntiTankMines  AirdroppedStunMines
; AntiPersonnelBarrier    CloseAirSupport               DistractorBeacon         EAT17
; EXO44StomperExosuit     EXO48Obsidian                 EXO51Lumberer            EmergencyBeacon
; FLAM40Incinerator       HeavyAirstrike                HellfireIncendiaryBombs  HumblebeeUAVdrone
; LAS98LaserCannon        LIFT850JumpPack               M25Rumbler               M5APC
; M532HAV                 MC109HammerMotorcycle         ME1SnifferMetalDetector  MG94MachineGun
; MLS4XCommando           MissileBarrage                NUX223Hellbomb           ObliteratorGrenadeLauncher
; OrbitalLaserStrike      REC6Demolisher                REP80                    RL112RecoillessRifle
; RailcannonStrike        Reinforce                     Resupply                 ResupplyPack
; SH20ShieldGenerator     SH32DirectionalKineticShield  ShredderMissileStrike    SledgePrecisionArtillery
; StaticFieldConductors   StrafingRun                   TD110Bastion             TOX13Avenger
; TripleThundererBarrage  VindicatorBunkerBusterBomb
DefineStrategems()


; -----------------------------------------------------------------------------
; This is where you declare which keys to map to strategems
; The syntax is: <key>::DoStrategem(<strategem>)
; List of AutoHotkey Keys: https://autohotkey.com/docs/KeyList.htm
; Some examples: 
; numpad1::DoStrategem(AMGIIMinigunTurret)
; numpad3::DoStrategem(Resupply)
; numpad5::DoStrategem(Reinforce)
; numpad7::DoStrategem(AD334GuardDog)
; numpad9::DoStrategem(AMGIIMinigunTurret)
; -----------------------------------------------------------------------------

numpad1::DoStrategem(AMGIIMinigunTurret)
numpad3::DoStrategem(Resupply)
numpad5::DoStrategem(Reinforce)
numpad7::DoStrategem(AD334GuardDog)
numpad9::DoStrategem(AMGIIMinigunTurret)

; -----------------------------------------------------------------------------
; The bottom of this file is where the function to perform the key presses,
;  and the predefined sequences named by the strategem they encode.
; --- No user edits are necessary below this line ---
; -----------------------------------------------------------------------------

; Pass array of key presses the correspond to the strategem
; This function wraps them with control presses and adds 
DoStrategem(CommandArray){

	BlockInput On
	Send {LControl down}
  for index, element in CommandArray
  {
    Sleep 50
    Send element
  }
	Sleep 50
	Send {LControl up}
	BlockInput Off
	return
}

; Define each strategem as an array of the unique keypresses required
DefineStrategems(){
  global AMGIIMinigunTurret            :=  Array("a","s","w","d","a")
  global ARX34RailcannonTurret         :=  Array("a","s","w","a","d")
  global AC22DumDum                    :=  Array("s","a","s","w","w","d")
  global AD289Angel                    :=  Array("s","w","a","a","d","s")
  global AD334GuardDog                 :=  Array("s","w","a","w","d","s")
  global AT47AntiTankEmplacement       :=  Array("a","a","w","w","d","a")
  global AirdroppedAntiTankMines       :=  Array("a","d","s","w")
  global AirdroppedStunMines           :=  Array("a","d","w","s")
  global AntiPersonnelBarrier          :=  Array("a","d","s","s","d")
  global CloseAirSupport               :=  Array("d","d","s","a")
  global DistractorBeacon              :=  Array("a","s","d")
  global EAT17                         :=  Array("s","a","d","w","s")
  global EXO44StomperExosuit           :=  Array("s","d","w","a","s","s")
  global EXO48Obsidian                 :=  Array("s","d","w","a","s","a")
  global EXO51Lumberer                 :=  Array("s","d","w","a","s","d")
  global EmergencyBeacon               :=  Array("w","s","d","w")
  global FLAM40Incinerator             :=  Array("s","a","s","d","a")
  global HeavyAirstrike                :=  Array("d","w","s","d","a")
  global HellfireIncendiaryBombs       :=  Array("d","w","a","d")
  global HumblebeeUAVdrone             :=  Array("a","w","d")
  global LAS98LaserCannon              :=  Array("s","a","s","w","a")
  global LIFT850JumpPack               :=  Array("s","w","w","s","w")
  global M25Rumbler                    :=  Array("s","a","w","a","a")
  global M5APC                         :=  Array("s","d","s","a","a","d")
  global M532HAV                       :=  Array("s","d","w","a","w","s")
  global MC109HammerMotorcycle         :=  Array("s","d","s","a","a","w")
  global ME1SnifferMetalDetector       :=  Array("s","s","d","w")
  global MG94MachineGun                :=  Array("s","a","s","w","d")
  global MLS4XCommando                 :=  Array("s","a","w","s","d")
  global MissileBarrage                :=  Array("d","s","s","s","a","s")
  global NUX223Hellbomb                :=  Array("w","a","d","s","w","s")
  global ObliteratorGrenadeLauncher    :=  Array("s","a","w","a","s")
  global OrbitalLaserStrike            :=  Array("d","w","a","w","d","a")
  global REC6Demolisher                :=  Array("s","a","d","w","w")
  global REP80                         :=  Array("s","s","a","d","s")
  global RL112RecoillessRifle          :=  Array("s","a","d","d","a")
  global RailcannonStrike              :=  Array("d","s","w","s","a")
  global Reinforce                     :=  Array("w","s","d","a","w")
  global Resupply                      :=  Array("s","s","w","d")
  global ResupplyPack                  :=  Array("s","w","s","s","d")
  global SH20ShieldGenerator           :=  Array("s","w","a","d","a","d")
  global SH32DirectionalKineticShield  :=  Array("s","w","a","d","a","s")
  global ShredderMissileStrike         :=  Array("d","a","d","a","s","s","d")
  global SledgePrecisionArtillery      :=  Array("d","a","d","a","s","s","d")
  global StaticFieldConductors         :=  Array("d","w","a","s")
  global StrafingRun                   :=  Array("d","d","w")
  global TD110Bastion                  :=  Array("s","d","s","a","a","w")
  global TOX13Avenger                  :=  Array("s","a","s","d","d")
  global TripleThundererBarrage        :=  Array("d","s","w","w","a","s")
  global VindicatorBunkerBusterBomb    :=  Array("d","d","d")
}
