<?php

namespace App\Controllers;
use App\Models\AlbumModel;
use App\Models\LaguModel;
class MusicController extends BaseController
{
    private $spotifyApi;

    public function __construct()
    {
        $this->spotifyApi = new SpotifyAPI();
    }

    public function index()
    {
        // Load the initial view with the genre selection
        return view('music/index');
    }

    public function loadGenres()
    {
        // Retrieve genres from Spotify API
        $genres = $this->spotifyApi->getGenres();
        return $this->response->setJSON($genres->categories->items);
    }

    public function loadPlaylists($genreId)
    {
        // Retrieve playlists for a specific genre
        $playlists = $this->spotifyApi->getPlaylistByGenre($genreId);
        return $this->response->setJSON($playlists->playlists->items);
    }

    public function loadTracks($playlistId)
    {
        // Retrieve tracks for a specific playlist
        $tracks = $this->spotifyApi->getTracks($playlistId);
        return $this->response->setJSON($tracks->items);
    }

    public function loadTrackDetail($trackId)
    {
        // Retrieve details for a specific track
        $trackDetail = $this->spotifyApi->getTrack($trackId);
        return $this->response->setJSON($trackDetail);
    }

    public function weekndSongs()
    {
        $artistId = '1Xyo4u8uXC1ZmMpatF05PJ'; // The Weeknd's Spotify ID
        $albums = $this->spotifyApi->getArtistAlbums($artistId);

        $allTracks = [];

        $cache = \Config\Services::cache();
        $cacheKey = 'weekndSongsData';
        $allTracks = $cache->get($cacheKey);
    

        $albumModel = new AlbumModel();
        $laguModel = new LaguModel();
 

        foreach ($albums->items as $album) {
            $albumData = [
                'nama_album' => $album->name,
                'tahun_rilis' => substr($album->release_date, 0, 4),
                'album_image' => $album->images[0]->url,
                'spotify_id' => $album->id
            ];
        
             $albumModel->save($albumData);
            $albumId = $albumModel->insertID();
        
            $tracksData = $this->spotifyApi->getAlbumTracks($album->id);
            foreach ($tracksData->items as $track) {
                $laguModel->save([
                    'nama_lagu' => $track->name,
                    'durasi_lagu' => gmdate("H:i:s", $track->duration_ms / 1000),
                    'id_album' => $albumId,
                    'lagu_image' => $album->images[0]->url,  
                    'spotify_id' => $track->id
                ]);
            }
        }
    



        return view('admin/home');
    }

    public function deleteAllMusicData()
    {
        $albumModel = new AlbumModel();
        $laguModel = new LaguModel();
    
        $db = \Config\Database::connect();
    
        if ($laguModel->deleteAll()) {
            // Reset auto-increment for lagu table
            $db->query("ALTER TABLE lagu AUTO_INCREMENT = 1");
    
            if ($albumModel->deleteAll()) {
                // Reset auto-increment for album table
                $db->query("ALTER TABLE album AUTO_INCREMENT = 1");
    
                session()->setFlashdata('message', 'All music data has been deleted successfully.');
            } else {
                session()->setFlashdata('error', 'Failed to delete album data.');
            }
        } else {
            session()->setFlashdata('error', 'Failed to delete lagu data.');
        }
    
        return view('admin/home');
    }
    
    
}
 