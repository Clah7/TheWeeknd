<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\AlbumModel;
use App\Models\LaguModel;
use App\Models\MerchandiseModel;
use App\Models\TourModel;
use App\Models\UserModel;
class Pages extends BaseController
{
    public function index()
    {
        return view('/users/home');
    }

    public function tour()
    {
        $tourModel = new TourModel();
        $data['tours'] = $tourModel->findAll();
        return view('users/tour', $data);
    }
    
    public function tourAdmin()
    {
        $tourModel = new TourModel();
        $data['tours'] = $tourModel->findAll();
        return view('admin/tour', $data);
    }

    public function merch()
    {
        return view('users/merch');
    }

    public function discography()
    {
        return view('users/discography');
    }

    public function discographyAdmin()
    {
        return view('admin/discography');
    }

    public function viewMerchandise()
    {
        $merchModel = new MerchandiseModel();
        $data['merchandise'] = $merchModel->findAll();
        return view('users/view_merchandise', $data);
    }

    public function viewMerchandiseAdmin()
    {
        $merchModel = new MerchandiseModel();
        $data['merchandise'] = $merchModel->findAll();
        return view('admin/view_merchandise', $data);
    }


    public function viewLagu()
    {
        $laguModel = new  LaguModel();  
        $data['songs'] = $laguModel->findAll();  
        return view('users/view_lagu', $data);  
    }

    public function viewAlbum()
    {
        $albumModel = new AlbumModel();
        $data['albums'] = $albumModel->findAll();
        return view('music/weeknd_songs', $data);
    }

    public function viewAlbumAdmin()
    {
        $albumModel = new AlbumModel();
        $data['albums'] = $albumModel->findAll();
        return view('music/weeknd_songs_admin', $data);
    }
}
    
