import Foundation

let travelTourismCards: [Card] = [
    Card(id: "travel_01", japaneseWord: "温泉", reading: "おんせん", englishTranslation: "hot spring",
         tabooWords: [
            TabooWord(word: "湯", reading: "ゆ", translation: "hot water"),
            TabooWord(word: "リラックス", reading: "リラックス", translation: "relax"),
            TabooWord(word: "旅館", reading: "りょかん", translation: "inn"),
            TabooWord(word: "体", reading: "からだ", translation: "body"),
         ], topic: .travelAndTourism),

    Card(id: "travel_02", japaneseWord: "神社", reading: "じんじゃ", englishTranslation: "shrine",
         tabooWords: [
            TabooWord(word: "鳥居", reading: "とりい", translation: "torii gate"),
            TabooWord(word: "祈る", reading: "いのる", translation: "pray"),
            TabooWord(word: "神様", reading: "かみさま", translation: "deity"),
            TabooWord(word: "お守り", reading: "おまもり", translation: "charm"),
         ], topic: .travelAndTourism),

    Card(id: "travel_03", japaneseWord: "お寺", reading: "おてら", englishTranslation: "temple",
         tabooWords: [
            TabooWord(word: "仏", reading: "ほとけ", translation: "Buddha"),
            TabooWord(word: "鐘", reading: "かね", translation: "bell"),
            TabooWord(word: "祈る", reading: "いのる", translation: "pray"),
            TabooWord(word: "古い", reading: "ふるい", translation: "old"),
         ], topic: .travelAndTourism),

    Card(id: "travel_04", japaneseWord: "新幹線", reading: "しんかんせん", englishTranslation: "bullet train",
         tabooWords: [
            TabooWord(word: "速い", reading: "はやい", translation: "fast"),
            TabooWord(word: "電車", reading: "でんしゃ", translation: "train"),
            TabooWord(word: "乗る", reading: "のる", translation: "ride"),
            TabooWord(word: "座席", reading: "ざせき", translation: "seat"),
         ], topic: .travelAndTourism),

    Card(id: "travel_05", japaneseWord: "旅館", reading: "りょかん", englishTranslation: "ryokan",
         tabooWords: [
            TabooWord(word: "温泉", reading: "おんせん", translation: "hot spring"),
            TabooWord(word: "和室", reading: "わしつ", translation: "Japanese room"),
            TabooWord(word: "布団", reading: "ふとん", translation: "futon"),
            TabooWord(word: "畳", reading: "たたみ", translation: "tatami"),
         ], topic: .travelAndTourism),

    Card(id: "travel_06", japaneseWord: "祭り", reading: "まつり", englishTranslation: "festival",
         tabooWords: [
            TabooWord(word: "屋台", reading: "やたい", translation: "food stall"),
            TabooWord(word: "神社", reading: "じんじゃ", translation: "shrine"),
            TabooWord(word: "浴衣", reading: "ゆかた", translation: "yukata"),
            TabooWord(word: "夏", reading: "なつ", translation: "summer"),
         ], topic: .travelAndTourism),

    Card(id: "travel_07", japaneseWord: "花火", reading: "はなび", englishTranslation: "fireworks",
         tabooWords: [
            TabooWord(word: "夏", reading: "なつ", translation: "summer"),
            TabooWord(word: "空", reading: "そら", translation: "sky"),
            TabooWord(word: "音", reading: "おと", translation: "sound"),
            TabooWord(word: "祭り", reading: "まつり", translation: "festival"),
         ], topic: .travelAndTourism),

    Card(id: "travel_08", japaneseWord: "花見", reading: "はなみ", englishTranslation: "cherry blossom viewing",
         tabooWords: [
            TabooWord(word: "桜", reading: "さくら", translation: "cherry blossom"),
            TabooWord(word: "春", reading: "はる", translation: "spring"),
            TabooWord(word: "公園", reading: "こうえん", translation: "park"),
            TabooWord(word: "お酒", reading: "おさけ", translation: "alcohol"),
         ], topic: .travelAndTourism),

    Card(id: "travel_09", japaneseWord: "富士山", reading: "ふじさん", englishTranslation: "Mt. Fuji",
         tabooWords: [
            TabooWord(word: "山", reading: "やま", translation: "mountain"),
            TabooWord(word: "雪", reading: "ゆき", translation: "snow"),
            TabooWord(word: "高い", reading: "たかい", translation: "tall"),
            TabooWord(word: "登る", reading: "のぼる", translation: "climb"),
         ], topic: .travelAndTourism),

    Card(id: "travel_10", japaneseWord: "鳥居", reading: "とりい", englishTranslation: "torii gate",
         tabooWords: [
            TabooWord(word: "神社", reading: "じんじゃ", translation: "shrine"),
            TabooWord(word: "赤い", reading: "あかい", translation: "red"),
            TabooWord(word: "入口", reading: "いりぐち", translation: "entrance"),
            TabooWord(word: "日本", reading: "にほん", translation: "Japan"),
         ], topic: .travelAndTourism),

    Card(id: "travel_11", japaneseWord: "浴衣", reading: "ゆかた", englishTranslation: "yukata",
         tabooWords: [
            TabooWord(word: "着物", reading: "きもの", translation: "kimono"),
            TabooWord(word: "祭り", reading: "まつり", translation: "festival"),
            TabooWord(word: "夏", reading: "なつ", translation: "summer"),
            TabooWord(word: "着る", reading: "きる", translation: "wear"),
         ], topic: .travelAndTourism),

    Card(id: "travel_12", japaneseWord: "着物", reading: "きもの", englishTranslation: "kimono",
         tabooWords: [
            TabooWord(word: "着る", reading: "きる", translation: "wear"),
            TabooWord(word: "伝統", reading: "でんとう", translation: "tradition"),
            TabooWord(word: "帯", reading: "おび", translation: "sash / obi"),
            TabooWord(word: "日本", reading: "にほん", translation: "Japan"),
         ], topic: .travelAndTourism),

    Card(id: "travel_13", japaneseWord: "滝", reading: "たき", englishTranslation: "waterfall",
         tabooWords: [
            TabooWord(word: "水", reading: "みず", translation: "water"),
            TabooWord(word: "山", reading: "やま", translation: "mountain"),
            TabooWord(word: "流れる", reading: "ながれる", translation: "flow"),
            TabooWord(word: "音", reading: "おと", translation: "sound"),
         ], topic: .travelAndTourism),

    Card(id: "travel_14", japaneseWord: "城", reading: "しろ", englishTranslation: "castle",
         tabooWords: [
            TabooWord(word: "古い", reading: "ふるい", translation: "old"),
            TabooWord(word: "歴史", reading: "れきし", translation: "history"),
            TabooWord(word: "高い", reading: "たかい", translation: "tall"),
            TabooWord(word: "武士", reading: "ぶし", translation: "samurai"),
         ], topic: .travelAndTourism),

    Card(id: "travel_15", japaneseWord: "紅葉", reading: "こうよう", englishTranslation: "autumn leaves",
         tabooWords: [
            TabooWord(word: "秋", reading: "あき", translation: "autumn"),
            TabooWord(word: "赤い", reading: "あかい", translation: "red"),
            TabooWord(word: "山", reading: "やま", translation: "mountain"),
            TabooWord(word: "公園", reading: "こうえん", translation: "park"),
         ], topic: .travelAndTourism),

    Card(id: "travel_16", japaneseWord: "屋台", reading: "やたい", englishTranslation: "food stall",
         tabooWords: [
            TabooWord(word: "祭り", reading: "まつり", translation: "festival"),
            TabooWord(word: "食べ物", reading: "たべもの", translation: "food"),
            TabooWord(word: "夜", reading: "よる", translation: "night"),
            TabooWord(word: "外", reading: "そと", translation: "outside"),
         ], topic: .travelAndTourism),

    Card(id: "travel_17", japaneseWord: "畳", reading: "たたみ", englishTranslation: "tatami mat",
         tabooWords: [
            TabooWord(word: "和室", reading: "わしつ", translation: "Japanese room"),
            TabooWord(word: "旅館", reading: "りょかん", translation: "inn"),
            TabooWord(word: "床", reading: "ゆか", translation: "floor"),
            TabooWord(word: "日本", reading: "にほん", translation: "Japan"),
         ], topic: .travelAndTourism),

    Card(id: "travel_18", japaneseWord: "お守り", reading: "おまもり", englishTranslation: "lucky charm",
         tabooWords: [
            TabooWord(word: "神社", reading: "じんじゃ", translation: "shrine"),
            TabooWord(word: "願い", reading: "ねがい", translation: "wish"),
            TabooWord(word: "買う", reading: "かう", translation: "buy"),
            TabooWord(word: "守る", reading: "まもる", translation: "protect"),
         ], topic: .travelAndTourism),

    Card(id: "travel_19", japaneseWord: "竹林", reading: "ちくりん", englishTranslation: "bamboo forest",
         tabooWords: [
            TabooWord(word: "竹", reading: "たけ", translation: "bamboo"),
            TabooWord(word: "緑", reading: "みどり", translation: "green"),
            TabooWord(word: "歩く", reading: "あるく", translation: "walk"),
            TabooWord(word: "自然", reading: "しぜん", translation: "nature"),
         ], topic: .travelAndTourism),

    Card(id: "travel_20", japaneseWord: "日本酒", reading: "にほんしゅ", englishTranslation: "sake",
         tabooWords: [
            TabooWord(word: "お酒", reading: "おさけ", translation: "alcohol"),
            TabooWord(word: "米", reading: "こめ", translation: "rice"),
            TabooWord(word: "飲む", reading: "のむ", translation: "drink"),
            TabooWord(word: "日本", reading: "にほん", translation: "Japan"),
         ], topic: .travelAndTourism),

    Card(id: "travel_21", japaneseWord: "抹茶", reading: "まっちゃ", englishTranslation: "matcha",
         tabooWords: [
            TabooWord(word: "お茶", reading: "おちゃ", translation: "tea"),
            TabooWord(word: "緑", reading: "みどり", translation: "green"),
            TabooWord(word: "苦い", reading: "にがい", translation: "bitter"),
            TabooWord(word: "茶道", reading: "さどう", translation: "tea ceremony"),
         ], topic: .travelAndTourism),

    Card(id: "travel_22", japaneseWord: "相撲観戦", reading: "すもうかんせん", englishTranslation: "watching sumo",
         tabooWords: [
            TabooWord(word: "力士", reading: "りきし", translation: "wrestler"),
            TabooWord(word: "土俵", reading: "どひょう", translation: "ring"),
            TabooWord(word: "押す", reading: "おす", translation: "push"),
            TabooWord(word: "試合", reading: "しあい", translation: "match"),
         ], topic: .travelAndTourism),

    Card(id: "travel_23", japaneseWord: "カプセルホテル", reading: nil, englishTranslation: "capsule hotel",
         tabooWords: [
            TabooWord(word: "小さい", reading: "ちいさい", translation: "small"),
            TabooWord(word: "泊まる", reading: "とまる", translation: "stay"),
            TabooWord(word: "安い", reading: "やすい", translation: "cheap"),
            TabooWord(word: "一人", reading: "ひとり", translation: "alone"),
         ], topic: .travelAndTourism),

    Card(id: "travel_24", japaneseWord: "武士", reading: "ぶし", englishTranslation: "samurai",
         tabooWords: [
            TabooWord(word: "刀", reading: "かたな", translation: "sword"),
            TabooWord(word: "鎧", reading: "よろい", translation: "armour"),
            TabooWord(word: "歴史", reading: "れきし", translation: "history"),
            TabooWord(word: "戦う", reading: "たたかう", translation: "fight"),
         ], topic: .travelAndTourism),

    Card(id: "travel_25", japaneseWord: "忍者", reading: "にんじゃ", englishTranslation: "ninja",
         tabooWords: [
            TabooWord(word: "隠れる", reading: "かくれる", translation: "hide"),
            TabooWord(word: "黒い", reading: "くろい", translation: "black"),
            TabooWord(word: "手裏剣", reading: "しゅりけん", translation: "shuriken"),
            TabooWord(word: "速い", reading: "はやい", translation: "fast"),
         ], topic: .travelAndTourism),

    Card(id: "travel_26", japaneseWord: "沖縄", reading: "おきなわ", englishTranslation: "Okinawa",
         tabooWords: [
            TabooWord(word: "島", reading: "しま", translation: "island"),
            TabooWord(word: "海", reading: "うみ", translation: "sea"),
            TabooWord(word: "暖かい", reading: "あたたかい", translation: "warm"),
            TabooWord(word: "南", reading: "みなみ", translation: "south"),
         ], topic: .travelAndTourism),

    Card(id: "travel_27", japaneseWord: "北海道", reading: "ほっかいどう", englishTranslation: "Hokkaido",
         tabooWords: [
            TabooWord(word: "雪", reading: "ゆき", translation: "snow"),
            TabooWord(word: "寒い", reading: "さむい", translation: "cold"),
            TabooWord(word: "広い", reading: "ひろい", translation: "vast"),
            TabooWord(word: "北", reading: "きた", translation: "north"),
         ], topic: .travelAndTourism),

    Card(id: "travel_28", japaneseWord: "京都", reading: "きょうと", englishTranslation: "Kyoto",
         tabooWords: [
            TabooWord(word: "寺", reading: "てら", translation: "temple"),
            TabooWord(word: "古い", reading: "ふるい", translation: "old"),
            TabooWord(word: "伝統", reading: "でんとう", translation: "tradition"),
            TabooWord(word: "舞妓", reading: "まいこ", translation: "maiko"),
         ], topic: .travelAndTourism),

    Card(id: "travel_29", japaneseWord: "奈良", reading: "なら", englishTranslation: "Nara",
         tabooWords: [
            TabooWord(word: "鹿", reading: "しか", translation: "deer"),
            TabooWord(word: "寺", reading: "てら", translation: "temple"),
            TabooWord(word: "古い", reading: "ふるい", translation: "old"),
            TabooWord(word: "公園", reading: "こうえん", translation: "park"),
         ], topic: .travelAndTourism),

    Card(id: "travel_30", japaneseWord: "渋谷", reading: "しぶや", englishTranslation: "Shibuya",
         tabooWords: [
            TabooWord(word: "交差点", reading: "こうさてん", translation: "crossing"),
            TabooWord(word: "人が多い", reading: "ひとがおおい", translation: "crowded"),
            TabooWord(word: "買い物", reading: "かいもの", translation: "shopping"),
            TabooWord(word: "東京", reading: "とうきょう", translation: "Tokyo"),
         ], topic: .travelAndTourism),

    Card(id: "travel_31", japaneseWord: "桜", reading: "さくら", englishTranslation: "cherry blossom",
         tabooWords: [
            TabooWord(word: "春", reading: "はる", translation: "spring"),
            TabooWord(word: "ピンク", reading: "ピンク", translation: "pink"),
            TabooWord(word: "木", reading: "き", translation: "tree"),
            TabooWord(word: "花見", reading: "はなみ", translation: "hanami"),
         ], topic: .travelAndTourism),

    Card(id: "travel_32", japaneseWord: "鹿", reading: "しか", englishTranslation: "deer",
         tabooWords: [
            TabooWord(word: "奈良", reading: "なら", translation: "Nara"),
            TabooWord(word: "動物", reading: "どうぶつ", translation: "animal"),
            TabooWord(word: "角", reading: "つの", translation: "antlers"),
            TabooWord(word: "公園", reading: "こうえん", translation: "park"),
         ], topic: .travelAndTourism),

    Card(id: "travel_33", japaneseWord: "お土産", reading: "おみやげ", englishTranslation: "souvenir",
         tabooWords: [
            TabooWord(word: "買う", reading: "かう", translation: "buy"),
            TabooWord(word: "旅行", reading: "りょこう", translation: "travel"),
            TabooWord(word: "プレゼント", reading: "プレゼント", translation: "present"),
            TabooWord(word: "家族", reading: "かぞく", translation: "family"),
         ], topic: .travelAndTourism),

    Card(id: "travel_34", japaneseWord: "観光", reading: "かんこう", englishTranslation: "sightseeing",
         tabooWords: [
            TabooWord(word: "旅行", reading: "りょこう", translation: "travel"),
            TabooWord(word: "写真", reading: "しゃしん", translation: "photo"),
            TabooWord(word: "見る", reading: "みる", translation: "see"),
            TabooWord(word: "観光地", reading: "かんこうち", translation: "tourist spot"),
         ], topic: .travelAndTourism),

    Card(id: "travel_35", japaneseWord: "海", reading: "うみ", englishTranslation: "beach / sea",
         tabooWords: [
            TabooWord(word: "水", reading: "みず", translation: "water"),
            TabooWord(word: "波", reading: "なみ", translation: "wave"),
            TabooWord(word: "砂", reading: "すな", translation: "sand"),
            TabooWord(word: "夏", reading: "なつ", translation: "summer"),
         ], topic: .travelAndTourism),

    Card(id: "travel_36", japaneseWord: "空港", reading: "くうこう", englishTranslation: "airport",
         tabooWords: [
            TabooWord(word: "飛行機", reading: "ひこうき", translation: "airplane"),
            TabooWord(word: "出発", reading: "しゅっぱつ", translation: "departure"),
            TabooWord(word: "チェックイン", reading: "チェックイン", translation: "check-in"),
            TabooWord(word: "ターミナル", reading: "ターミナル", translation: "terminal"),
         ], topic: .travelAndTourism),

    Card(id: "travel_37", japaneseWord: "ホテル", reading: nil, englishTranslation: "hotel",
         tabooWords: [
            TabooWord(word: "泊まる", reading: "とまる", translation: "stay"),
            TabooWord(word: "部屋", reading: "へや", translation: "room"),
            TabooWord(word: "ベッド", reading: "ベッド", translation: "bed"),
            TabooWord(word: "フロント", reading: "フロント", translation: "front desk"),
         ], topic: .travelAndTourism),

    Card(id: "travel_38", japaneseWord: "パスポート", reading: nil, englishTranslation: "passport",
         tabooWords: [
            TabooWord(word: "国", reading: "くに", translation: "country"),
            TabooWord(word: "写真", reading: "しゃしん", translation: "photo"),
            TabooWord(word: "入国", reading: "にゅうこく", translation: "entry"),
            TabooWord(word: "旅行", reading: "りょこう", translation: "travel"),
         ], topic: .travelAndTourism),

    Card(id: "travel_39", japaneseWord: "秋葉原", reading: "あきはばら", englishTranslation: "Akihabara",
         tabooWords: [
            TabooWord(word: "電気", reading: "でんき", translation: "electronics"),
            TabooWord(word: "アニメ", reading: "アニメ", translation: "anime"),
            TabooWord(word: "東京", reading: "とうきょう", translation: "Tokyo"),
            TabooWord(word: "ゲーム", reading: "ゲーム", translation: "games"),
         ], topic: .travelAndTourism),

    Card(id: "travel_40", japaneseWord: "メイドカフェ", reading: nil, englishTranslation: "maid cafe",
         tabooWords: [
            TabooWord(word: "制服", reading: "せいふく", translation: "uniform"),
            TabooWord(word: "カフェ", reading: "カフェ", translation: "cafe"),
            TabooWord(word: "秋葉原", reading: "あきはばら", translation: "Akihabara"),
            TabooWord(word: "かわいい", reading: "かわいい", translation: "cute"),
         ], topic: .travelAndTourism),

    Card(id: "travel_41", japaneseWord: "ホストクラブ", reading: nil, englishTranslation: "host club",
         tabooWords: [
            TabooWord(word: "夜", reading: "よる", translation: "night"),
            TabooWord(word: "男", reading: "おとこ", translation: "men"),
            TabooWord(word: "お酒", reading: "おさけ", translation: "alcohol"),
            TabooWord(word: "話す", reading: "はなす", translation: "talk / chat"),
         ], topic: .travelAndTourism),

    Card(id: "travel_42", japaneseWord: "ラブホテル", reading: nil, englishTranslation: "love hotel",
         tabooWords: [
            TabooWord(word: "部屋", reading: "へや", translation: "room"),
            TabooWord(word: "カップル", reading: "カップル", translation: "couple"),
            TabooWord(word: "夜", reading: "よる", translation: "night"),
            TabooWord(word: "時間", reading: "じかん", translation: "by the hour"),
         ], topic: .travelAndTourism),

    Card(id: "travel_43", japaneseWord: "ゴールデン街", reading: "ゴールデンがい", englishTranslation: "Golden Gai",
         tabooWords: [
            TabooWord(word: "バー", reading: "バー", translation: "bar"),
            TabooWord(word: "新宿", reading: "しんじゅく", translation: "Shinjuku"),
            TabooWord(word: "小さい", reading: "ちいさい", translation: "small"),
            TabooWord(word: "夜", reading: "よる", translation: "night"),
         ], topic: .travelAndTourism),

    Card(id: "travel_44", japaneseWord: "パチンコ", reading: nil, englishTranslation: "pachinko",
         tabooWords: [
            TabooWord(word: "玉", reading: "たま", translation: "ball"),
            TabooWord(word: "音", reading: "おと", translation: "noise"),
            TabooWord(word: "ギャンブル", reading: "ギャンブル", translation: "gambling"),
            TabooWord(word: "機械", reading: "きかい", translation: "machine"),
         ], topic: .travelAndTourism),

    Card(id: "travel_45", japaneseWord: "猫カフェ", reading: "ねこカフェ", englishTranslation: "cat cafe",
         tabooWords: [
            TabooWord(word: "猫", reading: "ねこ", translation: "cat"),
            TabooWord(word: "カフェ", reading: "カフェ", translation: "cafe"),
            TabooWord(word: "触る", reading: "さわる", translation: "pet / touch"),
            TabooWord(word: "かわいい", reading: "かわいい", translation: "cute"),
         ], topic: .travelAndTourism),

    Card(id: "travel_46", japaneseWord: "ガチャポン", reading: nil, englishTranslation: "capsule toy machine",
         tabooWords: [
            TabooWord(word: "カプセル", reading: "カプセル", translation: "capsule"),
            TabooWord(word: "おもちゃ", reading: "おもちゃ", translation: "toy"),
            TabooWord(word: "機械", reading: "きかい", translation: "machine"),
            TabooWord(word: "回す", reading: "まわす", translation: "turn / spin"),
         ], topic: .travelAndTourism),

    Card(id: "travel_47", japaneseWord: "ゲームセンター", reading: nil, englishTranslation: "arcade",
         tabooWords: [
            TabooWord(word: "ゲーム", reading: "ゲーム", translation: "game"),
            TabooWord(word: "コイン", reading: "コイン", translation: "coin"),
            TabooWord(word: "遊ぶ", reading: "あそぶ", translation: "play"),
            TabooWord(word: "機械", reading: "きかい", translation: "machine"),
         ], topic: .travelAndTourism),

    Card(id: "travel_48", japaneseWord: "回転寿司", reading: "かいてんずし", englishTranslation: "conveyor belt sushi",
         tabooWords: [
            TabooWord(word: "寿司", reading: "すし", translation: "sushi"),
            TabooWord(word: "回る", reading: "まわる", translation: "go around"),
            TabooWord(word: "皿", reading: "さら", translation: "plate"),
            TabooWord(word: "食べる", reading: "たべる", translation: "eat"),
         ], topic: .travelAndTourism),

    Card(id: "travel_49", japaneseWord: "コンビニ", reading: nil, englishTranslation: "convenience store",
         tabooWords: [
            TabooWord(word: "買う", reading: "かう", translation: "buy"),
            TabooWord(word: "食べ物", reading: "たべもの", translation: "food"),
            TabooWord(word: "24時間", reading: "にじゅうよじかん", translation: "24 hours"),
            TabooWord(word: "店", reading: "みせ", translation: "shop"),
         ], topic: .travelAndTourism),

    Card(id: "travel_50", japaneseWord: "歌舞伎", reading: "かぶき", englishTranslation: "kabuki theatre",
         tabooWords: [
            TabooWord(word: "化粧", reading: "けしょう", translation: "makeup"),
            TabooWord(word: "男", reading: "おとこ", translation: "men"),
            TabooWord(word: "演技", reading: "えんぎ", translation: "performance"),
            TabooWord(word: "伝統", reading: "でんとう", translation: "tradition"),
         ], topic: .travelAndTourism),
]
