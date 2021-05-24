#!/bin/sh

link() {
  script_path=$1
  script_name=$2
  rm -f "$script_name"
  ln -s "$script_path" "$script_name"
}

script_dir=$1
for file in myscript/"$script_dir"/*.sh
do
  file_name=$(basename "${file}")
  echo "$file" "->" "$file_name"
  link "$file" "$file_name"
done