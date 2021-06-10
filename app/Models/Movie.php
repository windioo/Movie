<?php

namespace App\Models;

use CodeIgniter\Model;

class Movie extends Model
{
    protected $table = 'movie';
    protected $allowedFields = ['title', 'director', 'year', 'img'];

    public function getMovie($id = false)
    {
        if ($id == false) {
            return $this->findAll();
        }
        return $this->where(['id' => $id])->first();
    }
    public function search($keyword)
    {
        return $this->table('movie')->like('title', $keyword);
    }
}
