<?php
$id = filter_input(INPUT_GET, 'id');

$modeleLivres = new modeleLivres();

$unLivre = $modeleLivres->unLivre($id);
