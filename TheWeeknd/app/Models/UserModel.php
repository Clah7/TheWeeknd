<?php

namespace App\Models;

use CodeIgniter\Model;

class UserModel extends Model
{
    protected $table            = 'users';
    protected $primaryKey       = 'username';  
    protected $protectFields    = false;  
    protected $allowedFields    = [
        'username', 'pass', 'level'  
    ];

    protected $allowCallbacks = true;
    protected $beforeInsert   = ['hashPassword'];
    protected $beforeUpdate = ['hashPassword'];
    protected $useAutoIncrement = false;


    protected function hashPassword(array $data)
    {
        if (isset($data['data']['pass'])) {
            $data['data']['pass'] = password_hash($data['data']['pass'], PASSWORD_DEFAULT);
        }
        return $data;
    }


    public function getUser($username)
    {
        return $this->where('username', $username)->first();
    }

    public function getAllUsers()
    {
        return $this->findAll();
    }
}
