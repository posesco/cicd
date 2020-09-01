# Proyecto LEMP con automatizacion Jenkins-Ansible
### Una vez clonado el proyecto se deben ejecutar algunos pasos por primera vez para el correcto funcionamiento:

Primeros pasos:
1. docker exec BASE_DATOS bash -c "/tmp/put.sh" bash
2. Logueo jenkins http://localhost:8080 o http://jenkins.local:8080 (editar archivo host o añadir a DNS)  admin 12345
3. Asegurese de proporcionar su credenciales de AWS en la seccion http://jenkins.local:8080/credentials/store/system/domain/_/

Este proyecto esta basado en: https://www.udemy.com/course/jenkins-de-principiante-a-experto/ 