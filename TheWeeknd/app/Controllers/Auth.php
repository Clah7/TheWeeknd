<?php


namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\UserModel;

class Auth extends BaseController
{
    protected $usersModel;

    public function __construct()
    {
        $this->usersModel = new UserModel();
    }



    public function index()
    {
        $data = [];
        helper(['form']);
    
        if ($this->request->getMethod() === 'post') {
            $rules = [
                'username' => 'required|min_length[1]|max_length[20]|alpha_numeric',
                'pass' => 'required|min_length[1]|max_length[100]',
            ];
    
            if (!$this->validate($rules)) {
                $data['validation'] = $this->validator;
            } else {
                $model = new UserModel();
    
                $user = $model->where('username', $this->request->getPost('username'))->first();
                $passwordInput = $this->request->getPost('pass');
                if (is_string($passwordInput) && !empty($passwordInput) && $user && password_verify($passwordInput, $user['password'])) {
                    $this->setUserSession($user);
                    if ($this->request->getVar('alwaysLogin')) {
                        setcookie("username", $this->request->getVar('username'), time() + 7200, '/');
                        setcookie("pass", $this->request->getVar('pass'), time() + 7200, '/');
                    } else {
                        setcookie("username", "", time() - 3600, '/'); 
                        setcookie("pass", "", time() - 3600, '/'); 
                    }
                    // Redirect based on user level
                    if ($user['level'] == 1) {
                        return redirect()->to('user');
                    } elseif ($user['level'] == 2) {
                        return redirect()->to('admin');
                    }
                } else {
                    session()->setFlashData('error', 'Username or password don\'t match');
                    return redirect()->back()->withInput();
                }
            }
        }
        return view('login', $data);
    }
    

    private function setUserSession($user)
    {
        $data = [
            'username' => $user['username'],
            'isLoggedIn' => true,
            'level' => $user['level'],
        ];
    
        session()->set($data);
        return true;
    }
    
    
  // Controller Register Function
  public function register()
  {
      $data = [];
      helper(['form']);

      if ($this->request->getMethod() === 'post') {
          $rules = [
              'username' => 'required|min_length[1]|max_length[20]|alpha_numeric|is_unique[users.username]',
              'password' => 'required|min_length[1]|max_length[100]',
              'pass_confirm' => 'matches[password]',
              'level' => 'required|in_list[1,2]',
          ];

          if (!$this->validate($rules)) {
              $data['validation'] = $this->validator;
          } else {
              $model = new UserModel();
              $passwordInput = $this->request->getPost('password');
              if (is_string($passwordInput) && !empty($passwordInput)) {
                $hashedPassword = password_hash($passwordInput, PASSWORD_DEFAULT);
            } else {
                // Handle the error - password input is not a string or is empty
                // You might want 
                $hashedPassword = ''; 
            }
            
            $data = [
                'username' => $this->request->getPost('username'),
                'password' => $hashedPassword,
                'level' => $this->request->getPost('level'),
            ];
            
              $model->save($data);
              session()->setFlashData('success', 'Register Success!');
              return redirect()->to('/');
          }
      }

      return view('register', $data);
  }

    public function logout()
    {
        session()->destroy();
        return redirect()->to('/');
    }
}
