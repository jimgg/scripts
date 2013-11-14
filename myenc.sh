#!/Users/jim/Local/php/bin/php -q
<?php

$str = file_get_contents('php://stdin');

echo substr(base64_encode(sha1($str)), 0, 16);

