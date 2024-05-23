#!/bin/bash
modified_file="$1"


 git diff --unified=0 --word-diff HEAD^ "$modified_file" | grep -E '@@' | sed -E 's/@@ -([0-9]*) \+[0-9]* @@/\1/g' | awk '{print $1}' > line_numbers

git diff --unified=0 --word-diff HEAD^ "$modified_file" | grep -E '\-\]|\+\}' | sed -e 's/\[-/\\textcolor{red}{/g' -e 's/-]/}/g' -e 's/{+/\\textcolor{blue}{/g' -e 's/+}/}/g' > line_modifications

paste line_numbers line_modifications | while read -r number content; do
    # Only three characters to be escaped, see https://stackoverflow.com/questions/407523/escape-a-string-for-a-sed-replace-pattern
    escaped_content=$(echo "$content" | sed -e 's/[\/&]/\\&/g')
    sed -i "${number}s/.*/${escaped_content}/g" "$modified_file"
done

rm line_numbers line_modifications
# TODO Problems when inside $. Might need to manually delete middle $ and fix last }, maybe adding a new \textcolo{}{ if changes are over text and math
