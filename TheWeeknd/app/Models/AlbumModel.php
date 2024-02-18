<?php

namespace App\Models;

use CodeIgniter\Model;

class AlbumModel extends Model
{
    protected $table      = 'album';
    protected $primaryKey = 'id_album';

    protected $useAutoIncrement = true;
    protected $allowedFields = ['nama_album','tahun_rilis','album_image','spotify_id'];

    public function deleteAll()
    {
        return $this->db->table($this->table)->emptyTable();
    }
}
