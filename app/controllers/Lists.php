<?php 

class Lists extends Controller
{

  public function __construct()
  {
      $this->listModel = $this->model('Carslist');
  }

  public function index()
  {
      $data = $this->listModel->ShowCars();
      $this->view('index', $data);
  }


}
  