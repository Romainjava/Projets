<?php
if($unLivre->id()!=null){
?>

<img src="<?=$unLivre->img(); ?>" alt=" <?= $unLivre->name(); ?>">
<h2> <?=$unLivre->name();?> </h2>
<h2> <?=$unLivre->author();?> </h2>
<p> Prix : <?=$unLivre->price(); ?> € </p>
<p> Synopsis : <?=$unLivre->synopsis(); ?> </p>
<p> Il nous en reste en stock : <?=$unLivre->stock();?> </p>

    


<?php
}
?>