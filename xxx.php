<? //--------------------------------------------------------------------
    function size($path= "./"){

            $path_stack[] = $path;
            $size = 0;

            do {
                $path   = array_shift($path_stack);
                 if($path!='./\users'){
               $handle = opendir($path);
                while(false !== ($file = readdir($handle))) {
                    if($file != '.' && $file != '..' && is_readable($path . DIRECTORY_SEPARATOR . $file)) {
                        if(is_dir($path . DIRECTORY_SEPARATOR . $file)){ $path_stack[] = $path . DIRECTORY_SEPARATOR . $file; }
                        $size += filesize($path . DIRECTORY_SEPARATOR . $file);
                    }
                }
                closedir($handle);     }
            } while (count($path_stack)> 0);


        return $size;
    }

    //echo "...".size();
    ?>