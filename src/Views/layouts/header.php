<!DOCTYPE html>
<html lang="it">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Easy Guitar mette a disposizione testo e accordi per suonare canzoni con la chitarra, e nel caso in cui tu abbia appena cominciato ti insegna le basi">
    <meta name="keywords" content="chitarra, canzoni, accordi">
    <meta name="author" content="EasyGuitarTeam">
    <meta name="apple-mobile-web-app-title" content="EasyGuitarTeam">
    
    <title><?= $title ?? 'EasyGuitar' ?></title>
</head>

<body>
    <header>
        <h1>EasyGuitar</h1>

        <nav id="status-bar">
            <p>Ti trovi in: <?php echo $pagina_corrente ?? 'Home'; ?></p>
        </nav>

        <nav>
            <ul>
                <li><a href="index.php">Home</a></li>
                <li><a href="index.php?action=login">Accedi</a></li>
                <li><a href="index.php?action=esplora">Esplora</a></li>
                <li><a href="index.php?action=artista">Artista</a></li>
            </ul>
        </nav>

    </header>
</body>