#!/usr/bin/env php
<?php

for ($i = 1; $i < $argc; $i++)
{
    $ip = $argv[$i];
    list($pat, $fn, $pat2) = whois365($ip);
    $str = file_get_contents($fn);
    //file_put_contents('axc', $str);

    if (preg_match($pat, $str, $match))
    {
        $name = $match[1];
    }
    else if (preg_match($pat2, $str, $match))
    {
        $name = $match[1];
    }
    echo $ip . ':' . $name . "\n";
}
echo "finished!!!\n";

function whois365($ip)
{
    $pat = "|OrgName:\s*([^<]*)<br />|";
    $pat2 = "|mail:\s*([^<]*)<br />|";
    $fn = 'http://www.whois365.com/en/ip/' . $ip;
    return array($pat, $fn, $pat2);
}

function whatmyip()
{
    $pat = "|<tr><td class='bold'> IP Owner: </td><td class='bold'><img[^>]*> *<a[^>]*>([^<]*)</a></td></tr>|";
    $fn = 'http://whatmyip.co/info/whois/' . $ip;
    return array($pat, $fn);
}

