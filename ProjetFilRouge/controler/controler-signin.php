<?php
$modele = new ModeleSignIn();
$email = filter_input(INPUT_POST, 'emailCo');
$password = filter_input(INPUT_POST, 'passwordCo');

$user = new ClassUser();
$user->setEmail($email);
$user->setPassword($password);
$modele->verifLogin($user);
if ($user->id() > 0) {
    //stoquer id dans la session
} else {
    echo "erreur";
}