#!/usr/bin/env sh

grey='\033[0;37m'
green='\033[0;32m'
nc='\033[0m'

scripts_url=https://github.com/rousan/upfy/raw/master/dist/scripts.zip
app_folder=$(eval echo ~$USER)/.upfy
bashrc_file=$(eval echo ~$USER)/.bashrc

print_grey() {
  printf "${grey}${1}${nc}"
}

print_green() {
  printf "${green}${1}${nc}"
}

download_scripts() {
  # create tempfile if not exists
  tmpfile=/tmp/upfy-scripts-download.zip
  [[ -f $tmpfile ]] || mktemp "$tmpfile"

  # dowbload scripts zip
  curl -o "$tmpfile" "$scripts_url"

  # create scripts folder if not exists
  scripts_folder=$app_folder/scripts
  mkdir -p "$scripts_folder"

  # unzip the downloaded zip inside scripts folder
  unzip -o "$tmpfile" -d "$scripts_folder"

  # delete tempfile
  rm "$tmpfile"
}

printf "\n"
print_grey "  Downloading scripts: "
print_green "$scripts_url"
if [ "$1" = "-d" ]
then
  download_scripts
else
  download_scripts >/dev/null 2>&1
fi

[[ -f "$bashrc_file" ]] || touch "$bashrc_file"

printf "\n"
print_grey "  Appending commands to bashrc file: "
print_green "$bashrc_file"
main_script_file=$app_folder/scripts/main.sh
echo "\n# added by Upfy" >> "$bashrc_file"
echo "[ -f $main_script_file ] && source $main_script_file" >> "$bashrc_file"

printf "\n"
print_green "  Done!"

printf "\n\n"
print_grey "  It is recommended to execute command below once:"
printf "\n"
print_green "  $ source $bashrc_file"
printf "\n\n"