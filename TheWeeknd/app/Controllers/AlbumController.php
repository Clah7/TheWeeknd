<?php

namespace App\Controllers;

use App\Models\AlbumModel;

class AlbumController extends BaseController
{
    public function index()
    {
        $albumModel = new AlbumModel();
        $data['albums'] = $albumModel->findAll();
        return view('admin_album', $data);
    }

    public function create()
    {
        return view('admin/create_album');
    }

    public function store()
    {
        $albumModel = new AlbumModel();
        $data = [
            'nama_album' => $this->request->getPost('nama_album'),
            'tahun_rilis' => $this->request->getPost('tahun_rilis'),
            'album_image' => $this->request->getPost('album_image'),
        ];
        $albumModel->insert($data);
        return redirect()->to('admin/adminView');
    }

    public function edit($id)
    {
        $albumModel = new AlbumModel();
        $data['album'] = $albumModel->find($id);
        return view('admin/edit_album', $data);
    }

    public function update($id)
    {
        $albumModel = new AlbumModel();
        $data = [
            'nama_album' => $this->request->getPost('nama_album'),
            'tahun_rilis' => $this->request->getPost('tahun_rilis'),
            'album_image' => $this->request->getPost('album_image'),
        ];
        $albumModel->update($id, $data);
        return redirect()->to('admin/adminView');
    }

    public function delete($id)
    {
        $albumModel = new AlbumModel();
        $albumModel->delete($id);
        return redirect()->to('/album');
    }
}
