<?php

namespace App\Models;
use CodeIgniter\Model;

class AcademicModel extends Model
{
    protected $table = 'academic';
    protected $primaryKey = 'id_academic';
    protected $allowedFields = ['gelar', 'universitas', 'deskripsi', 'tahunmasuk', 'tahunselesai'];
}
