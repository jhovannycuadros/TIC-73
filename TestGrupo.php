<?php
require ('Grupo.php');
require('header.php');
require ('bd.php');
$Grupo = new Grupo();
$id=$_POST[id];
if(isset($_POST['submit'])){
    switch($_POST['submit']){
        case "Eliminar":
            $Grupo->DeleteReg($id);
            break;
        }
    }
$Grupo->AsignarAlumnoaGrupo();
require('footer.php');



?>