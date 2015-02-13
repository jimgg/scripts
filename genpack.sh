#!/usr/bin/env php -q
<?php

$str = file_get_contents('php://stdin');

$lines = explode("\n", $str);

foreach ($lines as $line)
{
    $line = trim($line);
    if ('' === $line)
    {
        continue;
    }
    $pos = strrpos($line, '/');
    if ($pos !== false)
    {
        $dir = substr($line, 0, $pos);
        echo "mkdir -p package/$dir\n";
        echo "cp -a $line package/$dir\n";
    }
}

