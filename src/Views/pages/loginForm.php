<?php require_once __DIR__ . '/../layouts/header.php'; ?>

<h2>Accedi al tuo account</h2>
<form action="index.php?action=do_login" method="POST">
    <label for="email">Email:</label>
    <input type="text" name="username" id="username" required>
    <br><br>
    <label for="password">Password</label>
    <input type="password" name="password" id="password" required>
    <br><br>
</form>

<p>Non hai un account? Registrati.</p>

<?php require_once __DIR__ . '/../layouts/footer.php'; ?>