# Pax8TechSupportTemplates
In order to use these scripts you must have a copy of AutoHotkey v1.1.33 or later. The current version of AutoHotkey can be downloaded here: https://www.autohotkey.com/

An AutoHotkey Scripts and Ticket Template for Pax8 technical support.


### Hotstrings
The script uses "hotstrings" to automatically enter portions of template as you are typing. Each hotstring will begin with a "!" and end with a space " " or hitting the Enter key.

-------------------------------------------
!start

This creates a templated message stating that the endpoint migration process will begin shortly, and it tells the requestor of what to expect. Please note that this hotstring should be commented in the ticket before you begin the endpoint migration process.

-------------------------------------------
!threats 

This creates a templated message stating that an account's device(s) could not be migrated due to unresolved threats. Be sure to copy-paste the details from the account's Activity tab in SentinelOne to the ServiceNow ticket comment, where requested by the template.

-------------------------------------------
!outdated

This creates a templated message stating that an account's device(s) could not be migrated due to an out-of-date version of SentinelOne. Be sure to specify the device name(s) where applicable.

-------------------------------------------
!inactive

This creates a templated message stating that an account's device(s) could not be migrated due to inactivity. Ask the requestor if they can reactivate the device(s), otherwise they will need to decommission said device(s) on their end. Be sure to include the device name(s) where applicable.
