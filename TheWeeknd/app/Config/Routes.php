<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */

$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Identitas');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();

$routes->match(['get', 'post'], '/', 'Auth::index');
$routes->get('/logout', 'Auth::logout');
$routes->post('/logout', 'Auth::logout');
$routes->match(['get', 'post'], '/register', 'Auth::register');

// Admin Routes
$routes->get('/admin', 'Admin::index', ['filter' => 'auth']);
$routes->get('/admin', 'Admin::index');
$routes->get('/admin/tour', 'Admin::tour');
$routes->get('/admin/merch', 'Admin::merch');
$routes->get('/admin/discography', 'Admin::discography');
$routes->get('/admin/adminView', 'Admin::adminView');

// $routes->get('admin/add', 'Admin::create', ['filter' => 'auth']);
// $routes->post('admin/add', 'Admin::save');
// $routes->get('admin/edit/(:num)', 'Admin::edit/$1', ['filter' => 'auth']);
// $routes->post('admin/edit/(:num)', 'Admin::update/$1');
// $routes->get('admin/delete/(:num)', 'Admin::delete/$1', ['filter' => 'auth']);

// Users Routes
$routes->get('/user', 'Users::index', ['filter' => 'auth']);
$routes->get('/pages', 'Pages::index');
$routes->get('/pages/tour', 'Pages::tour');
$routes->get('/pages/tourAdmin', 'Pages::tourAdmin');
$routes->get('/pages/merch', 'Pages::merch');
$routes->get('/pages/discography', 'Pages::discography');
$routes->get('/pages/discographyAdmin', 'Pages::discographyAdmin');
$routes->get('/pages/viewMerchandise', 'Pages::viewMerchandise');
$routes->get('/pages/viewMerchandiseAdmin', 'Pages::viewMerchandiseAdmin');
$routes->get('/pages/viewLagu', 'Pages::viewLagu');
$routes->get('/pages/viewAlbum', 'Pages::viewAlbum');
$routes->get('/pages/viewAlbumAdmin', 'Pages::viewAlbumAdmin');
$routes->get('/pages/music', 'Pages::music');

// Add any other routes related to the Users controller here.



//test routes

//tour routes
$routes->get('/admin', 'Admin::index');
$routes->get('/admin/(:any)', 'Admin::viewData/$1');
$routes->get('/TourController/create', 'TourController::create');
$routes->post('/TourController/store', 'TourController::store');
$routes->get('/TourController/edit/(:num)', 'TourController::edit/$1');
$routes->post('/TourController/update/(:num)', 'TourController::update/$1');
$routes->get('/TourController/delete/(:num)', 'TourController::delete/$1');

//merchandise routes
$routes->get('/MerchandiseController/create', 'MerchandiseController::create');
$routes->post('/MerchandiseController/store', 'MerchandiseController::store');
$routes->get('/MerchandiseController/edit/(:num)', 'MerchandiseController::edit/$1');
$routes->post('/MerchandiseController/update/(:num)', 'MerchandiseController::update/$1');
$routes->get('/MerchandiseController/delete/(:num)', 'MerchandiseController::delete/$1');

//album routes
$routes->get('/LaguController/create', 'LaguController::create');
$routes->post('/LaguController/store', 'LaguController::store');
$routes->get('/LaguController/edit/(:num)', 'LaguController::edit/$1');
$routes->post('/LaguController/update/(:num)', 'LaguController::update/$1');
$routes->get('/LaguController/delete/(:num)', 'LaguController::delete/$1');

//album routes
$routes->get('/AlbumController/create', 'AlbumController::create');
$routes->post('/AlbumController/store', 'AlbumController::store');
$routes->get('/AlbumController/edit/(:num)', 'AlbumController::edit/$1');
$routes->post('/AlbumController/update/(:num)', 'AlbumController::update/$1');
$routes->get('/AlbumController/delete/(:num)', 'AlbumController::delete/$1');

$routes->get('/music', 'MusicController::index');
$routes->get('/music/genres', 'MusicController::loadGenres');
$routes->get('/music/playlists/(:segment)', 'MusicController::loadPlaylists/$1');
$routes->get('/music/tracks/(:segment)', 'MusicController::loadTracks/$1');
$routes->get('/music/track/(:segment)', 'MusicController::loadTrackDetail/$1');

$routes->get('/weeknd-songs', 'MusicController::weekndSongs');
$routes->get('/delete', 'MusicController::deleteAllMusicData');
