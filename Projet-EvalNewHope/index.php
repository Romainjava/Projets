<?php
/*INITIALISATION DE LA VARIABLE LOC */
$loc = filter_input(INPUT_GET, 'loc');
if (!$loc) {
    $loc = 'home';
}

/*INITIALISATION DE LA VARIABLE IMAGE QUI VA DEFINIR L'IMAGE DU HEADER */
$image = "asset/" . $loc . ".jpg";
if (!file_exists($image)) {
    $image = "asset/home.jpg";
}

/*AUTOLOADER */
include_once 'controler/Autoloader.php';
Autoloader::register();

 switch($loc) {
    case 'livres':
    include_once "controler/controlerLivres.php";
    break;

    case 'un-livre':
    include_once "controler/controlerUn-livre.php";
    break;

    default:
    break;
} 




/*AJOUT DE LA PAGE HTML*/
include "vue/template.php";