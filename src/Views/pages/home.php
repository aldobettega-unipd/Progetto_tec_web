<?php require_once __DIR__ . '/../layouts/header.php'; ?>

<main>
    <section id="ricerca">
        <h1>Cerca la canzone e inizia a suonare</h1>
        <p id="descr">Puoi cercare tra migliaia di canzoni e autori da tutto il mondo</p>
        <div id="barraricerca">
            <input id="barracanzone" type="text" placeholder="Cerca canzone o artista...">
            <button id="cercacanzone">Cerca</button>
        </div>
    </section>
    
    <section id="proposte">
        <h2>Oppure fatti ispirare dalle nostre proposte</h2>
        <!-- Qui in futuro ci saranno i dati dinamici da $proposte -->
        <div style="display: flex; flex-wrap: wrap;">
            <div style="background-color:black;width:15%;margin-right: 2%;padding-bottom: 15%;"></div>
            <div style="background-color:black;width:15%;margin-right: 2%;padding-bottom: 15%;"></div>
            <div style="background-color:black;width:15%;margin-right: 2%;padding-bottom: 15%;"></div>
        </div>
    </section>
</main>

<?php require_once __DIR__ . '/../layouts/footer.php'; ?>