import Foundation

let dailyLifeCards: [Card] = [
    Card(id: "daily_01", japaneseWord: "電車", reading: "でんしゃ", englishTranslation: "train",
         tabooWords: [
            TabooWord(word: "駅", reading: "えき", translation: "station"),
            TabooWord(word: "乗る", reading: "のる", translation: "ride"),
            TabooWord(word: "列車", reading: "れっしゃ", translation: "train (formal)"),
            TabooWord(word: "通勤", reading: "つうきん", translation: "commute"),
         ], topic: .dailyLife),

    Card(id: "daily_02", japaneseWord: "駅", reading: "えき", englishTranslation: "station",
         tabooWords: [
            TabooWord(word: "電車", reading: "でんしゃ", translation: "train"),
            TabooWord(word: "ホーム", reading: "ホーム", translation: "platform"),
            TabooWord(word: "切符", reading: "きっぷ", translation: "ticket"),
            TabooWord(word: "改札", reading: "かいさつ", translation: "gate"),
         ], topic: .dailyLife),

    Card(id: "daily_03", japaneseWord: "バス", reading: nil, englishTranslation: "bus",
         tabooWords: [
            TabooWord(word: "乗る", reading: "のる", translation: "ride"),
            TabooWord(word: "停留所", reading: "ていりゅうじょ", translation: "stop"),
            TabooWord(word: "道", reading: "みち", translation: "road"),
            TabooWord(word: "運転手", reading: "うんてんしゅ", translation: "driver"),
         ], topic: .dailyLife),

    Card(id: "daily_04", japaneseWord: "車", reading: "くるま", englishTranslation: "car",
         tabooWords: [
            TabooWord(word: "運転", reading: "うんてん", translation: "driving"),
            TabooWord(word: "道路", reading: "どうろ", translation: "road"),
            TabooWord(word: "ハンドル", reading: "ハンドル", translation: "steering wheel"),
            TabooWord(word: "エンジン", reading: "エンジン", translation: "engine"),
         ], topic: .dailyLife),

    Card(id: "daily_05", japaneseWord: "自転車", reading: "じてんしゃ", englishTranslation: "bicycle",
         tabooWords: [
            TabooWord(word: "乗る", reading: "のる", translation: "ride"),
            TabooWord(word: "ペダル", reading: "ペダル", translation: "pedal"),
            TabooWord(word: "車輪", reading: "しゃりん", translation: "wheel"),
            TabooWord(word: "道", reading: "みち", translation: "road"),
         ], topic: .dailyLife),

    Card(id: "daily_06", japaneseWord: "仕事", reading: "しごと", englishTranslation: "work",
         tabooWords: [
            TabooWord(word: "会社", reading: "かいしゃ", translation: "company"),
            TabooWord(word: "働く", reading: "はたらく", translation: "work (verb)"),
            TabooWord(word: "上司", reading: "じょうし", translation: "boss"),
            TabooWord(word: "残業", reading: "ざんぎょう", translation: "overtime"),
         ], topic: .dailyLife),

    Card(id: "daily_07", japaneseWord: "学校", reading: "がっこう", englishTranslation: "school",
         tabooWords: [
            TabooWord(word: "生徒", reading: "せいと", translation: "student"),
            TabooWord(word: "先生", reading: "せんせい", translation: "teacher"),
            TabooWord(word: "授業", reading: "じゅぎょう", translation: "class"),
            TabooWord(word: "教室", reading: "きょうしつ", translation: "classroom"),
         ], topic: .dailyLife),

    Card(id: "daily_08", japaneseWord: "先生", reading: "せんせい", englishTranslation: "teacher",
         tabooWords: [
            TabooWord(word: "学校", reading: "がっこう", translation: "school"),
            TabooWord(word: "生徒", reading: "せいと", translation: "student"),
            TabooWord(word: "教える", reading: "おしえる", translation: "teach"),
            TabooWord(word: "授業", reading: "じゅぎょう", translation: "class"),
         ], topic: .dailyLife),

    Card(id: "daily_09", japaneseWord: "友達", reading: "ともだち", englishTranslation: "friend",
         tabooWords: [
            TabooWord(word: "人", reading: "ひと", translation: "person"),
            TabooWord(word: "一緒", reading: "いっしょ", translation: "together"),
            TabooWord(word: "遊ぶ", reading: "あそぶ", translation: "hang out"),
            TabooWord(word: "仲間", reading: "なかま", translation: "companion"),
         ], topic: .dailyLife),

    Card(id: "daily_10", japaneseWord: "家族", reading: "かぞく", englishTranslation: "family",
         tabooWords: [
            TabooWord(word: "母", reading: "はは", translation: "mother"),
            TabooWord(word: "父", reading: "ちち", translation: "father"),
            TabooWord(word: "兄弟", reading: "きょうだい", translation: "siblings"),
            TabooWord(word: "親", reading: "おや", translation: "parent"),
         ], topic: .dailyLife),

    Card(id: "daily_11", japaneseWord: "時間", reading: "じかん", englishTranslation: "time",
         tabooWords: [
            TabooWord(word: "時計", reading: "とけい", translation: "clock"),
            TabooWord(word: "分", reading: "ふん", translation: "minute"),
            TabooWord(word: "時", reading: "じ", translation: "hour"),
            TabooWord(word: "スケジュール", reading: "スケジュール", translation: "schedule"),
         ], topic: .dailyLife),

    Card(id: "daily_12", japaneseWord: "天気", reading: "てんき", englishTranslation: "weather",
         tabooWords: [
            TabooWord(word: "雨", reading: "あめ", translation: "rain"),
            TabooWord(word: "晴れ", reading: "はれ", translation: "sunny"),
            TabooWord(word: "曇り", reading: "くもり", translation: "cloudy"),
            TabooWord(word: "予報", reading: "よほう", translation: "forecast"),
         ], topic: .dailyLife),

    Card(id: "daily_13", japaneseWord: "雨", reading: "あめ", englishTranslation: "rain",
         tabooWords: [
            TabooWord(word: "水", reading: "みず", translation: "water"),
            TabooWord(word: "空", reading: "そら", translation: "sky"),
            TabooWord(word: "濡れる", reading: "ぬれる", translation: "get wet"),
            TabooWord(word: "傘", reading: "かさ", translation: "umbrella"),
         ], topic: .dailyLife),

    Card(id: "daily_14", japaneseWord: "傘", reading: "かさ", englishTranslation: "umbrella",
         tabooWords: [
            TabooWord(word: "持つ", reading: "もつ", translation: "carry"),
            TabooWord(word: "濡れる", reading: "ぬれる", translation: "wet"),
            TabooWord(word: "風", reading: "かぜ", translation: "wind"),
            TabooWord(word: "雨", reading: "あめ", translation: "rain"),
         ], topic: .dailyLife),

    Card(id: "daily_15", japaneseWord: "公園", reading: "こうえん", englishTranslation: "park",
         tabooWords: [
            TabooWord(word: "木", reading: "き", translation: "tree"),
            TabooWord(word: "ベンチ", reading: "ベンチ", translation: "bench"),
            TabooWord(word: "子供", reading: "こども", translation: "child"),
            TabooWord(word: "遊ぶ", reading: "あそぶ", translation: "play"),
         ], topic: .dailyLife),

    Card(id: "daily_16", japaneseWord: "病院", reading: "びょういん", englishTranslation: "hospital",
         tabooWords: [
            TabooWord(word: "医者", reading: "いしゃ", translation: "doctor"),
            TabooWord(word: "病気", reading: "びょうき", translation: "illness"),
            TabooWord(word: "薬", reading: "くすり", translation: "medicine"),
            TabooWord(word: "看護師", reading: "かんごし", translation: "nurse"),
         ], topic: .dailyLife),

    Card(id: "daily_17", japaneseWord: "店", reading: "みせ", englishTranslation: "shop",
         tabooWords: [
            TabooWord(word: "買う", reading: "かう", translation: "buy"),
            TabooWord(word: "売る", reading: "うる", translation: "sell"),
            TabooWord(word: "商品", reading: "しょうひん", translation: "product"),
            TabooWord(word: "レジ", reading: "レジ", translation: "cash register"),
         ], topic: .dailyLife),

    Card(id: "daily_18", japaneseWord: "銀行", reading: "ぎんこう", englishTranslation: "bank",
         tabooWords: [
            TabooWord(word: "お金", reading: "おかね", translation: "money"),
            TabooWord(word: "口座", reading: "こうざ", translation: "account"),
            TabooWord(word: "預ける", reading: "あずける", translation: "deposit"),
            TabooWord(word: "カード", reading: "カード", translation: "card"),
         ], topic: .dailyLife),

    Card(id: "daily_19", japaneseWord: "市場", reading: "いちば", englishTranslation: "market",
         tabooWords: [
            TabooWord(word: "野菜", reading: "やさい", translation: "vegetables"),
            TabooWord(word: "食べ物", reading: "たべもの", translation: "food"),
            TabooWord(word: "売る", reading: "うる", translation: "sell"),
            TabooWord(word: "店", reading: "みせ", translation: "shop"),
         ], topic: .dailyLife),

    Card(id: "daily_20", japaneseWord: "レストラン", reading: nil, englishTranslation: "restaurant",
         tabooWords: [
            TabooWord(word: "食べる", reading: "たべる", translation: "eat"),
            TabooWord(word: "メニュー", reading: "メニュー", translation: "menu"),
            TabooWord(word: "注文", reading: "ちゅうもん", translation: "order"),
            TabooWord(word: "料理", reading: "りょうり", translation: "food"),
         ], topic: .dailyLife),

    Card(id: "daily_21", japaneseWord: "家", reading: "いえ", englishTranslation: "house",
         tabooWords: [
            TabooWord(word: "部屋", reading: "へや", translation: "room"),
            TabooWord(word: "住む", reading: "すむ", translation: "live"),
            TabooWord(word: "ドア", reading: "ドア", translation: "door"),
            TabooWord(word: "家族", reading: "かぞく", translation: "family"),
         ], topic: .dailyLife),

    Card(id: "daily_22", japaneseWord: "部屋", reading: "へや", englishTranslation: "room",
         tabooWords: [
            TabooWord(word: "家", reading: "いえ", translation: "house"),
            TabooWord(word: "ベッド", reading: "ベッド", translation: "bed"),
            TabooWord(word: "ドア", reading: "ドア", translation: "door"),
            TabooWord(word: "机", reading: "つくえ", translation: "desk"),
         ], topic: .dailyLife),

    Card(id: "daily_23", japaneseWord: "椅子", reading: "いす", englishTranslation: "chair",
         tabooWords: [
            TabooWord(word: "座る", reading: "すわる", translation: "sit"),
            TabooWord(word: "木", reading: "き", translation: "wood"),
            TabooWord(word: "家具", reading: "かぐ", translation: "furniture"),
            TabooWord(word: "部屋", reading: "へや", translation: "room"),
         ], topic: .dailyLife),

    Card(id: "daily_24", japaneseWord: "テーブル", reading: nil, englishTranslation: "table",
         tabooWords: [
            TabooWord(word: "食事", reading: "しょくじ", translation: "meal"),
            TabooWord(word: "上", reading: "うえ", translation: "top"),
            TabooWord(word: "置く", reading: "おく", translation: "place"),
            TabooWord(word: "木", reading: "き", translation: "wood"),
         ], topic: .dailyLife),

    Card(id: "daily_25", japaneseWord: "冷蔵庫", reading: "れいぞうこ", englishTranslation: "fridge",
         tabooWords: [
            TabooWord(word: "食べ物", reading: "たべもの", translation: "food"),
            TabooWord(word: "冷たい", reading: "つめたい", translation: "cold"),
            TabooWord(word: "キッチン", reading: "キッチン", translation: "kitchen"),
            TabooWord(word: "家", reading: "いえ", translation: "home"),
         ], topic: .dailyLife),

    Card(id: "daily_26", japaneseWord: "財布", reading: "さいふ", englishTranslation: "wallet",
         tabooWords: [
            TabooWord(word: "お金", reading: "おかね", translation: "money"),
            TabooWord(word: "小銭", reading: "こぜに", translation: "coins"),
            TabooWord(word: "バッグ", reading: "バッグ", translation: "bag"),
            TabooWord(word: "カード", reading: "カード", translation: "card"),
         ], topic: .dailyLife),

    Card(id: "daily_27", japaneseWord: "服", reading: "ふく", englishTranslation: "clothes",
         tabooWords: [
            TabooWord(word: "着る", reading: "きる", translation: "wear"),
            TabooWord(word: "シャツ", reading: "シャツ", translation: "shirt"),
            TabooWord(word: "パンツ", reading: "パンツ", translation: "pants"),
            TabooWord(word: "帽子", reading: "ぼうし", translation: "hat"),
         ], topic: .dailyLife),

    Card(id: "daily_28", japaneseWord: "靴", reading: "くつ", englishTranslation: "shoes",
         tabooWords: [
            TabooWord(word: "足", reading: "あし", translation: "foot"),
            TabooWord(word: "歩く", reading: "あるく", translation: "walk"),
            TabooWord(word: "履く", reading: "はく", translation: "wear"),
            TabooWord(word: "スポーツ", reading: "スポーツ", translation: "sport"),
         ], topic: .dailyLife),

    Card(id: "daily_29", japaneseWord: "帽子", reading: "ぼうし", englishTranslation: "hat",
         tabooWords: [
            TabooWord(word: "頭", reading: "あたま", translation: "head"),
            TabooWord(word: "かぶる", reading: "かぶる", translation: "wear"),
            TabooWord(word: "日", reading: "ひ", translation: "sun"),
            TabooWord(word: "ファッション", reading: "ファッション", translation: "fashion"),
         ], topic: .dailyLife),

    Card(id: "daily_30", japaneseWord: "時計", reading: "とけい", englishTranslation: "clock / watch",
         tabooWords: [
            TabooWord(word: "時間", reading: "じかん", translation: "time"),
            TabooWord(word: "手首", reading: "てくび", translation: "wrist"),
            TabooWord(word: "見る", reading: "みる", translation: "look"),
            TabooWord(word: "スケジュール", reading: "スケジュール", translation: "schedule"),
         ], topic: .dailyLife),

    Card(id: "daily_31", japaneseWord: "犬", reading: "いぬ", englishTranslation: "dog",
         tabooWords: [
            TabooWord(word: "ペット", reading: "ペット", translation: "pet"),
            TabooWord(word: "吠える", reading: "ほえる", translation: "bark"),
            TabooWord(word: "散歩", reading: "さんぽ", translation: "walk"),
            TabooWord(word: "動物", reading: "どうぶつ", translation: "animal"),
         ], topic: .dailyLife),

    Card(id: "daily_32", japaneseWord: "猫", reading: "ねこ", englishTranslation: "cat",
         tabooWords: [
            TabooWord(word: "ペット", reading: "ペット", translation: "pet"),
            TabooWord(word: "小さい", reading: "ちいさい", translation: "small"),
            TabooWord(word: "鳴く", reading: "なく", translation: "meow"),
            TabooWord(word: "動物", reading: "どうぶつ", translation: "animal"),
         ], topic: .dailyLife),

    Card(id: "daily_33", japaneseWord: "鳥", reading: "とり", englishTranslation: "bird",
         tabooWords: [
            TabooWord(word: "空", reading: "そら", translation: "sky"),
            TabooWord(word: "飛ぶ", reading: "とぶ", translation: "fly"),
            TabooWord(word: "羽", reading: "はね", translation: "wing"),
            TabooWord(word: "動物", reading: "どうぶつ", translation: "animal"),
         ], topic: .dailyLife),

    Card(id: "daily_34", japaneseWord: "魚", reading: "さかな", englishTranslation: "fish",
         tabooWords: [
            TabooWord(word: "海", reading: "うみ", translation: "sea"),
            TabooWord(word: "泳ぐ", reading: "およぐ", translation: "swim"),
            TabooWord(word: "水", reading: "みず", translation: "water"),
            TabooWord(word: "動物", reading: "どうぶつ", translation: "animal"),
         ], topic: .dailyLife),

    Card(id: "daily_35", japaneseWord: "馬", reading: "うま", englishTranslation: "horse",
         tabooWords: [
            TabooWord(word: "走る", reading: "はしる", translation: "run"),
            TabooWord(word: "大きい", reading: "おおきい", translation: "big"),
            TabooWord(word: "動物", reading: "どうぶつ", translation: "animal"),
            TabooWord(word: "速い", reading: "はやい", translation: "fast"),
         ], topic: .dailyLife),
]
