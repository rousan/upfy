#!/usr/bin/env sh

app_folder=$(eval echo ~$USER)/.upfy
base_dir=$app_folder/scripts

[ -f "$base_dir/aliases.sh" ] && source "$base_dir/aliases.sh"