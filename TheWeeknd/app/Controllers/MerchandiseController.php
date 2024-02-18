<?php

namespace App\Controllers;

use App\Models\MerchandiseModel;

class MerchandiseController extends BaseController
{
    public function index()
    {
        $merchModel = new MerchandiseModel();
        $data['merchandise'] = $merchModel->findAll();
        return view('admin_merchandise', $data);
    }

    public function create()
    {
        return view('admin/create_merchandise');
    }

    public function store()
    {
        $merchModel = new MerchandiseModel();
        
         $img = $this->request->getFile('merch_image');
        if ($img->isValid() && !$img->hasMoved()) {
             $newName = $img->getRandomName();
             $img->move('img/Konten', $newName);
            
             $merchImage = base_url('img/Konten/' . $newName);
        } else {
             $merchImage = '';  
        }
    
        $data = [
            'nama_item' => $this->request->getPost('nama_item'),
            'price' => $this->request->getPost('price'),
            'item_desc' => $this->request->getPost('item_desc'),
            'link_item' => $this->request->getPost('link_item'),
            'merch_image' => $merchImage,
        ];
    
        $merchModel->insert($data);
        return redirect()->to('admin/adminView');
    }
    

    public function edit($id)
    {
        $merchModel = new MerchandiseModel();
        $data['merchandise'] = $merchModel->find($id);
        return view('admin/edit_merchandise', $data);
    }

    public function update($id)
    {
        $merchModel = new MerchandiseModel();
        $data = [
            'nama_item' => $this->request->getPost('nama_item'),
            'price' => $this->request->getPost('price'),
            'item_desc' => $this->request->getPost('item_desc'),
            'link_item' => $this->request->getPost('link_item'),
            'merch_image' => $this->request->getPost('merch_image'),
        ];
        $merchModel->update($id, $data);
        return redirect()->to('admin/adminView');
    }

    public function delete($id)
    {
        $merchModel = new MerchandiseModel();
        $merchModel->delete($id);
        return redirect()->to('admin/adminView');
    }
}
