<?php
class AdminController extends Controller
{
        public function accueil()
        {
                //* 1 - Créer une variable $data

                $data = [
                        "articles" => Model::getPdo()->query('SELECT * FROM articles')
                ];
                // var_dump($data);

                //* 2 - Envoyer les données à la vue
                $this->set($data);

                //* 3 - Sélectionner la vue
                $this->render("accueil");
        }

        public function ajout()
        {
                // appeler une vue 
                // var_dump($_POST);
                if (!empty($_POST)) {
                        if (
                                isset($_POST['titre']) &&
                                isset($_POST['contenu']) &&
                                strlen($_POST['titre']) > 5 &&
                                strlen($_POST['contenu']) > 10
                        ) {
                                // Model::getPdo()->query("INSERT INTO articles (titre, contenu)VALUES ('{$_POST['titre']}', '{$_POST['contenu']}')");
                                $sql = "INSERT INTO articles (titre, contenu)VALUES (:titre, :contenu)";
                                Model::getPdo()->query($sql, $_POST);
                                header("location: " . WWW . "admin/accueil");
                                die();
                        }
                }
                $this->render("ajouter");
        }

        public function modif($id = null)
        {
                if (!empty($_POST)) {
                        if (
                                isset($_POST['titre']) &&
                                isset($_POST['contenu']) &&
                                strlen($_POST['titre']) > 5 &&
                                strlen($_POST['contenu']) > 10 &&
                                isset($_POST['id']) &&
                                is_numeric($_POST['id'])
                        ) {
                                Model::getPdo()->query('UPDATE articles SET titre= :titre, contenu = :contenu WHERE id = :id', $_POST);
                                header("location: " . WWW . "admin/accueil");
                                die();
                        }
                }
                $article = Model::getPdo()->query('SELECT * FROM articles WHERE id = :id', ['id' => $id]);

                if (empty($article)) {
                        echo "Attention l'article $id n'existe pas dans la base de données";
                        die();
                }

                $data = [
                        "article" => current($article)
                ];

                $this->set($data);
                $this->render("modifier");
        }

        public function suppr($id = null)
        {
                $sql = "DELETE FROM articles WHERE id = :id";
                Model::getPdo()->query($sql, [':id' => $id]);
                header("location: " . WWW . "admin/accueil");
                die();
        }
}
