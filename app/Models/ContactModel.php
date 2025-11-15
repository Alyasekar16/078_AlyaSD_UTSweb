<?php

namespace App\Models;
use CodeIgniter\Model;

class ContactModel extends Model
{
    protected $table = 'contact';
    protected $primaryKey = 'id_contact';
    protected $allowedFields = ['namacontact', 'email', 'subjek', 'pesan', 'date'];
}

