#!/usr/bin/env bash
set -e

rm -rf _site

while read row; do

  short_url="$(echo "$row" | cut -d , -f 1)"
  url="$(echo "$row" | cut -d , -f 2)"

  mkdir -p "_site/$short_url"

  echo "<!DOCTYPE html>
<html>
<head>
  <title>Redirecting...</title>
</head>
<body>
  <p>Redirecting to <a rel=\"noreferrer\" href=\"$url\">$url</a></p>
  <script>
    location.href=\"$url\";
  </script>
</body>
</html>" > "_site/$short_url/index.html"

done < data.csv
