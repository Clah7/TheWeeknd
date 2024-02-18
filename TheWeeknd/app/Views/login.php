    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link rel="stylesheet" href="css/login.css">
    </head>

    <body>
        <section>
            <div class="container">
                <h1>Login</h1>

                <?php if (session()->get('success')) : ?>
                    <p style="color: green; font-size: small;"><?= session()->get('success') ?></p>
                <?php endif; ?>

                <form action="/" method="post">
                    <label for="username">Username :</label>
                    <input type="text" name="username" placeholder="Username" value="<?= set_value('username') ?>"> <br>
                    <label for="password">Password :</label>
                    <input type="password" name="pass" placeholder="Password" value="<?= set_value('pass') ?>"> <br>
                    
                    Remember me
                    <input class="form-check-input" type="checkbox" id="alwaysLogin" name="alwaysLogin" value="1">
                    <br>

                    <?php if (isset($validation)) : ?>
                        <ul class="validation-errors">
                            <?= $validation->listErrors() ?>
                        </ul>
                    <?php endif; ?>

                    <button type="submit">Login</button>
                    <p>
                        Don't have an account yet? <a href="register">Click here</a> to register
                    </p>
                </form>
            </div>
        </section>
    </body>

    </html>
