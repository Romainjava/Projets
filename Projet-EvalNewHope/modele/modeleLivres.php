<?php
class modeleLivres extends ClassConnexion
{

    // public function livresByCategory($id){
    //     $array = [];

    // }

    public function categoryOfLivres()
    {
        $array = [];
        $req = parent::$bdd->prepare("SELECT genre.id, genre.name FROM `genre`");
        $req->execute();
        while ($donnee = $req->fetch()) {
            $catLivres = new ClassLivres();
            $catLivres->setId($donnee['id']);
            $catLivres->setName($donnee['name']);
            array_push($array, $catLivres);
        }
        return $array;
    }

    public function livresAll()
    {
        $array = [];
        $req = parent::$bdd->prepare("SELECT
        livres.id,
        livres.name,
        livres.price,
        livres.synopsis,
        livres.img
    FROM
        `livres`
        
    WHERE
        1");
        $req->execute();
        while ($donnee = $req->fetch()) {
            $livres = new ClassLivres();
            $livres->setId($donnee['id']);
            $livres->setName($donnee['name']);
            $livres->setPrice($donnee['price']);
            $livres->setSynopsis($donnee['synopsis']);
            $livres->setImg($donnee['img']);

            array_push($array, $livres);
        }
        return $array;
    }

    public function unLivre($id)
    {

        $req = parent::$bdd->prepare("SELECT livres.id as id_livre, author, livres.name as livrename, price, synopsis, img, date, stock,
         genre.name as genrename
         FROM `livres` 
         JOIN genre On livres.id_genre=genre.id
         WHERE livres.id=:id");
        $livres = new ClassLivres();
        $req->bindParam("id", $id);
        $req->execute();
        if ($donnee = $req->fetch()) {
            $livres->setId($donnee['id_livre']);
            $livres->setName($donnee['livrename']);
            $livres->setPrice($donnee['price']);
            $livres->setSynopsis($donnee['synopsis']);
            $livres->setImg($donnee['img']);
            $livres->setAuthor($donnee['author']);
            $livres->setGenre($donnee['genrename']);
            $livres->setStock($donnee['stock']);
        }
        return $livres;
    }
}
