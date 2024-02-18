<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Merchandise</title>
</head>
<body>
    <form action="/MerchandiseController/store" method="post" enctype="multipart/form-data">
        <label for="nama_item">Item Name:</label>
        <input type="text" name="nama_item" id="nama_item" required>

        <label for="price">Price:</label>
        <input type="number" name="price" id="price" required>

        <label for="item_desc">Description:</label>
        <textarea name="item_desc" id="item_desc"></textarea>

        <label for="link_item">Item Link:</label>
        <input type="url" name="link_item" id="link_item">

         <label for="merch_image">Merchandise Image:</label>
        <input type="file" name="merch_image" id="merch_image" accept="image/*">

        <button type="submit">Create Merchandise</button>
    </form>
</body>
</html>
