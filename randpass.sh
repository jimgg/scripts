#!/Users/jim/Local/php/bin/php -q
<?php

$t = 0;
if ($argc > 1)
{
    $t = $argv[1];
}
suggestPassword($t);

# ABCDEFGHJKLMNPQRSTUVWYXZ/abcdefghjklmnpqrstuvwxyz/

function suggestPassword($t) {
    // restrict the password to just letters and numbers to avoid problems:
    // "editors and viewers regard the password as multiple words and
    // things like double click no longer work"
    if (0 == $t)
    {
        $pwchars = "abcdefhjmnpqrstuvwxyz23456789!@#$%^&(){}[]<>+-*/=,.;?ABCDEFGHJKLMNPQRSTUVWYXZ";
    }
    else if (2 == $t)
    {
        //$pwchars = "abcdefhjmnpqrstuvwxyz23456789ABCDEFGHJKLMNPQRSTUVWYXZ";
        $pwchars = "abcdefhjmnpqrstuvwxyz23456789";
    }
    else
    {
        $pwchars = "abcdefhjmnpqrstuvwxyz23456789ABCDEFGHJKLMNPQRSTUVWYXZ";
    }
    $passwordlength = 16;    // do we want that to be dynamic?  no, keep it simple :)
    $passwd = '';

    for ( $i = 0; $i < $passwordlength; $i++ ) {
        $passwd .= substr($pwchars, rand(0, strlen($pwchars) - 1), 1);
    }
    echo "$passwd\n";
}
