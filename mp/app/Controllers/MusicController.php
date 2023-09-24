<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\MusicPlayerModel;

class MusicController extends BaseController
{
    public function index()
    {
        $main = new MusicPlayerModel();
        $data['music_player'] = $main->findAll();
        $data['symphony'] = [];
        return view('music_player', $data);
    }
    public function add()
    {
        //$upload = new MusicPlayerModel();
        //$data['music_player'] = $upload->findAll();
        //$data['symphony'] = [];
        return view('playlist');
    }
}
