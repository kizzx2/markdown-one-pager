#!/bin/bash

set -e
set -x

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

fn="${1%.*}"
redcarpet "$1" > "$fn.html"
(echo '<link rel="stylesheet" href="../style.css" />'; cat "$fn.html") > "$fn-2.html"
wkhtmltopdf "$fn-2.html" "$DIR/$(basename "$fn.pdf")"
