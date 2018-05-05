<?php
class loginController extends Controller {

	public function index() {
		$dados = array(
			'msg' => ''
		);

		if(!empty($_GET['error'])) {
			if($_GET['error'] == '1') {
				$dados['msg'] = 'Usuário e/ou senha inválido!';
			}
		}

		$this->loadView('login', $dados);
	}

	public function signin() {
		if(isset($_POST['username']) && !empty($_POST['username'])) {
			$username = strtolower($_POST['username']);
			$pass = $_POST['pass'];

			$users = new Users();
			if($users->validateUser($username, $pass)) {
				header("Location: ".BASE_URL);
				exit;
			} else {
				header("Location: ".BASE_URL."login?error=1");
				exit;
			}
		} else {
			header("Location: ".BASE_URL."login");
			exit;
		}
	}

	public function signup() {
    	$data = array(
    		'msg' => ''
    	);

    	if(!empty($_POST['username'])) {
    		$username = strtolower($_POST['username']);
    		$pass = $_POST['pass'];

    		$user = new Users();

    		if($user->validateUsername($username)) {

    			if(!$user->userExists($username)) {
    				$user->registerUser($username, $pass);

    				header("Location: ".BASE_URL."login");
    			} else {
    				$data['msg'] = 'Usuário já cadastrado!';
    			}

    		} else {
    			$data['msg'] = 'Usuário inválido (Digite apenas letras e números)';
    		}

    	}

    	$this->loadView('signup', $data);
    }
}