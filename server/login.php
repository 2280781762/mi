<?php
header("content-type:text/html;charset=utf8");
//接受数据
$username = $_POST["username"];
$password = $_POST["password"];
//连接数据库
$con = mysqli_connect("localhost","root","root","test");
mysqli_query($con,"set names utf8");
$sql = "select * from user where username='$username'";
$res = mysqli_query($con,$sql);
$row = mysqli_fetch_assoc($res);
if($row){
    $sql = "select * from user where username='$username' and password='$password'";
    $res = mysqli_query($con,$sql);
    $row = mysqli_fetch_assoc($res);
    if($row){
        $arr = [
            "msg" => "登录成功",
            "status" => 200
        ];
    }else {
        $arr = [
            "msg" => "密码错误",
            "status" => 4
        ];
    }
}else {
    $arr = [
        "msg" => "用户未找到",
        "status" => 3
    ];
}
echo json_encode($arr);
?>