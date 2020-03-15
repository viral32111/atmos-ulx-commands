# Atmos ULX commands
A collection of a few [ULX](https://github.com/TeamUlysses/ulx) commands to control [Atmos](https://steamcommunity.com/sharedfiles/filedetails/?id=185609021) time & weather.

You need to update a few console commands inside `lua/atmos/init.lua` to the ones in [this](atmos%20command%20replacements.lua) file and change the AtmosAdmin/AtmosVIP functions inside `lua/atmos/shared.lua` to the ones in [this](atmos%20meta%20replacements.lua) file.

## Commands

* `ulx toggletime` - Pauses or resumes the time.
* `ulx settime <number (0-24)>` - Sets the time to the specified 24-hour value.
* `ulx setstorm <bool (1/0)>` - Enables or disables a rain storm.
* `ulx setsnow <bool (1/0)>` - Enables or disables a snow storm.
