<?php

class Carslist 
{
 
  private $db;

  public function __construct(){
      $this->db = new Database();
  }


  public function ShowCars(){
    $this->db->query("SELECT cars.id, number, year_made, model, 
                             manage.id AS carId,
                             manage.cars_id,
                             manage.segments_id,
                             manage.user_id,
                             manage.date_from,
                             manage.date_to,
                             car_status.id,
                             car_status.cars_id,
                             car_status.status_id,
                             segments.id,
                             users.id,
                             statuses.id,
                             statuses.name AS status,
                             SUBSTRING_INDEX(GROUP_CONCAT(segments.name , ' / ', users.name ORDER BY  manage.date_to), ',', 1) AS owner,
                             SUBSTRING_INDEX(GROUP_CONCAT(segments.name , ' / ', users.name ORDER BY  manage.date_to), ',', -1) AS prevOwner  
                      FROM cars  
                      LEFT JOIN car_management as manage ON cars.id = manage.cars_id                   
                      LEFT JOIN car_status ON cars.id = car_status.cars_id
                      LEFT JOIN segments ON manage.segments_id = segments.id                 
                      LEFT JOIN users ON manage.user_id = users.id
                      LEFT JOIN statuses ON car_status.status_id = statuses.id   
                      GROUP BY number                
                      ORDER BY carId ASC
                      ");
                      
    return $this->db->resultSet();
  }

}