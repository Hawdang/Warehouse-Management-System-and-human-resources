<?php
require_once ("admin/config.php");
session_start(); 
$error = '';
if (isset($_POST['submit'])) {
if (empty($_POST['id']) || empty($_POST['password'])|| empty($_POST['type'])) {
$error = "id or Password or type is invalid";
}
else{
    
$id = $_POST['id'];
$type = $_POST['type'];
$password = $_POST['password'];
$query = "SELECT id, password, type from admin where id=? AND password=? AND type=? ";
    
if($type=="admin" && $password ){

$stmt = $link->prepare($query);
$stmt->bind_param("sss", $id, $password,$type);
$stmt->execute();
$stmt->bind_result($id, $password,$type);
$stmt->store_result();
if($stmt->fetch()) 
$_SESSION['login_user'] = $type; 
header("location: admin/profile.php"); 
 } 
    
   elseif($type=="hr"  && $password){

$stmt = $link->prepare($query);
$stmt->bind_param("sss", $id, $password,$type);
$stmt->execute();
$stmt->bind_result($id, $password,$type);
$stmt->store_result();
if($stmt->fetch()) 
$_SESSION['login_user'] = $type; 
header("location: hr/profile.php"); 
 }
   elseif($type=="warehouse" && $password==true){

$stmt = $link->prepare($query);
$stmt->bind_param("sss", $id, $password,$type);
$stmt->execute();
$stmt->bind_result($id, $password,$type);
$stmt->store_result();
if($stmt->fetch()) 
$_SESSION['login_user'] = $type; 
header("location: warehouse/profile.php"); 
 }
    else{
        
    }
}
}
?>