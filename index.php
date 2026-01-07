<?php
include "include/head.php";
if (isset($_GET["page_id"])) {
    $page_id = $_GET["page_id"];
	
	$pagedir = "p/" . $page_id . ".php";
	if (file_exists($pagedir)) {
    include "p/" . $page_id . ".php";
} else {
    include "include/home.php";
}
} elseif (isset($_GET["p"])) {
    $page_id = $_GET["p"];	
	$pagedir = "p/" . $page_id . ".php";
	if (file_exists($pagedir)) {
    include "p/" . $page_id . ".php";
} else {
    include "include/home.php";
}
} elseif (isset($_GET["paged"])) {
    $page_id = $_GET["paged"];	
	$pagedir = "p/" . $page_id . ".php";
	if (file_exists($pagedir)) {
    include "p/" . $page_id . ".php";
} else {
    include "include/home.php";
}
} elseif (isset($_GET["author"])) {
    $page_id = $_GET["author"];	
	$pagedir = "author/" . $page_id . ".php";
	if (file_exists($pagedir)) {
    include "author/" . $page_id . ".php";
} else {
    include "include/home.php";
}
} elseif (isset($_GET["cat"])) {
    $page_id = $_GET["cat"];	
	$pagedir = "cat/" . $page_id . ".php";
	if (file_exists($pagedir)) {
    include "cat/" . $page_id . ".php";
} else {
    include "include/home.php";
}
	
} else {
	include "include/home.php";
}


include "include/secondary.php";


include "include/footer.php";
?>
