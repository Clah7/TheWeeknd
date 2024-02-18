<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Album</title>
</head>
<body>
    <form action="/AlbumController/store" method="post">
        <label for="nama_album">Album Name:</label>
        <input type="text" name="nama_album" id="nama_album">

        <label for="tahun_rilis">Release Year:</label>
        <input type="text" name="tahun_rilis" id="tahun_rilis">

        <label for="album_image">Album Image:</label>
        <input type="text" name="album_image" id="album_image">

        <button type="submit">Create Album</button>
    </form>
</body>
</html>
