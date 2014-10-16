<?php
require ('Materia.php');
require('header.php');
require ('bd.php');
$Mate = new Materia();
if(isset($_POST['submit'])){
    switch($_POST['submit']){
        case "Eliminar":
            /*echo "<br>Bot&oacute;n:".$_POST['submit'];*/
            $Mate->DeleteReg($_POST['id']);
            break;
        case "Asignar":
            /*echo "<br>Bot&oacute;n:".$_POST['submit'];*/
            $Mate->Agregarme($_POST['idprof'],$_POST['materia']);
            break;


    }
}
echo "<div>";
$sql3="SELECT * FROM personascontrol WHERE nivel=2 ORDER BY nombre ASC ";
$consulta3=mysql_query($sql3) or die ('Error de Consult3');
$cuantos3=mysql_num_rows($consulta3);
echo "<form name=materias action=asignar-materias.php method=Post>";
echo"Seleccione Maestro<br>";
echo "<select name=user>";
/*echo"<option value=t>--Seleccione materia--</option>";*/
for ($y=0; $y<$cuantos3; $y++)
{
    $id=mysql_result($consulta3, $y, 'IdPersona');
    $nom=mysql_result($consulta3, $y, 'nombre');
    echo"<option value=$id>$nom </option>";
}
echo "</select>";
echo "<br><br><input type=submit name=submit value=Seleccionar />";
echo "</form>";
echo "</div>";



require('footer.php');
?>