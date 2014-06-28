<?php
foreach(range(1,9) as $number1){
  foreach(range(1,9) as $number2){
    $product = $number1 * $number2;
    echo $number1."x".$number2."=".$product."\n";
  }
}
?>
