<?php

namespace App\Controllers;

use App\Models\LaguModel;
use CodeIgniter\Exceptions\PageNotFoundException;

class LaguController extends BaseController
{
    public function index()
    {
        $lagu = new LaguModel();
        $data['lagu'] = $lagu->findAll(); //pake foreach lagu di view
        return view('admin',$data);
    }

    public function store()
    {
        $lagu = new LaguModel();
        $file = $this->request->getFile('userfile');
        if($file->isValid() && ! $file->hasMoved())
        {
            $laguImage = $file->getRandomName();
            $file->move('lUploads/',$laguImage);
        }

        $data = [
            'nama_lagu' => $this->request->getPost('nama_lagu'),
            'durasi_lagu' => $this->request->getPost('durasi_lagu'),
            'id_album' => $this->request->getPost('id_album'),
            'lagu_image' => $laguImage,
        ];

        $lagu->save($data);
        return redirect()->to('lagu')->with('status','Data and Image Saved');
    }

    public function edit($id)
    {
        $lagu = new LaguModel();
        $data['lagu'] = $lagu->find($id);
        return view('admin/edit',$data);
    }

    public function update($id)
    {
        $lagu = new LaguModel();
        $lagu_data = $lagu->find($id);
        $file = $this->request->getFile('image');
        $old_image_name = $lagu_data['image'];

        if($file->isValid() && !$file->hasMoved())
        {
            if(file_exists("uploads/".$old_image_name))
            {
                unlink("uploads/".$old_image_name);
            }
            $laguImage = $file->getRandomName();
            $file->move('lUploads/',$laguImage);
        }
        else
        {
            $laguImage = $old_image_name;
        }

        $data = [
            'nama_lagu' => $this->request->getPost('nama_lagu'),
            'durasi_lagu' => $this->request->getPost('durasi_lagu'),
            'id_album' => $this->request->getPost('id_album'),
            'lagu_image' => $laguImage,
        ];

        $lagu->update($id,$data);
        return redirect()->to('lagu')->with('status','Data and Image Saved');
    }

    public function delete($id)
    {
        $lagu = new LaguModel();
        $data = $lagu->find($id);
        $imageFile = $data['image'];

        if(file_exists("/uploads".$imageFile))
        {
            unlink("/uploads".$imageFile);
        }

        $lagu->delete($id);
        return redirect()->back()->with('status','Data and Image Deleted');
    }


}
