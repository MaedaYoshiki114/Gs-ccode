$(function() {
  $("#btn").click(function() {
    var act = $("#ctime").val();
    var showt = $("#interval").val();
    var long = $("#long").val();
    let count1 = 0;
    let count2 = 0;
    for (var i = 0; i < 3; i++) {
      if (count1 == 0) {
        $("body").css({
          "background-color": "led" // 2ハイフン形式で指定
        });
        m = getFinishTime(parseInt(act));
        function getFinishTime(e) {
          var datetime = new Date();
          return datetime.setTime(datetime.getTime() + 60 * e * 1000);
        }
        countDown();
        count1 = 1;
      } else if (count1 == 1) {
        $("body").css({
          "background-color": "Lime" // 2ハイフン形式で指定
        });
        m = getFinishTime(parseInt(showt));
        function getFinishTime(e) {
          var datetime = new Date();
          return datetime.setTime(datetime.getTime() + 60 * e * 1000);
        }
        countDown();
        count1 = 0;
      }
    }
    $("body").css({
      "background-color": "Lime" // 2ハイフン形式で指定
    });
    m = getFinishTime(parseInt(long));
    function getFinishTime(e) {
      var datetime = new Date();
      return datetime.setTime(datetime.getTime() + 60 * e * 1000);
    }
    countDown();
    count2++;
  });
});

function countDown() {
  var startTime = new Date();
  var endTime = new Date(m);
  console.log(endTime);
  var diff = endTime - startTime;
  var times = 24 * 60 * 60 * 1000;
  var day = Math.floor(diff / times);
  var hour = Math.floor((diff % times) / (60 * 60 * 1000));
  var min = Math.floor((diff % times) / (60 * 1000)) % 60;
  var sec = (Math.floor((diff % times) / 1000) % 60) % 60;
  var ms = Math.floor((diff % times) / 10) % 100;
  if (diff > 0) {
    $("#Timer").text(day + "日" + hour + "時間" + min + "分" + sec + "秒" + ms);
    setTimeout("countDown()", 10);
  } else {
    $("#Timer").text("終了しました！");
  }
}
