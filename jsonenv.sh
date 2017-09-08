export VCAP_SERVICES='{"event-audit-trail":[{"credentials":{"catalog-uri":"https://event-audit-trail.run.aws-usw02-pr.ice.predix.io","tenant-uuid":"d5d0cc3c-bffe-4445-9b78-5bfa209e3778","trusted-issuer-ids":null,"version":"1","zone-oauth-scope":"event-audit-trail.zone.d5d0cc3c-bffe-4445-9b78-5bfa209e3778.user"},"label":"event-audit-trail","name":"afalak-audit","plan":"Beta","provider":null,"syslog_drain_url":null,"tags":["audit","event","trail"],"volume_mounts":[]}],"logstash-19":[{"credentials":{"hostname":"10.72.7.30","password":"password","ports":{"514/tcp":"33044","9200/tcp":"33045","9300/tcp":"33046"},"username":"gxbq1a1ydcypiete"},"label":"logstash-19","name":"afalak-logs","plan":"free","provider":null,"syslog_drain_url":"syslog://10.72.7.30:33044","tags":["logstash14","logstash","syslog"],"volume_mounts":[]}],"notification":[{"credentials":{"catalogUri":"https://ev-notification-service.run.aws-usw02-pr.ice.predix.io","tenantUuid":"37aae96b-4a61-4106-985d-925f0e446877","trustedIssuerIds":null,"version":"","zoneOauthScope":"notification.zone.37aae96b-4a61-4106-985d-925f0e446877.user"},"label":"notification","name":"afalak-notify","plan":"Beta","provider":null,"syslog_drain_url":null,"tags":["notification","email","audit","event","trail"],"volume_mounts":[]}],"predixplatform-newrelic":[{"credentials":{"licenseKey":"nrkey"},"label":"predixplatform-newrelic","name":"afalak-nr","plan":"standard","provider":null,"syslog_drain_url":null,"tags":["newrelic","management","monitoring","apm"],"volume_mounts":[]}],"rabbitmq-36":[{"credentials":{"dashboard_url":"https://pivotal-rabbitmq-36.system.aws-usw02-pr.ice.predix.io/#/login/7115d03d-cad7-46cd-9dbc-31617c018eaa/2kntpge9urapopvstmqud8qj3m","hostname":"10.72.6.151","hostnames":["10.72.6.151","10.72.7.151"],"http_api_uri":"https://7115d03d-cad7-46cd-9dbc-31617c018eaa:2kntpge9urapopvstmqud8qj3m@pivotal-rabbitmq-36.system.aws-usw02-pr.ice.predix.io/api/","http_api_uris":["https://7115d03d-cad7-46cd-9dbc-31617c018eaa:2kntpge9urapopvstmqud8qj3m@pivotal-rabbitmq-36.system.aws-usw02-pr.ice.predix.io/api/"],"password":"password","protocols":{"amqp":{"host":"10.72.6.151","hosts":["10.72.6.151","10.72.7.151"],"password":"passwd","port":5672,"ssl":false,"uri":"amqp://7115d03d-cad7-46cd-9dbc-31617c018eaa:2kntpge9urapopvstmqud8qj3m@10.72.6.151:5672/521682c6-0594-45a5-bb09-20aaf2a4d0ec","uris":["amqp://7115d03d-cad7-46cd-9dbc-31617c018eaa:2kntpge9urapopvstmqud8qj3m@10.72.6.151:5672/521682c6-0594-45a5-bb09-20aaf2a4d0ec","amqp://7115d03d-cad7-46cd-9dbc-31617c018eaa:2kntpge9urapopvstmqud8qj3m@10.72.7.151:5672/521682c6-0594-45a5-bb09-20aaf2a4d0ec"],"username":"7115d03d-cad7-46cd-9dbc-31617c018eaa","vhost":"521682c6-0594-45a5-bb09-20aaf2a4d0ec"},"management":{"host":"10.72.6.151","hosts":["10.72.6.151","10.72.7.151"],"password":"passwd","path":"/api/","port":15672,"ssl":false,"uri":"http://7115d03d-cad7-46cd-9dbc-31617c018eaa:2kntpge9urapopvstmqud8qj3m@10.72.6.151:15672/api/","uris":["http://7115d03d-cad7-46cd-9dbc-31617c018eaa:2kntpge9urapopvstmqud8qj3m@10.72.6.151:15672/api/","http://7115d03d-cad7-46cd-9dbc-31617c018eaa:2kntpge9urapopvstmqud8qj3m@10.72.7.151:15672/api/"],"username":"7115d03d-cad7-46cd-9dbc-31617c018eaa"},"stomp":{"host":"10.72.6.151","hosts":["10.72.6.151","10.72.7.151"],"password":"passwd","port":61613,"ssl":false,"uri":"stomp://7115d03d-cad7-46cd-9dbc-31617c018eaa:2kntpge9urapopvstmqud8qj3m@10.72.6.151:61613","uris":["stomp://7115d03d-cad7-46cd-9dbc-31617c018eaa:2kntpge9urapopvstmqud8qj3m@10.72.6.151:61613","stomp://7115d03d-cad7-46cd-9dbc-31617c018eaa:2kntpge9urapopvstmqud8qj3m@10.72.7.151:61613"],"username":"7115d03d-cad7-46cd-9dbc-31617c018eaa","vhost":"521682c6-0594-45a5-bb09-20aaf2a4d0ec"}},"ssl":false,"uri":"amqp://7115d03d-cad7-46cd-9dbc-31617c018eaa:2kntpge9urapopvstmqud8qj3m@10.72.6.151/521682c6-0594-45a5-bb09-20aaf2a4d0ec","uris":["amqp://7115d03d-cad7-46cd-9dbc-31617c018eaa:2kntpge9urapopvstmqud8qj3m@10.72.6.151/521682c6-0594-45a5-bb09-20aaf2a4d0ec","amqp://7115d03d-cad7-46cd-9dbc-31617c018eaa:2kntpge9urapopvstmqud8qj3m@10.72.7.151/521682c6-0594-45a5-bb09-20aaf2a4d0ec"],"username":"7115d03d-cad7-46cd-9dbc-31617c018eaa","vhost":"521682c6-0594-45a5-bb09-20aaf2a4d0ec"},"label":"rabbitmq-36","name":"afalak-rmq36","plan":"standard","provider":null,"syslog_drain_url":null,"tags":["rabbitmq","messaging","message-queue","amqp","stomp","mqtt","pivotal"],"volume_mounts":[]}],"redis-20":[{"credentials":{"host":"10.72.6.42","password":"c929-4006-ab0d-5e25c6fc3002","port":40163},"label":"redis-20","name":"afalak-redis20","plan":"shared-vm","provider":null,"syslog_drain_url":null,"tags":["pivotal","redis"],"volume_mounts":[]}]}'
export VCAP_APPLICATION='{"application_id":"7e91453f-7baa-4f12-aac9-e4ec7b75c697","application_name":"afalak-cfenv","application_uris":["afalak-cfenv.run.aws-usw02-pr.ice.predix.io"],"application_version":"b060e2a6-9fa2-4d24-92ff-08fb0f8102de","cf_api":"https://api.system.aws-usw02-pr.ice.predix.io","limits":{"disk":10,"fds":16384,"mem":16},"name":"afalak-cfenv","space_id":"f9bf8932-a6c4-47f6-ac40-3bf154eca462","space_name":"dev","uris":["afalak-cfenv.run.aws-usw02-pr.ice.predix.io"],"users":null,"version":"b060e2a6-9fa2-4d24-92ff-08fb0f8102de"}'
export MEMORY_LIMIT='MEMLIMIT'
export PWD='ThisIsPWD'
export USER='FalakTheFalcon'
export TMPDIR='ThisIsTmp'
