<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>addForm</title>
    <link rel="stylesheet" href="/css/admin/add.css">
</head>
<body>
    <div class="cContainer">
        <div class="card">
            <div class="header">
                <h2>Tambahkan Data</h2>
                <?php
                    if(session()->getFlashdata('status')){
                        echo session()->getFlashdata('status');
                    }
                ?>
            </div>
            <div class="content">
                <form action="<?= base_url('lagu-add') ?>" method="post">
                    <div class="input">
                        <label for="test1">Test</label>
                        <input type="text" id="test1" name="test">
                    </div>
                    <div class="input">
                        <label for="test2">Test</label>
                        <input type="text" id="test2" name="test">
                    </div>
                    <div class="input">
                        <label for="test3">Test</label>
                        <input type="text" id="test3" name="test">
                    </div>
                    <div class="input">
                        <label for="test4">Test</label>
                        <input type="text" id="test4" name="test">
                    </div>
                    <div class="submit">
                        <input type="submit" id="test5" value="Submit"name="btn">
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>