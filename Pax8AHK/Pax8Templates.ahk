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

;;Unresolved Threats Function
;;This function prompts the user to provide the customer name, but to also add the list of devices unresolved threats to that middle of the message where prompted.
;;I would make this a looping algorithm of some sort where the user also puts in the computer names, but that might take more time than just copying and pasting from the
;;Activity tab in the Management Client.
unresolvedThreats()
{
  InputBox, specName, Name of Customer, Please input name of customer:
  msg=
  (
  Hello, %specName%,

  We have initiated all of the endpoints onto the new management console, and you should see these populate shortly.

  There were endpoints that did not migrate due to unresolved threats, which will be provided below, and will need to be resolved:

  [PLACE LIST OF DEVICES WITH UNRESOLVED THREATS HERE]

  Please let us know when these threats have been resolved, and we will reattempt the endpoint migration again.
  )
  Sleep, 250
  BlockInput, On
  Send, %msg%
  BlockInput, Off
  return
}
