#!/usr/bin/env bash
echo \
| openssl s_client -servername token.actions.githubusercontent.com -showcerts -connect token.actions.githubusercontent.com:443 2> /dev/null \
| sed -n -e '/BEGIN/h' -e '/BEGIN/,/END/H' -e '$x' -e '$p' \
| tail +2 \
| openssl x509 -fingerprint -sha1 -noout \
| tr -d ":" \
| sed 's/^.*=//'