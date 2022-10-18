migrationStart() {
  InputBox, specName, Name of Customer, Please input name of customer:
  msg=
  (
  Hello, %specName%:

  This is a courtesy notification that your Account Migration has completed and we will begin the Endpoint Migration as well.

  Please note- We need you to ensure all endpoints are online and connected to the network during this portion of the migration. ANY endpoints offline or off network will NOT be able to migrate over to the new console.

  At this time ALL threats must be Mitigated and/or Resolved. Failure to do so will prevent any devices from migrating to the new console.

  You may encounter the following:
  Agents/endpoints reporting OFFLINE in the USEA1 Console. This behavior is EXPECTED however your endpoint is still protected permitting it was on a supported version of SentinelOne.

  The migration should be almost instantaneous, your devices will now appear online and connected to the new PAX8-03 console.

  REMINDER: You will need to log into the new Pax8-03 console (https://usea1-pax8-03.sentinelone.net/login) and create your new users. Only the Primary Administrator will be migrated over, any other users will need to be recreated by this Primary Administrator.

  If you are using a RMM to deploy your agents, you will need to update your site token in order for this to continue working.

  If you are experiencing any issues or complications please do not hesitate to reach out either on this case or via phone: (855) 884-7298

  Please provide the following details:

  Account/Site:
  Endpoint Name:
  Description of the issue
  (Please provide any screenshots or relevant information regarding the problem)
  )
    Sleep, 250
    BlockInput, On
    Send, %msg%
    BlockInput, Off
    return
}

unresolvedThreats()
{
  InputBox, specName, Name of Customer, Please input name of customer:
  msg=
  (
  Hello, %specName%,

  We have migrated all possible account endpoints onto the new management console, and you should see these populate shortly.

  However, due to unresolved threats, the following device(s) could not be migrated:

  [PLACE LIST OF DEVICES WITH UNRESOLVED THREATS HERE]

  Please let us know when these threats have been resolved, and we will reattempt the endpoint migration.
  )
  Sleep, 250
  BlockInput, On
  Send, %msg%
  BlockInput, Off
  return
}

outdatedSoftware()
{
  InputBox, specName, Name of Customer, Please input name of customer:
  msg=
  (
  Hello, %specName%,
  
  We have migrated all possible account endpoints onto the new management console, and you should see these populate shortly.

  However, due to an outdated version of SentinelOne that must to be updated, the following devices could not be migrated:

  [PLACE LIST OF OUTDATED S1 DEVICES HERE]

  Please let us know when SentinelOne on these devices have been updated to the latest version, and we will reattempt the endpoint migration.
  )
  Sleep, 250
  BlockInput, On
  Send, %msg%
  BlockInput, Off
  return
}

inactiveDevice()
{
  InputBox, specName, Name of Customer, Please input name of customer:
  msg=
  (
  Hello, %specName%,
  
  We have migrated all possible account endpoints onto the new management console, and you should see these populate shortly.

  However, due to prolonged device inactivity, the following devices could not be migrated:

  [PLACE LIST OF INACTIVE DEVICES HERE]

  Please let us know if these devices can and have been turned on again, and we will reattempt the endpoint migration; otherwise you will need to decommission them on your end in the SentinelOne management console.
  )
  Sleep, 250
  BlockInput, On
  Send, %msg%
  BlockInput, Off
  return
}
