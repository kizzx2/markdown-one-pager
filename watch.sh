#!/bin/bash

set -x
set -e

find . -name '*.md' | entr ./go.sh /_
