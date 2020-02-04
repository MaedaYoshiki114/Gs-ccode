// ページが読み込まれたら実行
// window.onload = function() {

//準備 変数宣言
let chek = 0;
let rd = 1;
let scr = 0;
let scr_rea = 0;
let scr_nezu = 0;
let life = 2;
let clear = 0;
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
//roopは変更する枚数 yakuは変更する役の名前
function tyuusen(roop, yaku) {
  //変更する枚数分繰り返す
  for (let i = 0; i < roop; i++) {
    chek = 1; //チェックをリセット
    //ランダム
    let kuji = Math.floor(Math.random() * 12);
    // console.log(kuji);
    //チェックが入るまで繰り返す
    while (chek) {
      //ランダムの場所が初期値なら
      if (kago[kuji] == "tizu") {
        kago[kuji] = yaku;
        chek = 0;
      } else if (kuji < 12) {
        kuji++;
      } else {
        kuji = 0;
      }
    }
  }
}

// 関数 めくる
function open() {
  // console.log(kago[target]);
  // console.log(tg_a);
  // 12箇所のマスを見るようにカウントアップしながら繰り返す
  for (let tg_roop = 0; tg_roop < 12; tg_roop++) {
    let tg_a = "#A" + tg_roop; // IDに変換
    $(tg_a).on("click", function() {
      // クリックされたら
      let y = kago[tg_roop]; //クリックされた場所の役を取得
      console.log("y", y); //役を表示nezu,rea,tizu
      if (y === "tizu") {
        $(tg_a).slideUp(10); //元の画像を消す
        $(tg_a).html('<img src="img/tizu.png">'); //tizuの画像に切り替え
        $(tg_a).slideDown(500); //tizuの画像表示
        return y; //役を渡して強制終了
      } else if (y === "rea") {
        $(tg_a).slideUp(10);
        $(tg_a).html('<img src="img/rea.png" />');
        $(tg_a).slideDown(500);
        return y;
      } else if (y == "nezu") {
        $(tg_a).slideUp(10);
        $(tg_a).html('<img src="img/nezu.png" />');
        $(tg_a).slideDown(500);
        return y;
      }
    });
  }
}

//関数 スコア計算
function scr_ch(scr_tg) {
  if (tefuda[scr_tg] == "tizu") {
    scr = scr + 10;
    $("#scr").html(scr);
  } else if (tefuda[scr_tg] == "rea") {
    scr = scr + 30;
    scr_rea++;
    $("#scr").html(scr);
  } else if (tefuda[scr_tg] == "nezu") {
    scr_nezu++;
  }
}

// 準備 ネズミとレア割り当て
tyuusen(3, "nezu"); //ネズミを3枚配置
tyuusen(4, "rea"); //レアを4枚配置
// console.log(kago);

// アクション 5回めくる
// 1回目
//1枚目の手札を持っていなかったら
if (tefuda[0] == null) {
  //クリックでカードをめくる手札に追加
  tefuda[0] = open();
  //1枚目の手札表示tizu,rea,nezu
  console.log("手札0", tefuda[0]);
  //スコア計算
  scr_ch(0);
  // 2回目
} else if (tefuda[1] == null) {
  tefuda[1] = open(tg_roop);
  console.log("手札1", tefuda[1]);
  scr_ch(1);
  // 3回目
} else if (tefuda[2] == null) {
  tefuda[2] = open(tg_roop);
  console.log("手札2", tefuda[2]);
  scr_ch(2);
  // 4回目
} else if (tefuda[3] == null) {
  tefuda[3] = open(tg_roop);
  console.log("手札3", tefuda[3]);
  scr_ch(3);
  // 5回目
} else if (tefuda[4] == null) {
  tefuda[4] = open(tg_roop);
  console.log("手札4", tefuda[4]);
  scr_ch(4);
  //終了 リザルト画面表示
} else if (tefuda[4] != null) {
  clear = 1;
  $(".rst").show(1000);
}

//スコア計算
if (4 <= scr_rea) {
  scr = scr + 50;
  $("#scr").html(scr);
}
if (2 <= scr_nezu) {
  life--;
}
if (clear == 1 && scr_nezu == 0) {
  scr = scr + 20;
}
// };
