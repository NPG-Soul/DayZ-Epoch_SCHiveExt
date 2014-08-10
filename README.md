DayZ-Epoch_SCHiveExt
====================
A custom HiveExt.dll 

Description:
This custom hive is an updated version of the last official released epoch hive.
It has the calls needed for basemaintenance.
It has added support for Zupa's single currency mod.

3 new calls where added and 1 changed:
- New CHILD:298 >>> collects players bank data from the "banking_data" table.
- New CHILD:299 >>> used to update a players bank data in the "banking_data" table.
- New CHILD:104 >>> used by the server to collect all admin uid's and there matching admin level.
- Updated CHILD:201 >>> new db field "CashMoney" used when updating a players data in the "character_data" table.

The provided trader configs should only be used if you are using the server traders from the
dayz_server >>> missions >>> DayZ_Epoch_11.Chernarus folder in you server pbo.

Aswell the trader configs do not support overpoch (overwatch items)
The money config whas separated to its own hpp file with the id 700
