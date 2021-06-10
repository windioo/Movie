<?php

namespace App\Models;

use CodeIgniter\Model;

class Actor extends Model
{
    protected $table = 'actor';
    protected $allowedFields = ['name', 'gender', 'age'];

    public function getActor($id = false)
    {
        if ($id == false) {
            return $this->findAll();
        }
        return $this->where(['id' => $id])->first();
    }

    public function search($keyword)
    {
        return $this->table('actor')->like('name', $keyword);
    }
}
