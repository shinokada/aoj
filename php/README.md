# Getting inputs examples

## example 1

    while(true) {
      $inputs = explode(' ', trim(fgets(STDIN)));
    ...
    }

## example 2

    while(fscanf(STDIN,"%d %d",$a,$b))
    {
    ...
    }

## example 3

    while(1){
      $stdin = fgets(STDIN);
    ...
    }

## example 4

    $fp = fopen('php://stdin', 'r');
    while (feof($fp) == false) {
      $line = fgets($fp);
    ...
    }

## example 5

    while (TRUE) {
        fscanf(STDIN, "%d %d", $a, $b);
        if (feof(STDIN)) {
            break;
        }

## example 6

    for(;fscanf(STDIN,"%d %d",$a,$b);){
        print strlen($a+$b)."\n";
    }

## example 7

    fscanf(STDIN,"%d",$n);
    for($i=0;$i<$n;$i++){
        $d=array();
        fscanf(STDIN,"%d %d %d",$d[0],$d[1],$d[2]);
    ...
    }

## example 8

    $numData = trim(fgets(STDIN));
    $count = 0;
     
    while($count < $numData) {
        $data = explode(' ', trim(fgets(STDIN)));
    ...
    }

## example 9

    $n = fgets(STDIN);
    for($i=1; $i<=$n; ++$i){
      $num = fscanf(STDIN, '%d %d %d');
    ...
    }


