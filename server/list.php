<?php
header("content-type:text/html;charset=utf8");
$con = mysqli_connect("localhost","root","root","test");
mysqli_query($con,"set names utf8");
$res = mysqli_query($con,"select * from scenics");
$arr = [];
while ($row = mysqli_fetch_assoc($res)) {
    $arr[] = $row;
}
echo json_encode($arr);
?>