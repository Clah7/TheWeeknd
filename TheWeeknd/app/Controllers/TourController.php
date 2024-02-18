<?php

namespace App\Controllers;

use App\Models\TourModel;

class TourController extends BaseController
{
    public function index()
    {
        $tourModel = new TourModel();
        $data['tours'] = $tourModel->findAll();
        return view('admin/adminView', $data);
    }

    public function tour()
    {
        $tourModel = new TourModel();
        $data['tours'] = $tourModel->findAll();
        return view('users/tour', $data);
    }
    

    public function create()
    {
        return view('admin/create_tour');
    }

    public function store()
    {
        $tourModel = new TourModel();
        $data = [
            'tour_name' => $this->request->getPost('tour_name'),
            'tour_place' => $this->request->getPost('tour_place'),
            'tour_time' => $this->request->getPost('tour_time'),
        ];
        $tourModel->insert($data);
        return redirect()->to('admin/adminView');
    }

    public function edit($id)
    {
        $tourModel = new TourModel();
        $data['tour'] = $tourModel->find($id);
        return view('admin/edit_tour', $data);
    }

    public function update($id)
    {
        $tourModel = new TourModel();
        $data = [
            'tour_name' => $this->request->getPost('tour_name'),
            'tour_place' => $this->request->getPost('tour_place'),
            'tour_time' => $this->request->getPost('tour_time'),
        ];
        $tourModel->update($id, $data);
        return redirect()->to('admin/adminView');
    }
    public function delete($id)
{
    $tourModel = new TourModel();
    $tourModel->delete($id);

    return redirect()->to('admin/adminView'); // Redirect back to the admin view
}
}
