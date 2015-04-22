<?php
function delete($file) {
//chmod($file,0777);
if (is_dir($file)) {
$handle = opendir($file);
while($filename = readdir($handle)) {
if ($filename != "." && $filename != "..") {
delete($file."/".$filename);
}
}
closedir($handle);
rmdir($file);
} else {
if (is_file($file)){unlink($file);}
}
}
?>
