<?php 

class AccueilController extends Controller{
    public function index(){
        // appeler un ou plusieurs model => appeler la base de données 
        // Model / Vue / Controller <= Dispatcher url 
        // $e = new Model;
        $data = [//? $data a une portée locale, il faudra l'attribuer au parent
            "titre" => "Bienvenue sur mon site TP",
            "articles" =>  Model::getPdo()->query("SELECT * FROM articles")
            // "articles" => $e->query("SELECT * FROM articles") //* => fonctionne en mettant le construct en public
        ];

        $this->set($data);  // d'envoyer des données à la vue (à la fonction render)     

        $this->render("index"); // la méthode que l'on va utiliser 
    }
}