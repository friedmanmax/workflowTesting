#!/bin/sh
content=`cat matrix_json.json`
# the following lines are only required for multi line json
content="${content//'%'/'%25'}"
# content="${content//$'\n'/'%0A'}"
# content="${content//$'\r'/'%0D'}"
# end of optional handling for multi line json

echo $content

# echo "matrix=$($content | jq '.include |= map(select(.name == "Princess"))')" >> $GITHUB_OUTPUT