-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: final
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `tag1` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `up_day` date NOT NULL,
  `fast_day` date NOT NULL,
  `count` int(8) NOT NULL DEFAULT 0,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `tag2` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag3` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag4` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag5` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag6` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag7` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag8` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` VALUES (1,'チーズアカデミー','CheeseAcademy.jpg','html','2020-01-12','2020-01-24',0,'第一回目の課題でHTMLとCSS第二回目の課題でjsやCSSアニメーションを使ってより豪華にしました。<br>\r\n自分が経験していた組み込み制御とは違ったライアウトなどの考えが難しく大変でした。<br>\r\n<h4>アピールポイント<br></h4>\r\n基本的な表示アニメーションの他にやTOPへ戻るボタンの追加やスムーススクロールを実装\r\n仕様書を忠実に再現<br>\r\n<h4>苦労したところ<br></h4>\r\nレイアウトが崩れてしまう<br>\r\n→flex　containerやjustify などを巧みに使って解決<br>\r\naタグにmargin autoが効かない<br>\r\n→flex　blocで解決<br>','css','js','アニメーション','Webサイト',NULL,NULL,NULL,'01cheeseacademy'),(2,'チーズ集め','cheesegame.jpg','html','2020-02-01','2020-02-01',0,'第二回のサイトを豪華にするという\r\n課題で製作途中だった物を完成させました。\r\n<br>\r\nこのゲームはネズミに食べられていない上質なチーズを沢山集めるということを目的としたスコアアタックゲームです。<br>\r\n\r\n<h4>アピールポイント<br></h4>\r\nローカルホストとJSONを使用した、周回プレイ、スコアアタック、ランキング機能<br>\r\nボタンや、一部画像など自作したこだわりのデザイン<br>\r\n分かりやすいルール説明付き<br>\r\n<h4>苦労した点<br></h4>\r\nループする処理や条件分岐が複雑で流れが分からない<br>\r\n→デバッグツールのステップ実行で解決<br>\r\nランキングをfirebaseで実装！？<br>\r\n→クラッシュや原因不明のバグでお手上げ','css','js','ローカルストレージ','ゲーム','スコアアタック','JSON','ランキング','02cheesegame'),(3,'LINE風チャットアプリ','chat.jpg','html','2020-02-08','2020-02-08',0,'第四回目の課題　当初は前回のチーズ集めのランキングをfirebaseを使って実装しようと思いましたが、多数のバグによって撃沈<br>\r\n急遽方針を変えたため実質1日で仕上げました。<br>\r\n<h4>アピールポイント<br></h4>\r\nLINE風にするために下から上にメッセージが流れる<br>\r\nメッセージ部分のみスクロール<br>\r\nスッキリとしたレイアウト<br>\r\n<h4>苦労した点<br></h4>\r\n自分と相手のレイアウトが混在してしまう<br>\r\n→ユーザー名とメッセージをdivで囲みそれを奇数と偶数で分けたcssを記述して解決','css','チャットアプリ','firebase',NULL,NULL,NULL,NULL,'03chat'),(4,'カイジ風じゃんけん','jyanken.jpg','html','2020-02-16','2020-02-16',0,'第五回目の課題　じゃんけんと言ったらコレ\r\nカイジに出てきたカードゲーム方式のじゃんけんに挑戦しました。<br>\r\njsと違った文法や仕様に困惑して非常に大変でした。<br>\r\nどうやらこの動作をさせるのにPHPは不向きでrarabelを使った方が良いみたいですｗ<br>\r\n<h4>アピールポイント<br></h4>\r\n最新の使った手札が見えるから簡単<br>\r\nHTMLの書き換え以外の処理はすべてPHP\r\nJSONを使ってjsと連携<br>\r\n1画面で終わるからサクサクプレイ<br>\r\n<h4>苦労した点<br></h4>\r\n相手の手札に一度使ったはずの手札が残っている<br>\r\n→配列の抽出と消去を使って解決<br>\r\n毎ターン更新が必要だから変数が引き継げない<br>\r\n→sessionやJSONを使って解決','css','PHP','ゲーム','js',NULL,NULL,NULL,'04jyanken'),(5,'モンスト（モーニング・ストライキ）','monst.jpg','html','2020-02-16','2020-02-16',0,'第六回目の課題　データベースを使ったオリジナリティあるものを作りたいと思ってガチャガチャのシュミレーションアプリを作りました。<br>\r\n予想外のSQLの仕様で労力が跳ね上がり、期限ギリギリの提出になってしました。<br>\r\n\r\n<h4>アピールポイント<br></h4>\r\nレア度の設定ができて排出立の調節が簡単にできる<br>\r\nログイン機能搭載（もちろん不正ログイン対策も）<br>\r\n隠しコマンドで管理者画面に移動<br>\r\n一部画像は自作する拘ったデザイン<br>\r\nサクサクプレイ可能なレイアウト<br>\r\n<h4>苦労した点<br></h4>\r\nSQLで変数を使ってクエリを指定できない\r\n動的SQLを使えば解決できる事は分かったがどのように書けばいいのか分かりませんでした。<br>\r\nかなりの量をつぎはぎで修正しているのでメンテナンス性やセキュリティに難あり','css','PHP','ゲーム','js','アニメーション','データベース','隠しコマンド有り','05monst');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-08  2:45:35
