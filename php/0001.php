<?php
$data = array();
for ($i = 0; $i < 10; $i++) {
    $data[$i] = readline();
}
rsort($data);
for($i = 0; $i < 3; $i++){
  echo $data[$i]. "\n";
}
