#!/bin/bash

rm README.md

echo "# Minecraft BDS versions" >> README.md

echo "" >> README.md
cat ./README/header.md >> README.md
echo "" >> README.md
echo "<table>" >> README.md
echo "  <tr><th><strong>Property Name</strong></th><th><strong>ENV</strong></th><th><strong>Enums</strong></th></tr>" >> README.md

for c in `cat property-definitions.json | jq -r 'keys[]'`
do
    env_name=`cat property-definitions.json | jq -r ".[\"${c}\"].env"`
    enums=`cat property-definitions.json | jq -r ".[\"${c}\"].allowed | select (. != null) | . | map(\"<li><code>\" + . + \"</code></li>\")[] // \"\" "`
    echo -e "<tr><td> ${c} </td>\n<td>\n<code>${env_name}</code>\n</td>\n<td>\n<ul>${enums}</ul>\n</td>\n</tr>" >> README.md
done

echo "</table>" >> README.md
echo "" >> README.md
cat ./README/footer.md >> README.md
echo "" >> README.md
