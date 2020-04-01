#!/bin/sh

pandoc -f epub -t html $1 | w3m -T text/html