<?php require_once __DIR__ . '/../layouts/header.php'; ?>

<h2>Crea un nuovo account</h2>
<form action="index.php?action=do_register" method="POST">
    <label for="email">Email:</label>
    <input type="text" name="username" id="username" required>
    <br><br>
    <label for="password">Password</label>
    <input type="password" name="password" id="password" required>
    <label for="password">Ripeti la Password</label>
    <input type="password" name="password" id="password" required>
    <br><br>
</form>

<?php require_once __DIR__ . '/../layouts/footer.php'; ?>