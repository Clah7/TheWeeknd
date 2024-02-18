
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
    <div class="header">
        <?= $this->include('/navbar'); ?>
    </div>
    <?= $this->renderSection('content'); ?>
    <div class="footer">
        <?= $this->include('/footer'); ?>
    </div>
</body>

</html>