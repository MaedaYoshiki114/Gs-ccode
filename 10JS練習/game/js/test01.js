// ページが読み込まれたら実行
// window.onload = function() {
// let roop, yaku;
let chek = 0;
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

function tyuusen(roop, yaku) {
  for (let i = 0; i < roop; i++) {
    chek = 0;
    let kuji = Math.ceil(Math.random() * 12);
    console.log(kuji);
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

tyuusen(3, "nezu");
tyuusen(4, "rea");
console.log(kago);

function open(target) {
  let tg_a = "#A" + target;
  console.log(kago[target]);
  console.log(tg_a);
  $(tg_a).on("click", function() {
    if (kago[target] === "tizu") {
      $(tg_a).html('<img src="img/tizu.png">');
    } else if (kago[target] === "rea") {
      $(tg_a).html('<img src="img/rea.png" />');
    } else if (kago[target] == "nezu") {
      $(tg_a).html('<img src="img/nezu.png" />');
    }
  });
}
for (let tg_roop = 0; tg_roop < 12; tg_roop++) {
  open(tg_roop);
}

// };
