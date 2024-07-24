#!/bin/bash
modified_file="$1"

git diff --unified=0 --word-diff HEAD~8 "$modified_file" | grep -E '@@' | sed -E 's/@@ -[0-9]*(,[0-9])? \+([0-9]*(,[0-9])?) @@/\2/g' | awk '{print $1}' | awk -F, '{if (NF == 2) {print $1; print $1 + $2 - 1} else {print $0}}' > line_numbers
# Sometimes there is , on diff output, in which case +(0-9)* is more precise (dont know why)
# When there are a new line, added text does not show up with line number. I then kept the ,count part and add a new line number with awk

git diff --unified=0 --word-diff HEAD^ "$modified_file" | grep -E '\-\]|\+\}' | sed -e 's/\[-/\\textcolor{red}{/g' -e 's/-]/}/g' -e 's/{+/\\textcolor{blue}{/g' -e 's/+}/}/g' > line_modifications

paste line_numbers line_modifications | while read -r number content; do
    # Only three characters to be escaped, see https://stackoverflow.com/questions/407523/escape-a-string-for-a-sed-replace-pattern
    escaped_content=$(echo "$content" | sed -e 's/[\/&]/\\&/g')
    sed -i "${number}s/.*/${escaped_content}/g" "$modified_file"
done

rm line_numbers line_modifications
# TODO probably does not work when line breaks are involved
# TODO Problems when inside $. Might need to manually delete middle $ and fix last }, maybe adding a new \textcolo{}{ if changes are over text and math
