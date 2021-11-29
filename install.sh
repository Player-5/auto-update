#!/bin/bash

#    A simple installation script for auto-update
#    Copyright (C) 2021  Player-5

#    auto-update is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.

#    auto-update is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.

#    You should have received a copy of the GNU General Public License
#    along with auto-update.  If not, see <https://www.gnu.org/licenses/>.

# Checks whether the user has the permissions needed to install the script.

if [[ "$(whoami)" != root ]]; then
  echo 'User not sudo/root!'
  exit 1
fi

# Defines default variables.
func='auto-update'
dest='/usr/local/bin'

# Moves auto-update to the destination.
cp $func $dest
