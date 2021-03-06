// フェードイン
$("#kidou").fadeIn(1000);
// ナビの上にマウスが乗ったら
$(".navi").hover(
  function() {
    console.log("IN");
  },
  function() {
    console.log("OUT");
  }
);

// スムーススクロール
$(function() {
  $('a[href^="#"]').click(function() {
    var speed = 500;
    var href = $(this).attr("href");
    var target = $(href == "#" || href == "" ? "html" : href);
    var position = target.offset().top;
    $("html, body").animate({ scrollTop: position }, speed, "swing");
    return false;
  });
});

// topに戻る
$(function() {
  var pagetop = $("#page_top");
  // ボタン非表示
  pagetop.hide();
  // 100px スクロールしたらボタン表示
  $(window).scroll(function() {
    if ($(this).scrollTop() > 100) {
      pagetop.fadeIn();
    } else {
      pagetop.fadeOut();
    }
  });
  pagetop.click(function() {
    $("body, html").animate({ scrollTop: 0 }, 500);
    return false;
  });
});
