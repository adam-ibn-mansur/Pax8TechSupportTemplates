
#include %A_ScriptDir%\Pax8AHK\
#include %A_ScriptDir%\Pax8AHK\Pax8Templates.ahk

;Migration start hotstring.
;Make a point to send this message in ServiceNow
;before you begin endpoint migrations from main to 03
::!start::
  migrationStart()
return

;Unresolved Threats hotstring
;This is in the event that the migration process fails due to unresolved threats
;on the partner's side of the issue.
::!threats::
  unresolvedThreats()
return

;Outdate SentinelOne hotstring
;Should a device be on an agent version of SentinelOne that isn't the latest
;(for isntance, as of 10/18/2022, that should be around v22.3.2.6355)
::!outdated::
  outdatedSoftware()
return

;Inactive devices hotstring
;If a device hasn't been turned on in a while (let's say... a week)
::!inactive::
  inactiveDevice()
return
