<?php
class homeController extends Controller {

	private $user;

	public function __construct() {
		parent::__construct();

		$this->user = new Users();

		if(!$this->user->verifyLogin()) {
			header("Location: ".BASE_URL."login");
			exit;
		}
	}

    public function index() {
        $data = array(
        	'name' => $this->user->getName()
        );

        $this->loadTemplate('home', $data);
    }

}