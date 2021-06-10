<?php

namespace App\Controllers;

use App\Models\Movie;

class Movies extends BaseController
{

    protected $movieModel;

    public function __construct()
    {
        $this->movieModel = new Movie();
    }

    public function index()
    {
        $page = $this->request->getVar('page_actor') ? $this->request->getVar('page_actor') : 1;
        // $actor = $this->actorModel->findAll();

        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $movie = $this->movieModel->search($keyword);
        } else {
            $movie = $this->movieModel;
        }

        $data = [
            'title' => 'Movie',
            'movie' => $this->movieModel->paginate(10, 'movie'),
            'pager' => $this->movieModel->pager,
            'page' => $page
        ];
        return view('movie/index', $data);
    }

    public function create()
    {
        $data = [
            'title' => 'Form Movie',
            'validation' => \Config\Services::validation()
        ];

        return view('movie/create', $data);
    }

    public function save()
    {
        //validasi 
        if (!$this->validate([
            'title' => 'required|is_unique[movie.title]',
            'img' => [
                'rules' => 'max_size[img,1024]|is_image[img]|mime_in[img,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Choose a smaller image',
                    'is_image' => 'What you choose is not a picture',
                    'mime_in' => 'What you choose is not a picture'
                ]
            ]
        ])) {
            return redirect()->to('/movie/create')->withInput();
        }
        //ambil gambar
        $file_cover = $this->request->getFile('img');
        //cek gambar upload/tidak
        if ($file_cover->getError() == 4) {
            $nameCover = 'default.jpg';
        } else {
            //nama cover random
            $nameCover = $file_cover->getRandomName('.jpg');
            //pindah ke folder img
            $file_cover->move('img', $nameCover);
        }




        $this->movieModel->save([
            'title' => $this->request->getVar('title'),
            'director' => $this->request->getVar('director'),
            'year' => $this->request->getVar('year'),
            'img' =>  $nameCover
        ]);

        session()->setFlashdata('msg', 'Successfully added data movie');

        return redirect()->to('/movie');
    }

    public function edit($id)
    {
        $data = [
            'title' => 'Edit Movie Form',
            'validation' => \Config\Services::validation(),
            'movie' => $this->movieModel->getMovie($id)
        ];

        return view('movie/edit', $data);
    }

    public function update($id)
    {

        $checkData = $this->movieModel->getMovie($id);
        if ($checkData['title'] == $this->request->getVar('title')) {
            $rule_title = 'required';
        } else {
            $rule_title = 'required|is_unique[movie.title]';
        }

        if (!$this->validate([
            'title' => $rule_title,
            'img' => [
                'rules' => 'max_size[img,1024]|is_image[img]|mime_in[img,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Choose a smaller image',
                    'is_image' => 'What you choose is not a picture',
                    'mime_in' => 'What you choose is not a picture'
                ]
            ]
        ])) {
            return redirect()->to('/movie/edit/' . $id)->withInput();
        }

        $file_cover = $this->request->getFile('img');
        //cek gambar
        if ($file_cover->getError() == 4) {
            $nameCover = $this->request->getVar('oldImg');
        } else {
            $nameCover = $file_cover->getRandomName();
            $file_cover->move('img', $nameCover);
            unlink('img/' . $this->request->getVar('oldImg'));
        }



        $this->movieModel->save([
            'id' => $id,
            'title' => $this->request->getVar('title'),
            'director' => $this->request->getVar('director'),
            'year' => $this->request->getVar('year'),
            'img' => $nameCover
        ]);

        session()->setFlashdata('msg', 'Successfully edit data actor');

        return redirect()->to('/movie');
    }

    public function delete($id)
    {
        //cari gambar 
        $movie = $this->movieModel->find($id);

        //hapus gambar
        if ($movie['img'] != 'default.jpg') {
            unlink('img/' . $movie['img']);
        }


        $this->movieModel->delete($id);
        session()->setFlashdata('msg', 'Successfully delete data movie');
        return redirect()->to('/movie');
    }
}
