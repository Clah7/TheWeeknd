<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="css/register.css">
</head>
<body>
    <section>
        <div class="container">
            <h1>Register</h1>

            <?php if (session()->get('success')) : ?>
                <p style="color: green; font-size: small;"><?= session()->get('success') ?></p>
            <?php endif; ?>

            <form action="/register" method="post">
                <label for="username">Username :</label>
                <input type="text" name="username" placeholder="Username" value="<?= set_value('username') ?>">
                <label for="password">Password :</label>
                <input type="password" name="password" placeholder="Password">
                <label for="pass_confirm">Confirm Password :</label>
                <input type="password" name="pass_confirm" placeholder="Confirm Password">

                <label for="level">Level :</label>
                <select name="level" id="level">
                    <option value="1">User</option>
                    <option value="2">Admin</option>
                </select> <br>
                <?php if (isset($validation)) : ?>
                    <ul class="validation-errors">
                        <li><?= $validation->getError('username') ?></li>
                        <li><?= $validation->getError('password') ?></li>
                        <li><?= $validation->getError('pass_confirm') ?></li>
                        <li><?= $validation->getError('level') ?></li>
                    </ul>
                <?php endif; ?>

                <button type="submit">Register</button>
                <p>
                   Sudah memiliki akun? <a href="/">Click here</a> untuk masuk
                </p>
            </form>
        </div>
    </section>
</body>
</html>
