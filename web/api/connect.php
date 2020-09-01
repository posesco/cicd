<?php
        $user = getenv('MYSQL_USER');
        $pass = getenv('MYSQL_PASSWORD');
        $dbase = getenv('MYSQL_DATABASE');
        $enlace = mysqli_connect("db", "$user", "$pass", "$dbase");
        // Verificacion de la conexion
          if ($enlace->connect_error) {
          die("Fallo la conexion: " . $enlace->connect_error);
          }
      ?>