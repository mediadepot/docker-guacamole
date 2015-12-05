#!/usr/bin/env bash
if [ ! -f /srv/guacamole/config/guacamole.properties ]; then

	cheetah fill --oext properties --env /srv/guacamole/tmpl/guacamole
	cheetah fill --oext xml --env /srv/guacamole/tmpl/user-mapping
	mv /srv/guacamole/tmpl/guacamole.properties /srv/guacamole/config/guacamole.properties
	mv /srv/guacamole/tmpl/user-mapping.xml /srv/guacamole/config/user-mapping.xml
fi

./$CATALINA_HOME/catalina.sh