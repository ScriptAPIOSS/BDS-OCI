#!/bin/bash

rm README.md

echo "# Minecraft BDS versions" >> README.md

echo "" >> README.md
cat ./README/header.md >> README.md
echo "" >> README.md
echo "<table>" >> README.md
echo "  <tr><th><strong>Property Name</strong></th><th><strong>ENV</strong></th><th><strong>Type</strong></th><th><strong>Enums</strong></th></tr>" >> README.md

for c in `cat property-definitions.json | jq -r '.[] |= select(.hidden == false) | keys_unsorted[]'`
do
    env_name=`cat property-definitions.json | jq -r ".[\"${c}\"].env"`
    type=`cat property-definitions.json | jq -r ".[\"${c}\"].type"`
    enums=`cat property-definitions.json | jq -r ".[\"${c}\"].allowed | select (. != null) | . | map(\"<code>\" + . + \"</code><br>\")[] // \"\" "`
    echo -e "<tr><td>${c}</td><td><code>${env_name}</code></td><td>${type}</td><td>${enums}</td></tr>\n" >> README.md
done

echo "</table>" >> README.md
echo "" >> README.md
cat ./README/footer.md >> README.md
echo "" >> README.md
