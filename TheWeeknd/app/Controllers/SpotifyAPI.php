<?php

namespace App\Controllers;

use App\Config\CURLRequest;

class SpotifyAPI extends BaseController
{
    protected $clientId;
    protected $clientSecret;

    public function __construct()
    {
        // Set your Spotify API credentials here
        $this->clientId = 'ac13dd90b2564fa4b6be86516f35ab0b';
        $this->clientSecret = '1997e520216743fbbc18dddc1e4c3b54';
    }

    public function getToken()
    {
        $session = \Config\Services::session(); 
    
        // Check if the token is already set and not expired
        if (!$session->has('spotify_token') || $session->get('spotify_token_expiry') <= time()) {
            $client = \Config\Services::curlrequest();
            $credentials = base64_encode("{$this->clientId}:{$this->clientSecret}");
    
            $response = $client->request('POST', 'https://accounts.spotify.com/api/token', [
                'headers' => [
                    'Authorization' => 'Basic ' . $credentials,
                    'Content-Type' => 'application/x-www-form-urlencoded',
                ],
                'form_params' => [
                    'grant_type' => 'client_credentials',
                ],
            ]);
    
            $data = json_decode($response->getBody());
    
            // Set token and expiry time in session
            $session->set('spotify_token', $data->access_token);
            // Assuming the token expires in 3600 seconds (1 hour)
            $session->set('spotify_token_expiry', time() + 3600);
        }
    
        return $session->get('spotify_token');
    }

    public function getGenres()
    {
        $token = $this->getToken();
        $client = \Config\Services::curlrequest();

        $response = $client->request('GET', 'https://api.spotify.com/v1/browse/categories?locale=sv_US', [
            'headers' => [
                'Authorization' => 'Bearer ' . $token,
            ],
        ]);

        return json_decode($response->getBody());
    }

    public function getPlaylistByGenre($genreId)
    {
        $token = $this->getToken();
        $client = \Config\Services::curlrequest();
        $limit = 10;

        $response = $client->request('GET', "https://api.spotify.com/v1/browse/categories/${genreId}/playlists?limit=${limit}", [
            'headers' => [
                'Authorization' => 'Bearer ' . $token,
            ],
        ]);

        return json_decode($response->getBody());
    }

    public function getTracks($tracksEndPoint)
    {
        $token = $this->getToken();
        $client = \Config\Services::curlrequest();
        $limit = 10;

        $response = $client->request('GET', "${tracksEndPoint}?limit=${limit}", [
            'headers' => [
                'Authorization' => 'Bearer ' . $token,
            ],
        ]);

        return json_decode($response->getBody());
    }

    public function getTrack($trackEndPoint)
    {
        $token = $this->getToken();
        $client = \Config\Services::curlrequest();

        $response = $client->request('GET', $trackEndPoint, [
            'headers' => [
                'Authorization' => 'Bearer ' . $token,
            ],
        ]);

        return json_decode($response->getBody());
    }

    public function getArtistAlbums($artistId)
    {
        $token = $this->getToken();
        $client = \Config\Services::curlrequest();

        $response = $client->request('GET', "https://api.spotify.com/v1/artists/{$artistId}/albums", [
            'headers' => [
                'Authorization' => 'Bearer ' . $token,
            ],
        ]);

        return json_decode($response->getBody());
    }

    public function getAlbumTracks($albumId)
    {
        $token = $this->getToken();
        $client = \Config\Services::curlrequest();

        $response = $client->request('GET', "https://api.spotify.com/v1/albums/{$albumId}/tracks", [
            'headers' => [
                'Authorization' => 'Bearer ' . $token,
            ],
        ]);

        return json_decode($response->getBody());
    }   
}
