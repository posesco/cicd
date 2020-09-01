<?php
include "./connect.php";
$edad = '';
if(isset($_POST)){
  $edad = $_POST['edad'];
}
?>
<!DOCTYPE html>
<html>

<head>
    <title>Tabla con base de datos</title>
    <style>
    table {
        border-collapse: collapse;
        width: 100%;
        color: #588c7e;
        font-family: monospace;
        font-size: 25px;
        text-align: left;
    }
    th {
        background-color: #588c7e;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2
    }
    </style>
</head>

<body>
<div>
    <form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST">
      <?php echo "Ingrese la edad a filtrar:"?>
      <input name="edad" type="integer" value="<?php echo $edad; ?>">
      <button type="submit">Buscar</a>
    </form>
</div>
<div>
<table>
        <tr>
            <th>Id</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Edad</th>
        </tr>

<?php 
          // Recorrer tabla e imprimir datos 
          if ($edad==""){
            $sql = "SELECT * FROM registro";
          } else
          {
            $sql = "SELECT * FROM registro WHERE edad=$edad";
          }          
          $result = $enlace->query($sql);
          if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
              echo "<tr><td>" . $row["id"]. "</td><td>" . $row["nombre"] . "</td><td>"
          . $row["apellido"]. "</td><td>" . $row["edad"]. "</td></tr>";
            }
            echo "</table>";
          } 
          else { echo "Ninung resultado"; }
          $enlace->close();
?>

    </table>
</div>
</body>   
</html>