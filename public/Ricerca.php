<?php
require_once __DIR__ . '/../config.php';

$ricerca = $conn -> real_escape_string($_POST['ricerca']);

if ($ricerca != '') {
    $query_artista = "SELECT * FROM artista WHERE nome LIKE '%$ricerca%'";
    $query_canzone = "SELECT nome, artista, descrizione FROM canzone WHERE nome LIKE '%$ricerca%'";

    $risultato_artista = $conn->query($query_artista);
    $risultato_canzone = $conn->query($query_canzone);

    if ($risultato_artista->num_rows > 0) {
        while ($row = $risultato_artista->fetch_assoc()){  
            $artista = $row['nome'];
            echo ('Artista: <a href="index.php?action=artista&nome='.$artista.'">'.$artista.'</a><br>');
        }
    }
    if ($risultato_canzone->num_rows > 0) {
        while ($row = $risultato_canzone->fetch_assoc()){  
            $canzone = $row['nome'];
            echo ('Canzone: <a href="index.php?action=canzone&nome='.$canzone.'">'.$canzone.'</a><br>');
        }
    }
} else {
    echo("testo vuoto");
}

?>