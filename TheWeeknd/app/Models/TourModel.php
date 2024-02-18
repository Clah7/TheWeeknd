<?php

namespace App\Models;

use CodeIgniter\Model;

class TourModel extends Model
{
    protected $table = 'tour';  
    protected $primaryKey = 'tour_id';  
    protected $useAutoIncrement = true;
    protected $allowedFields = [
        'tour_name', 'tour_place', 'tour_time'  
    ];
 
 
}
