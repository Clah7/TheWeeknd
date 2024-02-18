<?php

namespace App\Models;

use CodeIgniter\Model;

class MerchandiseModel extends Model
{
    protected $table      = 'merchandise';
    protected $primaryKey = 'id_item';

    protected $useAutoIncrement = true;
    protected $allowedFields = ['nama_item','price','item_desc','link_item','merch_image'];
}