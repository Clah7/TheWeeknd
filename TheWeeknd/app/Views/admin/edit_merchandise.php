<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Merchandise</title>
</head>
<body>
    <form action="/MerchandiseController/update/<?= $merchandise['id_item']; ?>" method="post">
        <label for="nama_item">Item Name:</label>
        <input type="text" name="nama_item" id="nama_item" value="<?= $merchandise['nama_item']; ?>" required>

        <label for="price">Price:</label>
        <input type="number" name="price" id="price" value="<?= $merchandise['price']; ?>" required>

        <label for="item_desc">Description:</label>
        <textarea name="item_desc" id="item_desc"><?= $merchandise['item_desc']; ?></textarea>

        <label for="link_item">Item Link:</label>
        <input type="url" name="link_item" id="link_item" value="<?= $merchandise['link_item']; ?>">

        <label for="merch_image">Merchandise Image URL:</label>
        <input type="text" name="merch_image" id="merch_image" value="<?= $merchandise['merch_image']; ?>">

        <button type="submit">Update Merchandise</button>
    </form>
</body>
</html>
