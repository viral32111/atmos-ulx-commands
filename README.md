# Atmos ULX commands
A collection of a few [ULX](https://github.com/TeamUlysses/ulx) commands to control [Atmos](https://steamcommunity.com/sharedfiles/filedetails/?id=185609021) time & weather.

You need to update a few console commands inside `lua/atmos/init.lua` to the ones in [this](atmos%20command%20replacements.lua) file and change the AtmosAdmin/AtmosVIP functions inside `lua/atmos/shared.lua` to the ones in [this](atmos%20meta%20replacements.lua) file.

## Commands

* `ulx toggletime` - Pauses or resumes the time.
* `ulx settime <number (0-24)>` - Sets the time to the specified 24-hour value.
* `ulx setstorm <bool (1/0)>` - Enables or disables a rain storm.
* `ulx setsnow <bool (1/0)>` - Enables or disables a snow storm.


## Copyright License

This addon is licensed under the [GNU General Public Licence v3.0](https://choosealicense.com/licenses/gpl-3.0/) (GNU GPLv3).

Permissions:

* Commercial use - This software and derivatives may be used for commercial purposes.
* Distribution - This software may be distributed.
* Modification - This software may be modified.
* Patent use - This license provides an express grant of patent rights from contributors.
* Private use - This software may be used and modified in private.

Conditions:

* Disclose source - Source code must be made available when the software is distributed.
* License and copyright notice - A copy of the license and copyright notice must be included with the software.
* Same license - Modifications must be released under the same license when distributing the software. In some cases a similar or related license may be used.
* State changes - Changes made to the code must be documented.

Limitations:

* Liability - This license includes a limitation of liability.
* Warranty - The license explicitly states that it does NOT provide any warranty.

>Atmos ULX commands - A few ULX commands to control Atmos time & weather.
>
>Copyright (C) 2020 - 2022 viral32111
>
>This program is free software: you can redistribute it and/or modify
>it under the terms of the GNU General Public License as published by
>the Free Software Foundation, either version 3 of the License, or
>(at your option) any later version.
>
>This program is distributed in the hope that it will be useful,
>but WITHOUT ANY WARRANTY; without even the implied warranty of
>MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
>GNU General Public License for more details.
>
>You should have received a copy of the GNU General Public License
>along with this program. If not, see https://www.gnu.org/licenses/.
