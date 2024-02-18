<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Users extends BaseController
{
    public function index()
    {
        return view('/users/home');
    }

    public function tour()
    {
        $data = [
            
        ];
    
        return view('/users/tour');
    }
}
    
