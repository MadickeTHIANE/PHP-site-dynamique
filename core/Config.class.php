<?php
class Config{

        public static function esc($texte){ //* Fonction permettant d'éviter les injections XSS
                return nl2br(htmlspecialchars($texte));
        }
}
