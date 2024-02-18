<?php

namespace App\Models;

use CodeIgniter\Model;

class LaguModel extends Model
{
    protected $table      = 'lagu';
    protected $primaryKey = 'id_lagu';

    protected $useAutoIncrement = true;
    protected $allowedFields = ['nama_lagu','durasi_lagu','id_album','lagu_image','spotify_id'];

    public function deleteAll()
{
    return $this->db->table($this->table)->emptyTable();
}
}

