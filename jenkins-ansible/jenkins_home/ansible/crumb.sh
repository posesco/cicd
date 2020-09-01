# Defino varibles
SERVER="http://localhost:8080"
USER="jenkins:1234"
COOKIEJAR="$(mktemp)"
# Acorto url de tareas
TASK1="/job/env/build?delay=0sec"
TASK2="/job/aws-s3/buildWithParameters?host=BASE_DATOS&name_db=people&bucket=curso-jenkins"
TASK3="/job/tarea_remota/buildWithParameters?DATA=15"
TASK4="/job/ansible-job/buildWithParameters?tag=no-exec"
# Ejecuto disparadores por metodo POST
CRUMB=$(curl -u "$USER" --cookie-jar "$COOKIEJAR" "$SERVER/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,%22:%22,//crumb)")
curl -X POST -u "$USER" --cookie "$COOKIEJAR" -H "$CRUMB" "$SERVER""$TASK1"
curl -X POST -u "$USER" --cookie "$COOKIEJAR" -H "$CRUMB" "$SERVER""$TASK2"
curl -X POST -u "$USER" --cookie "$COOKIEJAR" -H "$CRUMB" "$SERVER""$TASK3"
#curl -X POST -u "$USER" --cookie "$COOKIEJAR" -H "$CRUMB" "$SERVER""$TASK4"