<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>php課題</title>
    <link rel="stylesheet" href="css/reset.css" />
    <link rel="stylesheet" href="css/style.css" />
  </head>
  <body>
  <h1>じゃんけん</h1>
<?php
session_start();
$en_setlog =$_SESSION["en_setlog"];
$en_tefuda =$_SESSION["en_tefuda"];
$count =$_SESSION["count"];
    // リセット処理
    if (isset($_POST["reset"])) {
      $reset = htmlspecialchars($_POST["reset"], ENT_QUOTES, "UTF-8");
      if($reset=="リセット"){
        $_POST["reset"]=null;
        $en_tefuda=["rock","rock","scissors","scissors","paper","paper"];
        $count=4;
        $en_setlog=[];
        echo "リセット";
      }
      else if($reset=="next"){
        $en=rand(0,$count);
        $en_set=$en_tefuda[$en];
        $split = array_splice($en_tefuda, $en, $en);
        $en_setlog[] = $split;
        $count--;
      }
      else{
        $en_tefuda=["rock","rock","scissors","scissors","paper","paper"];
        $count=4;
        $en=rand(0,$count);
        $en_set=null;
        $en_sute=null;
        $reset=null;
        $en_setlog=[];
      }
    }
    $_SESSION["en_setlog"]=$en_setlog;
    $_SESSION["en_tefuda"]=$en_tefuda;
    $_SESSION["count"]=$count;
    echo "ランダム";
    echo $en,"<br>";
    echo "役";
    echo $en_set,"<br>";
    echo "手札<br>";
    echo $en_tefuda[0],"<br>";
    echo $en_tefuda[1],"<br>";
    echo $en_tefuda[2],"<br>";
    echo $en_tefuda[3],"<br>";
    echo $en_tefuda[4],"<br>";
    echo $en_tefuda[5],"<br>";
//     echo "ログ";
//     echo $en_setlog[0],"<br>";
//     echo $en_setlog[1],"<br>";
//     echo $en_setlog[2],"<br>";
//     echo $en_setlog[3],"<br>";
//     echo $en_setlog[4],"<br>";
//     echo $en_setlog[5],"<br>";
// ?>
    <!-- リセットボタン（デバッグ） -->
    <form method="POST" action="">
      <input id = "reset" type="submit" value="リセット" name="reset">
      <input id = "next" type="submit" value="next" name="reset">
    </form>

    <!-- jquery -->
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
    <!-- js -->
    <!-- <script src='js/app.js'></script> -->
  </body>
</html>
