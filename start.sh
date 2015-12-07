#!/usr/bin/env bash
if [ ! -f /srv/guacamole/config/guacamole.properties ]; then

	confd -onetime -backend rancher -prefix /2015-07-25
fi

.$CATALINA_HOME/bin/catalina.sh run