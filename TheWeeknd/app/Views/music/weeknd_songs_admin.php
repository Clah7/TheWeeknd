<?= $this->extend('/base');?>

<?= $this->section('head');?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Weeknd Songs and Albums</title>
    <link rel="stylesheet" href="/css/pages/lagu.css">
</head><?= $this->endSection();?>
<?= $this->section('content');?>

    <h1>The Weeknd - Songs and Albums</h1>
    <li><a href="/pages/viewLagu" class="active">Songs</a></li>
    <li><a href="/delete" class="active">Delete All data</a></li>
    <li><a href="/weeknd-songs" class="active">Update</a></li>
    <input type="text" id="searchInput" placeholder="Search for albums...">

    <?php foreach ($albums as $album): ?>
        <div class="album-container">
        <h2>Album: <?= esc($album['nama_album']) ?> (<?= $album['tahun_rilis'] ?>)</h2>
        <img src="<?= esc($album['album_image']) ?>" alt="Album Image" height="200" width="200">
 
                <iframe src="https://open.spotify.com/embed/album/<?= $album['spotify_id'] ?>" width="800" height="500" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                    </div>
    <?php endforeach; ?>
    <script>
document.addEventListener('DOMContentLoaded', function() {
    const searchInput = document.getElementById('searchInput');
    const albumTitles = document.querySelectorAll('h2');
    const albums = document.querySelectorAll('.album-container');


    searchInput.addEventListener('input', function(e) {
        const searchTerm = e.target.value.toLowerCase();

        albums.forEach(container => {
            const albumTitle = container.querySelector('h2').textContent.toLowerCase();
            container.style.display = albumTitle.includes(searchTerm) ? '' : 'none';
        });
    });

});
</script>
<style>

body {
    font-family: 'Oswald', sans-serif;
    margin: 0;
    padding: 0;
    background: #f4f4f4;
    color: #333;
}

h1 {
    text-align: center;
    margin-top: 20px;
}

.album-container {
    display: grid;
    grid-template-columns: 300px 1fr;  
    gap: 20px;
    padding: 20px;
    margin: 20px auto;  
    border: 1px solid #ddd;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    background: white;
}

.album-container img {
    width: 200;
    height: 200;
 
}

.album-container iframe {
    width: 1600px;
    top: 200px;
    height: 500px;
}

 
#searchInput {
    display: block;
    width: 90%;
    margin: 20px auto;
    
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ddd;
    border-radius: 5px;
}

    </style>

<?= $this->endSection();?>