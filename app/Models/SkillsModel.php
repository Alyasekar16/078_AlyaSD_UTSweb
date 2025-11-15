<?php

namespace App\Models;
use CodeIgniter\Model;

class SkillsModel extends Model
{
    protected $table = 'skills';
    protected $primaryKey = 'id_skills';
    protected $allowedFields = ['category', 'namaskills', 'persentasi'];

    public function getSkillsGrouped()
    {
        $query = $this->orderBy('category', 'ASC')->findAll();
        $grouped = [];

        foreach ($query as $row) {
            $grouped[$row['category']][] = [
                'namaskills' => $row['namaskills'],
                'persentasi' => $row['persentasi'],
            ];
        }

        return $grouped;
    }
}