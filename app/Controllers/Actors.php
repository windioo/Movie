<?php

namespace App\Controllers;

use App\Models\Actor;

class Actors extends BaseController
{

    protected $actorModel;

    public function __construct()
    {
        $this->actorModel = new Actor();
    }

    public function index()
    {
        $page = $this->request->getVar('page_actor') ? $this->request->getVar('page_actor') : 1;
        // $actor = $this->actorModel->findAll();

        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $actor = $this->actorModel->search($keyword);
        } else {
            $actor = $this->actorModel;
        }


        $data = [
            'title' => 'Actor',
            'actor' => $this->actorModel->paginate(10, 'actor'),
            'pager' => $this->actorModel->pager,
            'page' => $page
        ];
        return view('actor/index', $data);
    }

    public function create()
    {
        $data = [
            'title' => 'Actor Form',
            'validation' => \Config\Services::validation()
        ];

        return view('actor/create', $data);
    }

    public function save()
    {

        if (!$this->validate([
            'name' => 'required|is_unique[actor.name]',
            'gender' => 'required',
            'age' => 'required'
        ])) {
            $validation = \Config\Services::validation();
            return redirect()->to('/actor/create')->withInput()->with('validation', $validation);
        }

        $this->actorModel->save([
            'name' => $this->request->getVar('name'),
            'gender' => $this->request->getVar('gender'),
            'age' => $this->request->getVar('age')
        ]);

        session()->setFlashdata('msg', 'Successfully added data actor');

        return redirect()->to('/actor');
    }

    public function edit($id)
    {
        $data = [
            'title' => 'Edit Actor Form',
            'validation' => \Config\Services::validation(),
            'actor' => $this->actorModel->getActor($id)
        ];

        return view('actor/edit', $data);
    }

    public function update($id)
    {

        $checkData = $this->actorModel->getActor($id);
        if ($checkData['name'] == $this->request->getVar('name')) {
            $rule_name = 'required';
        } else {
            $rule_name = 'required|is_unique[actor.name]';
        }

        if (!$this->validate([
            'name' => $rule_name,
            'gender' => 'required',
            'age' => 'required'
        ])) {

            $validation = \Config\Services::validation();
            return redirect()->to('/actor/edit/' . $id)->withInput()->with('validation', $validation);
        }


        $this->actorModel->save([
            'id' => $id,
            'name' => $this->request->getVar('name'),
            'gender' => $this->request->getVar('gender'),
            'age' => $this->request->getVar('age')
        ]);

        session()->setFlashdata('msg', 'Successfully edit data actor');

        return redirect()->to('/actor');
    }

    public function delete($id)
    {
        $this->actorModel->delete($id);
        session()->setFlashdata('msg', 'Successfully delete data actor');
        return redirect()->to('/actor');
    }
}
