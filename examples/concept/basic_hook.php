
<?php

$hooks = ['engine', 'fuel', 'doors', 'wheels'];

$modules = ['car', 'bike'];

function bike_engine() {
  print ('Bike engine deployed<br/>');
}

function bike_fuel() {
  print ('Bike fuel deployed<br/>');
}

function car_engine() {
  print ('Car engine deployed<br/>');
}

function car_doors() {
  print ('Car doors deployed<br/>');
}

foreach($hooks as $hook) {
  foreach ($modules as $module) {
    $function = $module . '_' . $hook;
    if (function_exists($function)) {
      $function();
    }
  }
}



