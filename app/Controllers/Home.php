<?php

namespace App\Controllers;
use App\Models\ProjectModel;
use App\Models\AcademicModel;
use App\Models\AboutModel;
use App\Models\SkillsModel;
use App\Models\PortfolioModel;
use App\Models\ContactModel;

class Home extends BaseController
{
    public function index()
    {
        $aboutModel = new AboutModel();
        $projectModel = new ProjectModel();
        $academicModel = new AcademicModel();
        $skillsModel = new SkillsModel();
        $portfolioModel = new PortfolioModel();
        $contactModel = new ContactModel();

        $data['about'] = $aboutModel->findAll();
        $data['projects'] = $projectModel->findAll();
        $data['academic'] = $academicModel->findAll();
        $data['skills'] = $skillsModel->findAll();
        $data['portfolio'] = $portfolioModel->findAll();
        $data['contact'] = $contactModel->findAll();

        return view('index', $data);
    }

    public function send()
    {
        $contactModel = new ContactModel();

        $data = [
            'namacontact' => esc($this->request->getPost('name')),
            'email'       => esc($this->request->getPost('email')),
            'subjek'      => esc($this->request->getPost('subject')),
            'pesan'       => esc($this->request->getPost('message')),
            'date'        => date('Y-m-d H:i:s'),
        ];

        if ($contactModel->insert($data)) {
            session()->setFlashdata('success', 'Terima kasih, <b>' . esc($data['namacontact']) . '</b>! Pesanmu sudah terkirim 💖');
        } else {
            session()->setFlashdata('error', 'Maaf, terjadi kesalahan. Coba lagi ya 😢');
        }

        return redirect()->to(base_url('/#contact'));
    }
}
