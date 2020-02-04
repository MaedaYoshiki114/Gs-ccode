// ページが読み込まれたら実行
// window.onload = function() {

//準備 変数宣言
let chek = 0;
let rd = 1;
let scr = 0;
let tefuda = [null, null, null, null, null];
let kago = [
  "tizu",
  "tizu",
  "tizu",
  "tizu",
  "tizu",
  "tizu",
  "tizu",
  "tizu",
  "tizu",
  "tizu",
  "tizu",
  "tizu"
];

// 準備 関数用意
// マス割り当て
function tyuusen(roop, yaku) {
  for (let i = 0; i < roop; i++) {
    chek = 0;
    let kuji = Math.ceil(Math.random() * 12);
    // console.log(kuji);
    while (chek == 0) {
      if (kago[kuji] == "tizu") {
        kago[kuji] = yaku;
        chek = 1;
      } else if (kuji < 12) {
        kuji++;
      } else {
        kuji = 0;
      }
    }
  }
}

// 関数 めくる
function open(target, co) {
  let tg_a = "#A" + target;
  // console.log(kago[target]);
  // console.log(tg_a);
  $(tg_a).on("click", function() {
    let count_A = 1;
    var id = $(this).attr("id");
    alert(id);
    if (kago[target] === "tizu") {
      $(tg_a).slideUp(10);
      $(tg_a).html('<img src="img/tizu.png">');
      $(tg_a).slideDown(500);
      return count_A;
    } else if (kago[target] === "rea") {
      $(tg_a).slideUp(10);
      $(tg_a).html('<img src="img/rea.png" />');
      $(tg_a).slideDown(500);
      return count_A;
    } else if (kago[target] == "nezu") {
      $(tg_a).slideUp(10);
      $(tg_a).html('<img src="img/nezu.png" />');
      $(tg_a).slideDown(500);
      return count_A;
    }
  });
}

// 準備 ネズミとレア割り当て
tyuusen(3, "nezu"); //ネズミを3枚配置
tyuusen(4, "rea"); //レアを4枚配置
// console.log(kago);

// アクション めくる
for (let tg_roop = 0; tg_roop < 12; tg_roop++) {
  let count_A = open(tg_roop, 1);
}
// 5回めくる
for (let count = 1; count <= 5; count++) {
  if (count <= 4) {
  } else $(".res").show("slow");
}

// };
