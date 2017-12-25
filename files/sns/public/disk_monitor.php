<?php
header("Content-Type:text/plain");

$free  = intval( disk_free_space('/')/1024/1024 );
$total = intval( disk_total_space('/')/1024/1024 );
echo "Available: $free MB\n";
echo "Total: $total MB\n";
?>
