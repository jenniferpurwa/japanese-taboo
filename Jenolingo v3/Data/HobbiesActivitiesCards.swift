import Foundation

let hobbiesActivitiesCards: [Card] = [
    Card(id: "hobby_01", japaneseWord: "読書", reading: "どくしょ", englishTranslation: "reading",
         tabooWords: [
            TabooWord(word: "本", reading: "ほん", translation: "book"),
            TabooWord(word: "ページ", reading: "ページ", translation: "page"),
            TabooWord(word: "図書館", reading: "としょかん", translation: "library"),
            TabooWord(word: "物語", reading: "ものがたり", translation: "story"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_02", japaneseWord: "水泳", reading: "すいえい", englishTranslation: "swimming",
         tabooWords: [
            TabooWord(word: "プール", reading: "プール", translation: "pool"),
            TabooWord(word: "水", reading: "みず", translation: "water"),
            TabooWord(word: "泳ぐ", reading: "およぐ", translation: "swim"),
            TabooWord(word: "海", reading: "うみ", translation: "sea"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_03", japaneseWord: "料理", reading: "りょうり", englishTranslation: "cooking",
         tabooWords: [
            TabooWord(word: "キッチン", reading: "キッチン", translation: "kitchen"),
            TabooWord(word: "食材", reading: "しょくざい", translation: "ingredients"),
            TabooWord(word: "作る", reading: "つくる", translation: "make"),
            TabooWord(word: "食べ物", reading: "たべもの", translation: "food"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_04", japaneseWord: "絵を描く", reading: "えをかく", englishTranslation: "drawing / painting",
         tabooWords: [
            TabooWord(word: "紙", reading: "かみ", translation: "paper"),
            TabooWord(word: "色", reading: "いろ", translation: "colour"),
            TabooWord(word: "筆", reading: "ふで", translation: "brush"),
            TabooWord(word: "アート", reading: "アート", translation: "art"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_05", japaneseWord: "音楽", reading: "おんがく", englishTranslation: "music",
         tabooWords: [
            TabooWord(word: "歌", reading: "うた", translation: "song"),
            TabooWord(word: "楽器", reading: "がっき", translation: "instrument"),
            TabooWord(word: "リズム", reading: "リズム", translation: "rhythm"),
            TabooWord(word: "演奏", reading: "えんそう", translation: "perform"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_06", japaneseWord: "サッカー", reading: nil, englishTranslation: "soccer",
         tabooWords: [
            TabooWord(word: "ボール", reading: "ボール", translation: "ball"),
            TabooWord(word: "ゴール", reading: "ゴール", translation: "goal"),
            TabooWord(word: "チーム", reading: "チーム", translation: "team"),
            TabooWord(word: "蹴る", reading: "ける", translation: "kick"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_07", japaneseWord: "野球", reading: "やきゅう", englishTranslation: "baseball",
         tabooWords: [
            TabooWord(word: "バット", reading: "バット", translation: "bat"),
            TabooWord(word: "ボール", reading: "ボール", translation: "ball"),
            TabooWord(word: "投げる", reading: "なげる", translation: "throw"),
            TabooWord(word: "チーム", reading: "チーム", translation: "team"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_08", japaneseWord: "写真", reading: "しゃしん", englishTranslation: "photography",
         tabooWords: [
            TabooWord(word: "カメラ", reading: "カメラ", translation: "camera"),
            TabooWord(word: "撮る", reading: "とる", translation: "take / shoot"),
            TabooWord(word: "景色", reading: "けしき", translation: "scenery"),
            TabooWord(word: "思い出", reading: "おもいで", translation: "memory"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_09", japaneseWord: "ゲーム", reading: nil, englishTranslation: "gaming",
         tabooWords: [
            TabooWord(word: "コントローラー", reading: "コントローラー", translation: "controller"),
            TabooWord(word: "画面", reading: "がめん", translation: "screen"),
            TabooWord(word: "遊ぶ", reading: "あそぶ", translation: "play"),
            TabooWord(word: "キャラクター", reading: "キャラクター", translation: "character"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_10", japaneseWord: "ハイキング", reading: nil, englishTranslation: "hiking",
         tabooWords: [
            TabooWord(word: "山", reading: "やま", translation: "mountain"),
            TabooWord(word: "歩く", reading: "あるく", translation: "walk"),
            TabooWord(word: "自然", reading: "しぜん", translation: "nature"),
            TabooWord(word: "道", reading: "みち", translation: "path"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_11", japaneseWord: "ダンス", reading: nil, englishTranslation: "dancing",
         tabooWords: [
            TabooWord(word: "音楽", reading: "おんがく", translation: "music"),
            TabooWord(word: "動く", reading: "うごく", translation: "move"),
            TabooWord(word: "リズム", reading: "リズム", translation: "rhythm"),
            TabooWord(word: "踊る", reading: "おどる", translation: "dance"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_12", japaneseWord: "歌う", reading: "うたう", englishTranslation: "singing",
         tabooWords: [
            TabooWord(word: "声", reading: "こえ", translation: "voice"),
            TabooWord(word: "音楽", reading: "おんがく", translation: "music"),
            TabooWord(word: "マイク", reading: "マイク", translation: "microphone"),
            TabooWord(word: "歌詞", reading: "かし", translation: "lyrics"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_13", japaneseWord: "釣り", reading: "つり", englishTranslation: "fishing",
         tabooWords: [
            TabooWord(word: "魚", reading: "さかな", translation: "fish"),
            TabooWord(word: "川", reading: "かわ", translation: "river"),
            TabooWord(word: "竿", reading: "さお", translation: "rod"),
            TabooWord(word: "海", reading: "うみ", translation: "sea"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_14", japaneseWord: "サイクリング", reading: nil, englishTranslation: "cycling",
         tabooWords: [
            TabooWord(word: "自転車", reading: "じてんしゃ", translation: "bicycle"),
            TabooWord(word: "道", reading: "みち", translation: "road"),
            TabooWord(word: "ペダル", reading: "ペダル", translation: "pedal"),
            TabooWord(word: "速い", reading: "はやい", translation: "fast"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_15", japaneseWord: "園芸", reading: "えんげい", englishTranslation: "gardening",
         tabooWords: [
            TabooWord(word: "植物", reading: "しょくぶつ", translation: "plant"),
            TabooWord(word: "土", reading: "つち", translation: "soil"),
            TabooWord(word: "花", reading: "はな", translation: "flower"),
            TabooWord(word: "水やり", reading: "みずやり", translation: "watering"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_16", japaneseWord: "ヨガ", reading: nil, englishTranslation: "yoga",
         tabooWords: [
            TabooWord(word: "体", reading: "からだ", translation: "body"),
            TabooWord(word: "伸ばす", reading: "のばす", translation: "stretch"),
            TabooWord(word: "呼吸", reading: "こきゅう", translation: "breathing"),
            TabooWord(word: "リラックス", reading: "リラックス", translation: "relax"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_17", japaneseWord: "茶道", reading: "さどう", englishTranslation: "tea ceremony",
         tabooWords: [
            TabooWord(word: "お茶", reading: "おちゃ", translation: "tea"),
            TabooWord(word: "和室", reading: "わしつ", translation: "Japanese room"),
            TabooWord(word: "作法", reading: "さほう", translation: "etiquette"),
            TabooWord(word: "抹茶", reading: "まっちゃ", translation: "matcha"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_18", japaneseWord: "書道", reading: "しょどう", englishTranslation: "calligraphy",
         tabooWords: [
            TabooWord(word: "筆", reading: "ふで", translation: "brush"),
            TabooWord(word: "墨", reading: "すみ", translation: "ink"),
            TabooWord(word: "紙", reading: "かみ", translation: "paper"),
            TabooWord(word: "文字", reading: "もじ", translation: "characters"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_19", japaneseWord: "折り紙", reading: "おりがみ", englishTranslation: "origami",
         tabooWords: [
            TabooWord(word: "紙", reading: "かみ", translation: "paper"),
            TabooWord(word: "折る", reading: "おる", translation: "fold"),
            TabooWord(word: "鶴", reading: "つる", translation: "crane"),
            TabooWord(word: "形", reading: "かたち", translation: "shape"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_20", japaneseWord: "生け花", reading: "いけばな", englishTranslation: "flower arranging",
         tabooWords: [
            TabooWord(word: "花", reading: "はな", translation: "flower"),
            TabooWord(word: "花瓶", reading: "かびん", translation: "vase"),
            TabooWord(word: "切る", reading: "きる", translation: "cut"),
            TabooWord(word: "飾る", reading: "かざる", translation: "decorate"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_21", japaneseWord: "柔道", reading: "じゅうどう", englishTranslation: "judo",
         tabooWords: [
            TabooWord(word: "投げる", reading: "なげる", translation: "throw"),
            TabooWord(word: "道場", reading: "どうじょう", translation: "dojo"),
            TabooWord(word: "帯", reading: "おび", translation: "belt"),
            TabooWord(word: "格闘", reading: "かくとう", translation: "martial arts"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_22", japaneseWord: "空手", reading: "からて", englishTranslation: "karate",
         tabooWords: [
            TabooWord(word: "蹴る", reading: "ける", translation: "kick"),
            TabooWord(word: "パンチ", reading: "パンチ", translation: "punch"),
            TabooWord(word: "道場", reading: "どうじょう", translation: "dojo"),
            TabooWord(word: "帯", reading: "おび", translation: "belt"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_23", japaneseWord: "相撲", reading: "すもう", englishTranslation: "sumo",
         tabooWords: [
            TabooWord(word: "土俵", reading: "どひょう", translation: "ring"),
            TabooWord(word: "力士", reading: "りきし", translation: "wrestler"),
            TabooWord(word: "押す", reading: "おす", translation: "push"),
            TabooWord(word: "太い", reading: "ふとい", translation: "large / heavy"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_24", japaneseWord: "テニス", reading: nil, englishTranslation: "tennis",
         tabooWords: [
            TabooWord(word: "ラケット", reading: "ラケット", translation: "racket"),
            TabooWord(word: "ボール", reading: "ボール", translation: "ball"),
            TabooWord(word: "コート", reading: "コート", translation: "court"),
            TabooWord(word: "打つ", reading: "うつ", translation: "hit"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_25", japaneseWord: "バスケットボール", reading: nil, englishTranslation: "basketball",
         tabooWords: [
            TabooWord(word: "ボール", reading: "ボール", translation: "ball"),
            TabooWord(word: "コート", reading: "コート", translation: "court"),
            TabooWord(word: "シュート", reading: "シュート", translation: "shoot"),
            TabooWord(word: "チーム", reading: "チーム", translation: "team"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_26", japaneseWord: "卓球", reading: "たっきゅう", englishTranslation: "table tennis",
         tabooWords: [
            TabooWord(word: "ラケット", reading: "ラケット", translation: "paddle"),
            TabooWord(word: "テーブル", reading: "テーブル", translation: "table"),
            TabooWord(word: "ボール", reading: "ボール", translation: "ball"),
            TabooWord(word: "打つ", reading: "うつ", translation: "hit"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_27", japaneseWord: "バドミントン", reading: nil, englishTranslation: "badminton",
         tabooWords: [
            TabooWord(word: "シャトル", reading: "シャトル", translation: "shuttlecock"),
            TabooWord(word: "ラケット", reading: "ラケット", translation: "racket"),
            TabooWord(word: "打つ", reading: "うつ", translation: "hit"),
            TabooWord(word: "ネット", reading: "ネット", translation: "net"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_28", japaneseWord: "囲碁", reading: "いご", englishTranslation: "Go (board game)",
         tabooWords: [
            TabooWord(word: "石", reading: "いし", translation: "stone"),
            TabooWord(word: "盤", reading: "ばん", translation: "board"),
            TabooWord(word: "黒", reading: "くろ", translation: "black"),
            TabooWord(word: "白", reading: "しろ", translation: "white"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_29", japaneseWord: "将棋", reading: "しょうぎ", englishTranslation: "shogi",
         tabooWords: [
            TabooWord(word: "駒", reading: "こま", translation: "piece"),
            TabooWord(word: "盤", reading: "ばん", translation: "board"),
            TabooWord(word: "王", reading: "おう", translation: "king"),
            TabooWord(word: "日本", reading: "にほん", translation: "Japan"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_30", japaneseWord: "カラオケ", reading: nil, englishTranslation: "karaoke",
         tabooWords: [
            TabooWord(word: "歌う", reading: "うたう", translation: "sing"),
            TabooWord(word: "マイク", reading: "マイク", translation: "microphone"),
            TabooWord(word: "画面", reading: "がめん", translation: "screen"),
            TabooWord(word: "歌詞", reading: "かし", translation: "lyrics"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_31", japaneseWord: "キャンプ", reading: nil, englishTranslation: "camping",
         tabooWords: [
            TabooWord(word: "テント", reading: "テント", translation: "tent"),
            TabooWord(word: "自然", reading: "しぜん", translation: "nature"),
            TabooWord(word: "火", reading: "ひ", translation: "fire"),
            TabooWord(word: "山", reading: "やま", translation: "mountain"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_32", japaneseWord: "スキー", reading: nil, englishTranslation: "skiing",
         tabooWords: [
            TabooWord(word: "雪", reading: "ゆき", translation: "snow"),
            TabooWord(word: "山", reading: "やま", translation: "mountain"),
            TabooWord(word: "滑る", reading: "すべる", translation: "slide"),
            TabooWord(word: "冬", reading: "ふゆ", translation: "winter"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_33", japaneseWord: "サーフィン", reading: nil, englishTranslation: "surfing",
         tabooWords: [
            TabooWord(word: "波", reading: "なみ", translation: "wave"),
            TabooWord(word: "海", reading: "うみ", translation: "ocean"),
            TabooWord(word: "ボード", reading: "ボード", translation: "board"),
            TabooWord(word: "夏", reading: "なつ", translation: "summer"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_34", japaneseWord: "ランニング", reading: nil, englishTranslation: "running",
         tabooWords: [
            TabooWord(word: "走る", reading: "はしる", translation: "run"),
            TabooWord(word: "道", reading: "みち", translation: "road"),
            TabooWord(word: "体", reading: "からだ", translation: "body"),
            TabooWord(word: "速い", reading: "はやい", translation: "fast"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_35", japaneseWord: "映画", reading: "えいが", englishTranslation: "watching movies",
         tabooWords: [
            TabooWord(word: "映画館", reading: "えいがかん", translation: "cinema"),
            TabooWord(word: "画面", reading: "がめん", translation: "screen"),
            TabooWord(word: "俳優", reading: "はいゆう", translation: "actor"),
            TabooWord(word: "物語", reading: "ものがたり", translation: "story"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_36", japaneseWord: "居酒屋", reading: "いざかや", englishTranslation: "izakaya / Japanese pub",
         tabooWords: [
            TabooWord(word: "お酒", reading: "おさけ", translation: "alcohol"),
            TabooWord(word: "飲む", reading: "のむ", translation: "drink"),
            TabooWord(word: "夜", reading: "よる", translation: "night"),
            TabooWord(word: "友達", reading: "ともだち", translation: "friends"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_37", japaneseWord: "コンサート", reading: nil, englishTranslation: "concert",
         tabooWords: [
            TabooWord(word: "音楽", reading: "おんがく", translation: "music"),
            TabooWord(word: "歌手", reading: "かしゅ", translation: "singer"),
            TabooWord(word: "舞台", reading: "ぶたい", translation: "stage"),
            TabooWord(word: "観客", reading: "かんきゃく", translation: "audience"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_38", japaneseWord: "漫画", reading: "まんが", englishTranslation: "reading manga",
         tabooWords: [
            TabooWord(word: "絵", reading: "え", translation: "drawing"),
            TabooWord(word: "キャラクター", reading: "キャラクター", translation: "character"),
            TabooWord(word: "吹き出し", reading: "ふきだし", translation: "speech bubble"),
            TabooWord(word: "話", reading: "はなし", translation: "story"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_39", japaneseWord: "ピアノ", reading: nil, englishTranslation: "piano",
         tabooWords: [
            TabooWord(word: "鍵盤", reading: "けんばん", translation: "keys"),
            TabooWord(word: "弾く", reading: "ひく", translation: "play"),
            TabooWord(word: "音楽", reading: "おんがく", translation: "music"),
            TabooWord(word: "指", reading: "ゆび", translation: "fingers"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_40", japaneseWord: "ギター", reading: nil, englishTranslation: "guitar",
         tabooWords: [
            TabooWord(word: "弦", reading: "げん", translation: "strings"),
            TabooWord(word: "弾く", reading: "ひく", translation: "play"),
            TabooWord(word: "バンド", reading: "バンド", translation: "band"),
            TabooWord(word: "音楽", reading: "おんがく", translation: "music"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_41", japaneseWord: "剣道", reading: "けんどう", englishTranslation: "kendo",
         tabooWords: [
            TabooWord(word: "竹刀", reading: "しない", translation: "bamboo sword"),
            TabooWord(word: "道場", reading: "どうじょう", translation: "dojo"),
            TabooWord(word: "防具", reading: "ぼうぐ", translation: "armour"),
            TabooWord(word: "戦う", reading: "たたかう", translation: "fight"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_42", japaneseWord: "ボクシング", reading: nil, englishTranslation: "boxing",
         tabooWords: [
            TabooWord(word: "パンチ", reading: "パンチ", translation: "punch"),
            TabooWord(word: "リング", reading: "リング", translation: "ring"),
            TabooWord(word: "グローブ", reading: "グローブ", translation: "gloves"),
            TabooWord(word: "戦う", reading: "たたかう", translation: "fight"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_43", japaneseWord: "スケートボード", reading: nil, englishTranslation: "skateboarding",
         tabooWords: [
            TabooWord(word: "板", reading: "いた", translation: "board"),
            TabooWord(word: "乗る", reading: "のる", translation: "ride"),
            TabooWord(word: "技", reading: "わざ", translation: "trick"),
            TabooWord(word: "道", reading: "みち", translation: "road"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_44", japaneseWord: "俳句", reading: "はいく", englishTranslation: "haiku writing",
         tabooWords: [
            TabooWord(word: "詩", reading: "し", translation: "poem"),
            TabooWord(word: "季節", reading: "きせつ", translation: "season"),
            TabooWord(word: "言葉", reading: "ことば", translation: "words"),
            TabooWord(word: "短い", reading: "みじかい", translation: "short"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_45", japaneseWord: "旅行", reading: "りょこう", englishTranslation: "travelling",
         tabooWords: [
            TabooWord(word: "飛行機", reading: "ひこうき", translation: "airplane"),
            TabooWord(word: "国", reading: "くに", translation: "country"),
            TabooWord(word: "荷物", reading: "にもつ", translation: "luggage"),
            TabooWord(word: "観光", reading: "かんこう", translation: "sightseeing"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_46", japaneseWord: "ボードゲーム", reading: nil, englishTranslation: "board games",
         tabooWords: [
            TabooWord(word: "盤", reading: "ばん", translation: "board"),
            TabooWord(word: "ルール", reading: "ルール", translation: "rules"),
            TabooWord(word: "コマ", reading: "コマ", translation: "piece"),
            TabooWord(word: "遊ぶ", reading: "あそぶ", translation: "play"),
         ], topic: .hobbiesAndActivities),

    Card(id: "hobby_47", japaneseWord: "ジム", reading: nil, englishTranslation: "going to the gym",
         tabooWords: [
            TabooWord(word: "体", reading: "からだ", translation: "body"),
            TabooWord(word: "筋肉", reading: "きんにく", translation: "muscle"),
            TabooWord(word: "運動", reading: "うんどう", translation: "exercise"),
            TabooWord(word: "機械", reading: "きかい", translation: "machine"),
         ], topic: .hobbiesAndActivities),
]
