<?php
$id = filter_input(INPUT_GET, 'id');
$modeleLivres = new modeleLivres();
//dans le controler on instancie l'objet pour l'utiliser dans la vue

$categories = $modeleLivres->categoryOfLivres();
// retourne un tableau d'objet de category

// if($id){
//     $produits = $modeleArticle->livresByCategory($id);
// }else{
//     $produits = $modeleArticle->livresAll();
// }

$livres = $modeleLivres->livresAll();

