$email = "a.b@c.com"
$email -like "*.*@*.*"

$email = "a.b@c.com"
if ($email -like "*.*@*.*" ) {"Valid"} else {"InValid"}
