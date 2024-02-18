<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\AlbumModel;
use App\Models\LaguModel;
use App\Models\MerchandiseModel;
use App\Models\TourModel;
use App\Models\UserModel;


class Admin extends BaseController
{
    public function index()
    {
        $data = [
            
        ];
        return view('/admin/home', $data);

    }

    public function adminView()
    {
        $albumModel = new AlbumModel();
        $laguModel = new LaguModel();
        $merchModel = new MerchandiseModel();
        $tourModel = new TourModel();
        $userModel = new UserModel();

        $data = [
            'albums' => $albumModel->findAll(),
            'lagus' => $laguModel->findAll(),
            'merchandise' => $merchModel->findAll(),
            'tours' => $tourModel->findAll(),
            'users' => $userModel->findAll()
        ];

        return view('admin/admin_view', $data);
    }

}
    


