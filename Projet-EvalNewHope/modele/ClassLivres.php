<?php
class ClassLivres
{
    private $id;
    private $name;
    private $author;
    private $price;
    private $synopsis;
    private $img;
    private $date;
    private $stock;
    private $genre;

    /**
     * Tableau associatif
     */
    public function toArray()
    {
        return [
            "id" => $this->id(), "name" => $this->name(), "author" => $this->author(), "price" => $this->price(),
            "synopsis" => $this->synopsis(), "img" => $this->img(), "date" => $this->date(), "stock" => $this->stock()
        ];
    }
    /**
     * Get the value of id
     */
    public function id()
    {
        return $this->id;
    }

    /**
     * Set the value of id
     *
     * @return  self
     */
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Get the value of name
     */
    public function name()
    {
        return $this->name;
    }

    /**
     * Set the value of name
     *
     * @return  self
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get the value of author
     */
    public function author()
    {
        return $this->author;
    }

    /**
     * Set the value of author
     *
     * @return  self
     */
    public function setAuthor($author)
    {
        $this->author = $author;

        return $this;
    }

    /**
     * Get the value of price
     */
    public function price()
    {
        return $this->price;
    }

    /**
     * Set the value of price
     *
     * @return  self
     */
    public function setPrice($price)
    {
        $this->price = $price;

        return $this;
    }

    /**
     * Get the value of synopsis
     */
    public function synopsis()
    {
        return $this->synopsis;
    }

    /**
     * Set the value of synopsis
     *
     * @return  self
     */
    public function setSynopsis($synopsis)
    {
        $this->synopsis = $synopsis;

        return $this;
    }

    /**
     * Get the value of img
     */
    public function img()
    {
        return $this->img;
    }

    /**
     * Set the value of img
     *
     * @return  self
     */
    public function setImg($img)
    {
        $this->img = $img;

        return $this;
    }

    /**
     * Get the value of date
     */
    public function date()
    {
        return $this->date;
    }

    /**
     * Set the value of date
     *
     * @return  self
     */
    public function setDate($date)
    {
        $this->date = $date;

        return $this;
    }

    /**
     * Get the value of stock
     */
    public function stock()
    {
        return $this->stock;
    }

    /**
     * Set the value of stock
     *
     * @return  self
     */
    public function setStock($stock)
    {
        $this->stock = $stock;

        return $this;
    }

    /**
     * Get the value of genre
     */ 
    public function genre()
    {
        return $this->genre;
    }

    /**
     * Set the value of genre
     *
     * @return  self
     */ 
    public function setGenre($genre)
    {
        $this->genre = $genre;

        return $this;
    }
}
