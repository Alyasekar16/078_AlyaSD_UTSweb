<?php

namespace App\Models;
use CodeIgniter\Model;

class AboutModel extends Model
{
    protected $table = 'about';
    protected $primaryKey = 'id_about';
    protected $allowedFields = ['nama', 'judul', 'deskripsi', 'photo'];
}
