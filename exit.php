<? $_SESSION['access']="no";
session_start();
session_unset();
session_destroy();
header("Location: call_login.php");
exit;
?>
