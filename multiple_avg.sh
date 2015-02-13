#!/usr/bin/env php -q
<?php
if ($argc < 4) {
	echo "multiple_bet.php [a] [b] [c] [count] \n";
	exit;
}

$a = $argv[1];
$b = $argv[2];
$c = $argv[3];
if ($argc >= 5) {
	$s = $argv[4];
} else {
	$s = 30;
}

$arr = array($a, $b, $c);

$max = max($arr);

$sum = 0;
$arr2 = array();
foreach ($arr as $v) {
	$c = $max / $v;
	$arr2[] = $c;
	$sum += $c;
}

foreach ($arr2 as $k => $v) {
	echo $arr[$k] . ':' . round($v / $sum * $s) . "\n";
}

