<?= $this->extend('/baseUser');?>

<?= $this->section('head');?>

 
 

</head><?= $this->endSection();?>
<?= $this->section('content');?>
 
    <h1>The Weeknd - Songs</h1>
    <li><a href="/pages/viewAlbum" class="active">Albums</a></li>
    <input type="text" id="searchInput" placeholder="Search for songs...">
    <div class="songs-grid">
    <?php foreach ($songs as $song): ?>
 
        <div class="song-container">
        <a href="https://open.spotify.com/embed/track/<?= $song['spotify_id'] ?>" class="song-link">  

            <h2>Song: <?= esc($song['nama_lagu']) ?></h2>
            <p>Duration: <?= date('H:i:s', strtotime($song['durasi_lagu'])) ?></p>
             <img src="<?= esc($song['lagu_image']) ?>" alt="Song Image" height="100" width="100">
             </a>

        </div>
    <?php endforeach; ?>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const searchInput = document.getElementById('searchInput');
            const songTitles = document.querySelectorAll('.song-container h2');
            const songs = document.querySelectorAll('.song-container');

            searchInput.addEventListener('input', function(e) {
                const searchTerm = e.target.value.toLowerCase();

                songs.forEach(container => {
                    const songTitle = container.querySelector('h2').textContent.toLowerCase();
                    container.style.display = songTitle.includes(searchTerm) ? '' : 'none';
                });
            });
        });
    </script>
 <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
        }

        .song-link {
    text-decoration: none;  
    color: inherit;  
    display: block;  
}

.song-container {
 
    box-sizing: border-box;  
}
        #searchInput {
            display: block;
            width: 80%;
            margin: 20px auto;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .songs-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
    grid-auto-rows: minmax(100px, auto);  
    gap: 20px;
    padding: 20px;
    margin: 0 auto;
    max-width: 1200px;
}

.song-container {
    display: flex;
    flex-direction: column;
    background: white;
    border: 1px solid #ddd;
    padding: 15px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    text-align: center;
    overflow: hidden;  
}

.song-container img {
    width: auto;  
    max-width: 100%;
    max-height: 150px;  
    margin-bottom: 10px;
}

.song-container h2 {
    font-size: 1em;
    margin: 0;
    padding: 0;
}

 .song-container a {
    margin-top: auto;
}

 .duration {
    color: #666;
    margin: 5px 0;  
}

        .song-container img {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        .song-container h2 {
            margin: 0;
            padding: 0;
            font-size: 1.2em;
            color: #333;
        }

        .song-container p {
            color: #666;
        }

        @media (max-width: 768px) {
            .songs-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
<?= $this->endSection();?>