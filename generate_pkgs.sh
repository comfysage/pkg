#!/usr/bin/env bash

PRETTIER_BIN="${PRETTIER_BIN:-prettier}"

echo "-- using prettier ($PRETTIER_BIN)"

# NOTE: this script should be run from the root directory.

nb_note="""
This page features a list of core packages. **This page is auto-generated.**"""

page_name="PACKAGES.md"

echo "-- outfile ($page_name)"

get_url() {
  echo "https://github.com/comfysage/pkg/tree/mega/$1"
}

generate_file() {
  echo "# Packages"
  echo "$nb_note"

  for filename in flasks/*.fl; do
    base_name="$(basename $filename)"
    name="${base_name%.*}"
    file_content="$(sk show ./$filename | cat | sed -r 's/\x1B\[([0-9]{1,3}(;[0-9]{1,2};?)?)?[mGK]//g')"
    content="""
\`\`\`
$file_content
\`\`\`
"""
    title="[$name]($(get_url $filename))"
    printf "\n## $title\n$content"
  done
}

rm $page_name; generate_file >>$page_name

echo "   generated outfile"

if command -v prettier >/dev/null || [[ -x "$PRETTIER_BIN" ]]; then
  echo "-- formatting ($PRETTIER_BIN)"
  $PRETTIER_BIN $page_name > $page_name.new
  mv $page_name{.new,}
  echo "   saved formatted file"
fi

# useful for inspecting readme after creation e.g. `$ ./generate_pkgs.sh vim`
[ -n "$1" ] && $1 $page_name

exit 0
