<?php
include "database.php";
$info=getInfo();
?>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="web-design.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Портфолио - Хобби</title>
    </head>
    <body>
        <section>
            <nav class="nav"> 
                <ul> 
                    <li><a href="index.html">Главная</a></li> 
                    <li><a href="skills.html">Скиллы</a></li> 
                    <li><a href="progress.html">Достижения</a></li> 
                    <li><a href="projects.html">Проекты</a></li>
                </ul> 
            </nav> 
            <h1>Хобби</h1>
        </section>
        <section>
            <div class="hobby"> 
                <h2>Изобразительное искусство.</h2>
                <p>Освоенные техники: простой карандаш, акварель, пастель.</p>
                <div class="photos">
                    <img src="pictures/draw1.jpg" alt="" />
                </div>
                <div class="photos">
                    <img src="pictures/draw2.jpg" alt="" />
                </div>
                <div class="photos">
                    <img src="pictures/draw3.jpg" alt="" />
                </div>
                <h2>Литература.</h2>
                <p>Любимые произведения домашней библиотеки:</p>
                <div>
                    <table>
                        <thead><th>Название</th><th>Автор</th><th>Жанр</th><th>Год издания</th><th>Состояние</th></thead>
                        <?php
                        for($i=0; $i<count($info); $i++)
                        {
                            $name =$info[$i]["book_name"];
                            $author=$info[$i]["author_name"];
                            $genre=$info[$i]["genre_name"];
                            $year=$info[$i]["book_year"];
                            $condition=$info[$i]["book_condition"];
                            echo "<tr><td>$name</td><td>$author</td><td>$genre</td><td>$year</td><td>$condition</td></tr>";
                        }
                        ?>
                    </table>
                </div>
            </div>
        </section>
        <footer id="footer">t.me/m.sova</footer>
    </body>
</html>