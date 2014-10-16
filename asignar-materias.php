<?php
require ('Materia.php');
require('header.php');
require ('bd.php');
$Mate = new Materia();
if(isset($_POST['submit'])){
    switch($_POST['submit']){
        case "Seleccionar":
            /*echo "<br>Bot&oacute;n:".$_POST['submit'];*/
            $Mate->AsignarMateriaMaestro($_POST[user]);
            break;
    }
}
echo "<div><center><p>";
$prof=$_POST[user];
echo "<form action=TestMateria.php method=POST id=materias>";
echo"<div class=table-responsive> ";
echo"<table class=\"table table-striped\">
<tr><td colspan=2 align=center><strong>Asignar Materias</strong></td></tr>";
echo "<tr><td>Materias: <select id=materia name=materia>";
$sql1 = "SELECT * FROM materias WHERE estatus = 1 ORDER BY nombre ASC";
$re1 = mysql_query($sql1)or die("Error $sql01");
while($field = mysql_fetch_array($re1)){
    $id = $field['idmateria'];
    $opcion = $field['nombre'];
    $sql2="SELECT * FROM asignadas WHERE idmaestro = $prof AND idmateria = $id";
    $res03 = mysql_query($sql2)or die("No se ejecuta consulta de materias");
    $existe = mysql_num_rows($res03);
    if($existe > 0){
       echo "<option value=0>-----------------</option>";
    }else{
        echo "<option value=$id>$opcion</option>";
    }
}
echo "</select></td></tr>";
echo "<tr><td><input type=hidden name=idprof value=$prof /></td></tr>";
echo "<tr><td><input type=submit name=submit value=Asignar /></td></tr>";
echo "</table></div></form></center></div>";
require('footer.php');


?>