<?php

// load modules into repository:
$handle = opendir("modules");
while ($file = readdir($handle)) {
  if ($filename = substr($file, 0, strpos($file, ".module"))) {
    include "modules/$filename.module";
    $repository[$filename] = $module;
  }
}
closedir($handle);

function module_iterate($function, $argument = "") {
  global $repository;
  foreach ($repository as $name=>$module) {
    $function($name, $module, $argument);
  }
}


function initEngine($name, $module) {
  if ($module["engine"]) {
    $module["engine"]("Engine deployed");
  }
}
function initFuel($name, $module) {
  if ($module["fuel"]) {
    $module["fuel"]("Fuel deployed");
  }
}

function initWheels($name, $module) {
  if ($module["wheels"]) {
    $module["wheels"]("Engine deployed");
  }
}
function initDoors($name, $module) {
  if ($module["doors"]) {
    $module["doors"]("Engine deployed");
  }
}


module_iterate('initEngine');
module_iterate('initFuel');
module_iterate('initWheels');
module_iterate('initDoors');
