#!/usr/bin/env bash

# NOTE: this script should be run from the root directory.

nb_note="""
This page features a list of core packages. **This page is auto-generated.**"""

page_name="PACKAGES.md"

generate_file() {
    echo "# Packages"
    echo "$nb_note"

    for filename in *.yaml; do
        file_content="$(hayashi pkg show --local $filename | sed -r 's/\x1B\[([0-9]{1,3}(;[0-9]{1,2};?)?)?[mGK]//g')"
        content="""
$(grep "desc:" $filename | grep -oE " .*")
\`\`\`yaml
$file_content
\`\`\`
"""
        title="[$filename]($(hayashi home ./$filename | sed -r 's/\x1B\[([0-9]{1,3}(;[0-9]{1,2};?)?)?[mGK]//g'))"
        printf "\n## $title\n$content"
    done
}

rm $page_name; generate_file >>$page_name

if command -v prettier >>/dev/null; then
    prettier $page_name > $page_name.new
    mv $page_name{.new,}
fi

# useful for inspecting readme after creation e.g. `$ ./generate_pkgs.sh vim`
[ -n "$1" ] && $1 $page_name

exit 0
