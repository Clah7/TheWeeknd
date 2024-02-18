<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Album</title>
</head>
<body>
    <form action="/AlbumController/update/<?= $album['id_album']; ?>" method="post">
        <label for="nama_album">Album Name:</label>
        <input type="text" name="nama_album" id="nama_album" value="<?= $album['nama_album']; ?>">

        <label for="tahun_rilis">Release Year:</label>
        <input type="text" name="tahun_rilis" id="tahun_rilis" value="<?= $album['tahun_rilis']; ?>">

        <label for="album_image">Album Image:</label>
        <input type="text" name="album_image" id="album_image" value="<?= $album['album_image']; ?>">

        <button type="submit">Update Album</button>
    </form>
</body>
</html>
