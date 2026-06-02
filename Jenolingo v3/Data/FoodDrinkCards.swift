import Foundation

let foodDrinkCards: [Card] = [
    Card(id: "food_01", japaneseWord: "寿司", reading: "すし",
         tabooWords: [
            TabooWord(word: "魚", reading: "さかな", translation: "fish"),
            TabooWord(word: "米", reading: "こめ", translation: "rice"),
            TabooWord(word: "日本", reading: "にほん", translation: "Japan"),
            TabooWord(word: "生", reading: "なま", translation: "raw"),
         ], topic: .foodAndDrink),

    Card(id: "food_02", japaneseWord: "ラーメン", reading: nil,
         tabooWords: [
            TabooWord(word: "麺", reading: "めん", translation: "noodles"),
            TabooWord(word: "スープ", reading: "スープ", translation: "soup"),
            TabooWord(word: "丼", reading: "どんぶり", translation: "bowl"),
            TabooWord(word: "豚肉", reading: "ぶたにく", translation: "pork"),
         ], topic: .foodAndDrink),

    Card(id: "food_03", japaneseWord: "おにぎり", reading: nil,
         tabooWords: [
            TabooWord(word: "米", reading: "こめ", translation: "rice"),
            TabooWord(word: "三角", reading: "さんかく", translation: "triangle"),
            TabooWord(word: "海苔", reading: "のり", translation: "seaweed"),
            TabooWord(word: "軽食", reading: "けいしょく", translation: "snack"),
         ], topic: .foodAndDrink),

    Card(id: "food_04", japaneseWord: "天ぷら", reading: "てんぷら",
         tabooWords: [
            TabooWord(word: "揚げる", reading: "あげる", translation: "fry"),
            TabooWord(word: "海老", reading: "えび", translation: "shrimp"),
            TabooWord(word: "油", reading: "あぶら", translation: "oil"),
            TabooWord(word: "クリスピー", reading: "クリスピー", translation: "crispy"),
         ], topic: .foodAndDrink),

    Card(id: "food_05", japaneseWord: "うどん", reading: nil,
         tabooWords: [
            TabooWord(word: "麺", reading: "めん", translation: "noodles"),
            TabooWord(word: "汁", reading: "しる", translation: "soup"),
            TabooWord(word: "太い", reading: "ふとい", translation: "thick"),
            TabooWord(word: "丼", reading: "どんぶり", translation: "bowl"),
         ], topic: .foodAndDrink),

    Card(id: "food_06", japaneseWord: "そば", reading: nil,
         tabooWords: [
            TabooWord(word: "麺", reading: "めん", translation: "noodles"),
            TabooWord(word: "そば粉", reading: "そばこ", translation: "buckwheat"),
            TabooWord(word: "冷たい", reading: "つめたい", translation: "cold"),
            TabooWord(word: "日本", reading: "にほん", translation: "Japan"),
         ], topic: .foodAndDrink),

    Card(id: "food_07", japaneseWord: "餃子", reading: "ぎょうざ",
         tabooWords: [
            TabooWord(word: "肉", reading: "にく", translation: "meat"),
            TabooWord(word: "中国", reading: "ちゅうごく", translation: "China"),
            TabooWord(word: "焼く", reading: "やく", translation: "fry"),
            TabooWord(word: "一口", reading: "ひとくち", translation: "bite"),
         ], topic: .foodAndDrink),

    Card(id: "food_08", japaneseWord: "唐揚げ", reading: "からあげ",
         tabooWords: [
            TabooWord(word: "鶏肉", reading: "とりにく", translation: "chicken"),
            TabooWord(word: "揚げる", reading: "あげる", translation: "fry"),
            TabooWord(word: "油", reading: "あぶら", translation: "oil"),
            TabooWord(word: "クリスピー", reading: "クリスピー", translation: "crispy"),
         ], topic: .foodAndDrink),

    Card(id: "food_09", japaneseWord: "カレー", reading: nil,
         tabooWords: [
            TabooWord(word: "米", reading: "こめ", translation: "rice"),
            TabooWord(word: "辛い", reading: "からい", translation: "spicy"),
            TabooWord(word: "ソース", reading: "ソース", translation: "sauce"),
            TabooWord(word: "インド", reading: "インド", translation: "India"),
         ], topic: .foodAndDrink),

    Card(id: "food_10", japaneseWord: "味噌汁", reading: "みそしる",
         tabooWords: [
            TabooWord(word: "汁", reading: "しる", translation: "soup"),
            TabooWord(word: "塩", reading: "しお", translation: "salt"),
            TabooWord(word: "日本", reading: "にほん", translation: "Japan"),
            TabooWord(word: "朝食", reading: "ちょうしょく", translation: "breakfast"),
         ], topic: .foodAndDrink),

    Card(id: "food_11", japaneseWord: "たこ焼き", reading: "たこやき",
         tabooWords: [
            TabooWord(word: "タコ", reading: "タコ", translation: "octopus"),
            TabooWord(word: "丸い", reading: "まるい", translation: "round"),
            TabooWord(word: "大阪", reading: "おおさか", translation: "Osaka"),
            TabooWord(word: "屋台", reading: "やたい", translation: "street stall"),
         ], topic: .foodAndDrink),

    Card(id: "food_12", japaneseWord: "お好み焼き", reading: "おこのみやき",
         tabooWords: [
            TabooWord(word: "粉", reading: "こな", translation: "flour"),
            TabooWord(word: "キャベツ", reading: "キャベツ", translation: "cabbage"),
            TabooWord(word: "焼く", reading: "やく", translation: "grill"),
            TabooWord(word: "大阪", reading: "おおさか", translation: "Osaka"),
         ], topic: .foodAndDrink),

    Card(id: "food_13", japaneseWord: "焼肉", reading: "やきにく",
         tabooWords: [
            TabooWord(word: "肉", reading: "にく", translation: "meat"),
            TabooWord(word: "焼く", reading: "やく", translation: "grill"),
            TabooWord(word: "韓国", reading: "かんこく", translation: "Korea"),
            TabooWord(word: "レストラン", reading: "レストラン", translation: "restaurant"),
         ], topic: .foodAndDrink),

    Card(id: "food_14", japaneseWord: "弁当", reading: "べんとう",
         tabooWords: [
            TabooWord(word: "昼", reading: "ひる", translation: "lunch"),
            TabooWord(word: "箱", reading: "はこ", translation: "box"),
            TabooWord(word: "食べる", reading: "たべる", translation: "eat"),
            TabooWord(word: "学校", reading: "がっこう", translation: "school"),
         ], topic: .foodAndDrink),

    Card(id: "food_15", japaneseWord: "水", reading: "みず",
         tabooWords: [
            TabooWord(word: "飲む", reading: "のむ", translation: "drink"),
            TabooWord(word: "透明", reading: "とうめい", translation: "clear"),
            TabooWord(word: "ペットボトル", reading: "ペットボトル", translation: "bottle"),
            TabooWord(word: "喉", reading: "のど", translation: "throat"),
         ], topic: .foodAndDrink),

    Card(id: "food_16", japaneseWord: "お茶", reading: "おちゃ",
         tabooWords: [
            TabooWord(word: "飲む", reading: "のむ", translation: "drink"),
            TabooWord(word: "緑", reading: "みどり", translation: "green"),
            TabooWord(word: "温かい", reading: "あたたかい", translation: "warm"),
            TabooWord(word: "葉", reading: "は", translation: "leaf"),
         ], topic: .foodAndDrink),

    Card(id: "food_17", japaneseWord: "コーヒー", reading: nil,
         tabooWords: [
            TabooWord(word: "飲む", reading: "のむ", translation: "drink"),
            TabooWord(word: "カフェ", reading: "カフェ", translation: "cafe"),
            TabooWord(word: "苦い", reading: "にがい", translation: "bitter"),
            TabooWord(word: "朝", reading: "あさ", translation: "morning"),
         ], topic: .foodAndDrink),

    Card(id: "food_18", japaneseWord: "ジュース", reading: nil,
         tabooWords: [
            TabooWord(word: "飲む", reading: "のむ", translation: "drink"),
            TabooWord(word: "果物", reading: "くだもの", translation: "fruit"),
            TabooWord(word: "甘い", reading: "あまい", translation: "sweet"),
            TabooWord(word: "冷たい", reading: "つめたい", translation: "cold"),
         ], topic: .foodAndDrink),

    Card(id: "food_19", japaneseWord: "ビール", reading: nil,
         tabooWords: [
            TabooWord(word: "飲む", reading: "のむ", translation: "drink"),
            TabooWord(word: "アルコール", reading: "アルコール", translation: "alcohol"),
            TabooWord(word: "居酒屋", reading: "いざかや", translation: "bar"),
            TabooWord(word: "冷たい", reading: "つめたい", translation: "cold"),
         ], topic: .foodAndDrink),

    Card(id: "food_20", japaneseWord: "ワイン", reading: nil,
         tabooWords: [
            TabooWord(word: "飲む", reading: "のむ", translation: "drink"),
            TabooWord(word: "葡萄", reading: "ぶどう", translation: "grape"),
            TabooWord(word: "赤", reading: "あか", translation: "red"),
            TabooWord(word: "アルコール", reading: "アルコール", translation: "alcohol"),
         ], topic: .foodAndDrink),

    Card(id: "food_21", japaneseWord: "チョコレート", reading: nil,
         tabooWords: [
            TabooWord(word: "甘い", reading: "あまい", translation: "sweet"),
            TabooWord(word: "カカオ", reading: "カカオ", translation: "cocoa"),
            TabooWord(word: "お菓子", reading: "おかし", translation: "candy"),
            TabooWord(word: "デザート", reading: "デザート", translation: "dessert"),
         ], topic: .foodAndDrink),

    Card(id: "food_22", japaneseWord: "アイスクリーム", reading: nil,
         tabooWords: [
            TabooWord(word: "冷たい", reading: "つめたい", translation: "cold"),
            TabooWord(word: "甘い", reading: "あまい", translation: "sweet"),
            TabooWord(word: "デザート", reading: "デザート", translation: "dessert"),
            TabooWord(word: "夏", reading: "なつ", translation: "summer"),
         ], topic: .foodAndDrink),

    Card(id: "food_23", japaneseWord: "ケーキ", reading: nil,
         tabooWords: [
            TabooWord(word: "誕生日", reading: "たんじょうび", translation: "birthday"),
            TabooWord(word: "甘い", reading: "あまい", translation: "sweet"),
            TabooWord(word: "クリーム", reading: "クリーム", translation: "cream"),
            TabooWord(word: "パーティー", reading: "パーティー", translation: "party"),
         ], topic: .foodAndDrink),

    Card(id: "food_24", japaneseWord: "パン", reading: nil,
         tabooWords: [
            TabooWord(word: "小麦", reading: "こむぎ", translation: "wheat"),
            TabooWord(word: "焼く", reading: "やく", translation: "bake"),
            TabooWord(word: "朝食", reading: "ちょうしょく", translation: "breakfast"),
            TabooWord(word: "店", reading: "みせ", translation: "shop"),
         ], topic: .foodAndDrink),

    Card(id: "food_25", japaneseWord: "牛乳", reading: "ぎゅうにゅう",
         tabooWords: [
            TabooWord(word: "白い", reading: "しろい", translation: "white"),
            TabooWord(word: "飲む", reading: "のむ", translation: "drink"),
            TabooWord(word: "牛", reading: "うし", translation: "cow"),
            TabooWord(word: "朝", reading: "あさ", translation: "morning"),
         ], topic: .foodAndDrink),

    Card(id: "food_26", japaneseWord: "たい焼き", reading: "たいやき",
         tabooWords: [
            TabooWord(word: "魚", reading: "さかな", translation: "fish"),
            TabooWord(word: "甘い", reading: "あまい", translation: "sweet"),
            TabooWord(word: "屋台", reading: "やたい", translation: "stall"),
            TabooWord(word: "あんこ", reading: "あんこ", translation: "red bean paste"),
         ], topic: .foodAndDrink),

    Card(id: "food_27", japaneseWord: "だんご", reading: nil,
         tabooWords: [
            TabooWord(word: "甘い", reading: "あまい", translation: "sweet"),
            TabooWord(word: "もち", reading: "もち", translation: "rice cake"),
            TabooWord(word: "串", reading: "くし", translation: "skewer"),
            TabooWord(word: "和菓子", reading: "わがし", translation: "Japanese sweets"),
         ], topic: .foodAndDrink),

    Card(id: "food_28", japaneseWord: "うなぎ", reading: nil,
         tabooWords: [
            TabooWord(word: "魚", reading: "さかな", translation: "fish"),
            TabooWord(word: "焼く", reading: "やく", translation: "grill"),
            TabooWord(word: "高い", reading: "たかい", translation: "expensive"),
            TabooWord(word: "夏", reading: "なつ", translation: "summer"),
         ], topic: .foodAndDrink),

    Card(id: "food_29", japaneseWord: "すき焼き", reading: "すきやき",
         tabooWords: [
            TabooWord(word: "肉", reading: "にく", translation: "meat"),
            TabooWord(word: "鍋", reading: "なべ", translation: "hot pot"),
            TabooWord(word: "甘い", reading: "あまい", translation: "sweet"),
            TabooWord(word: "醤油", reading: "しょうゆ", translation: "soy sauce"),
         ], topic: .foodAndDrink),

    Card(id: "food_30", japaneseWord: "かき氷", reading: "かきごおり",
         tabooWords: [
            TabooWord(word: "氷", reading: "こおり", translation: "ice"),
            TabooWord(word: "夏", reading: "なつ", translation: "summer"),
            TabooWord(word: "甘い", reading: "あまい", translation: "sweet"),
            TabooWord(word: "シロップ", reading: "シロップ", translation: "syrup"),
         ], topic: .foodAndDrink),
]
