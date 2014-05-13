<?php
$width = readline("Enter a width: ");

$num_of_rec = 600/$width;
$result = array();
for( $i=0; $i<$num_of_rec; $i++)
{
  array_push($result, pow(($i*$width),2) * $width);
}
print_r (array_sum($result));
//var_dump ($result);
?>
