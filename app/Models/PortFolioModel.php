<?php

namespace App\Models;
use CodeIgniter\Model;

class PortfolioModel extends Model
{
    protected $table = 'portfolio';
    protected $primaryKey = 'id_portfolio';
    protected $allowedFields = ['judulProject', 'kategori', 'deskripsi', 'gambar'];
}
