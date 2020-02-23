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
  <ul class = "en_tefuda tefuda">
    <li id = en_tefuda0><img src="img/ura.jpg" alt=""></li>
    <li id = en_tefuda1><img src="img/ura.jpg" alt=""></li>
    <li id = en_tefuda2><img src="img/ura.jpg" alt=""></li>
    <li id = en_tefuda3><img src="img/ura.jpg" alt=""></li>
    <li id = en_tefuda4><img src="img/ura.jpg" alt=""></li>
    <li id = en_tefuda5><img src="img/ura.jpg" alt=""></li>
  </ul>
  
    <?php
    $my =null;
    $en=rand(0,5);
    $my_sute=null;
    $en_sute=null;


    if (isset($_POST["set"])) {
      $my = htmlspecialchars($_POST["set"], ENT_QUOTES, "UTF-8");
      switch ($my) {
          case "0": echo "rock";echo $my;
          $my_setlog[] = $my;
          break;
          case "1": echo "rock";
          $my_setlog[] = $my;break;
          case "2": echo "scissors"; 
          $my_setlog[] = $my;break;
          case "3": echo "scissors"; 
          $my_setlog[] = $my;break;
          case "4": echo "paper"; 
          $my_setlog[] = $my;break;
          case "5": echo "paper"; 
          $my_setlog[] = $my;break;
          default:  echo ""; exit;
      }
  }
    // phpのコードを記述

    echo  '<div class="center">';
    echo    '<div class="em_sute sute"><p></p></div>';
    echo    '<div class="battle_w">';
    echo      '<dl class="seiseki">';
    echo        '<dt>勝ち</dt>';
    echo        '<dd id = "kati">0</dd>';
    echo        '<dt>負け</dt>';
    echo        '<dd id = "make">0</dd>';
    echo      '</dl>';

    echo      '<ul class = "battle">';
    echo        '<li id = "bat_my"><img src="img/ura.jpg" alt=""></li>';
    echo        '<li id = "bat_en"><img src="img/ura.jpg" alt=""></li>';
    echo      '</ul>';
    echo    '</div>';
    echo    '<div class="my_sute sute"><p><img src="" alt=""></p></div>';
    echo  '</div>';

    // json変換
    $set_json = json_encode( $my );
    $my_setlog_json = json_encode( $my_setlog );
    ?>
  
    <form method="POST" action="" class = "my_tefuda tefuda">
      <input id = "my_tefuda0" class = "rock" type="submit" value="0" name="set">
      <input id = "my_tefuda1" class = "rock" type="submit" value="1" name="set">
      <input id = "my_tefuda2" class = "scissors" type="submit" value="2" name="set">
      <input id = "my_tefuda3" class = "scissors" type="submit" value="3" name="set">
      <input id = "my_tefuda4" class = "paper" type="submit" value="4" name="set">
      <input id = "my_tefuda5" class = "paper" type="submit" value="5" name="set">
    </form>
  <!-- jsへ受け渡し -->
<script type="text/javascript">
  var my = JSON.parse('<?php echo $set_json; ?>');
  var my_setlog = JSON.parse('<?php echo $my_setlog_json; ?>');
</script>
    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- js -->
    <script src='js/app.js'></script>
  </body>
</html>
