// ページが読み込まれたら実行
// window.onload = function() {

//準備 変数宣言
let chek = 0;
let rd = 1;
let scr = 0;
let scr_rea = 0;
let scr_nezu = 0;
let scr_tizu = 0;
let life = 2;
let clear = 0;
let tg_t1;
let tg_c;
var json_r_d;
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

//ランキングデータ取得
// ローカルストレージにデータ確認
if (localStorage.getItem("json_r_d")) {
  //データ取得
  json_r_d = localStorage.getItem("json_r_d");
  //JSONデータをオブジェクトに変換
  rank_date = JSON.parse(json_r_d);
}
//データがなかったら初期値保存
else {
  //ランキングデータ保存
  var rank_date = [
    { rd: "1", scr: "500" },
    { rd: "1", scr: "400" },
    { rd: "1", scr: "300" },
    { rd: "1", scr: "200" },
    { rd: "1", scr: "100" }
  ];
  // オブジェクトをJSONに変換
  json_r_d = JSON.stringify(rank_date);
  // ローカルストレージに保存
  localStorage.setItem("json_r_d", json_r_d);
}

// 関数 ランキング表示
// rk_tg_aはクラスの名前 rk_tg_bは順位
function runking(rk_tg_a, rk_tg_b) {
  let rk_tg3 = rk_tg_b + 1;
  let rk_tg1 = "." + rk_tg_a + " .rd_" + rk_tg3 + "_s";
  let rk_tg2 = "." + rk_tg_a + " .scr_" + rk_tg3 + "_s";
  $(rk_tg1).html(rank_date[rk_tg_b].rd);
  $(rk_tg2).html(rank_date[rk_tg_b].scr);
}

if (localStorage.getItem("rd")) {
  rd = localStorage.getItem("rd");
  $(".rd").html(rd);
}

// 準備 関数用意
// マス割り当て
//roopは変更する枚数 yakuは変更する役の名前
function tyuusen(roop, yaku) {
  //変更する枚数分繰り返す
  for (let i = 0; i < roop; i++) {
    chek = 1; //チェックをリセット
    //ランダム
    let kuji = Math.floor(Math.random() * 12);
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
function view(tv) {
  tg_t1 = "#T" + tv;
  console.log("ターゲットID", tg_t1);
  scr_ch(tv); //スコア計算
  if (tefuda[tv] == "tizu") {
    $(tg_t1).slideUp(10);
    $(tg_t1).html('<img src="img/tizu.png">');
    $(tg_t1).slideDown(500);
  } else if (tefuda[tv] == "rea") {
    $(tg_t1).slideUp(10);
    $(tg_t1).html('<img src="img/rea.png" />');
    $(tg_t1).slideDown(500);
  } else if (tefuda[tv] == "nezu") {
    $(tg_t1).slideUp(10);
    $(tg_t1).html('<img src="img/nezu.png" />');
    $(tg_t1).slideDown(500);
  }
}
//関数 スコア計算
function scr_ch(scr_tg) {
  if (tefuda[scr_tg] == "tizu") {
    scr = scr + 10;
    scr_tizu++;
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

// 準備 ランキング１～5表示
for (let rk_roop = 0; rk_roop <= 4; rk_roop++) {
  runking("rk", rk_roop);
}

//めくる
let count = 0;
// 12箇所のマスを見るようにカウントアップしながら繰り返す
for (let tg_roop = 0; tg_roop < 12; tg_roop++) {
  console.log(tg_roop);
  let tg_a = "#A" + tg_roop; // IDに変換
  $(tg_a).on("click", function() {
    // クリックされたら
    let y = kago[tg_roop]; //クリックされた場所の役を取得
    console.log("y", y); //役を表示nezu,rea,tizu
    if (y === "tizu") {
      $(tg_a).slideUp(10); //元の画像を消す
      $(tg_a).html('<img src="img/tizu.png">'); //tizuの画像に切り替え
      $(tg_a).slideDown(500); //tizuの画像表示
      tefuda[count] = "tizu";
      count++;
      scr_ch(count);
      console.log(tefuda);
      console.log("カウンター", count);
      return y; //役を渡して強制終了
    } else if (y === "rea") {
      $(tg_a).slideUp(10);
      $(tg_a).html('<img src="img/rea.png" />');
      $(tg_a).slideDown(500);
      tefuda[count] = "rea";
      count++;
      console.log(tefuda);
      console.log("カウンター", count);
      return y;
    } else if (y == "nezu") {
      $(tg_a).slideUp(10);
      $(tg_a).html('<img src="img/nezu.png" />');
      $(tg_a).slideDown(500);
      tefuda[count] = "nezu";
      count++;
      console.log(tefuda);
      console.log("カウンター", count);
      return y;
    }
  });
}
// 手札表示+スコア計算

if (count == 1) {
  console.log(1111);
  view(0);
} else if (count == 2) {
  view(1);
  console.log(1111);
} else if (count == 3) {
  view(2);
  console.log(1111);
} else if (count == 4) {
  view(3);
  console.log(1111);
} else if (count == 5) {
  view(4);
  console.log(1111);
}
//5枚目まで埋まったら
if (tefuda[4] != null) {
  clear = 1;
  $(".rst").show(1000);
  if (scr_nezu == 0) {
    scr = scr + 20;
  }
}
//スコア計算
//レアが4枚そろったら+50点
if (4 <= scr_rea) {
  scr = scr + 50;
  $("#scr").html(scr);
}
// ネズミが2枚そろったらライフ-1
if (2 == scr_nezu) {
  life--;
} else if (3 == scr_nezu) {
  life--;
}
if (clear == 1) {
  $("#next_btn").on("click", function() {
    rd++;
    localStorage.setItem("rd_n", rd);
    localStorage.setItem("scr_n", scr);
  });
}
if (life == 0) {
  $(".gameover").fadeIn(1000);
}
// };
