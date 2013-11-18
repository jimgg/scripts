#!/Users/jim/Local/php/bin/php -q
<?php

$c = 0;
if ($argc > 1) {
    $c = $argv[1];
}
$str = file_get_contents('php://stdin');

if ($c == 0) {
    $salt = '';
    echo substr(base64_encode(sha1($str . $salt)), 0, 16);
} else {
    echo base64_encode(sha1($str));
}

