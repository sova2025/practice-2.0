<?php
$link=false;
function openDB()
{
    global $link;
    $link=mysqli_connect("localhost", "root", "", "practice");
    mysqli_query($link, "SET NAMES UTF8");
}
function closeDB()
{
    global $link;
    mysqli_close($link);
}
function getInfo()
{
    global $link;
    openDB();
    $res=mysqli_query($link, "SELECT b.book_name, a.author_name, g.genre_name,
    b.book_year, b.book_condition
    FROM books b JOIN authors a ON b.author_id=a.author_id
    JOIN genres g ON b.genre_id=g.genre_id");
    closeDB();
    return mysqli_fetch_all($res, MYSQLI_ASSOC);
}
?>