import Foundation

let foodDrinkCards: [Card] = [
    Card(id: "food_01", japaneseWord: "寿司", reading: "すし", englishTranslation: "sushi",
         tabooWords: [
            TabooWord(word: "魚", reading: "さかな", translation: "fish"),
            TabooWord(word: "米", reading: "こめ", translation: "rice"),
            TabooWord(word: "日本", reading: "にほん", translation: "Japan"),
            TabooWord(word: "生", reading: "なま", translation: "raw"),
         ], topic: .foodAndDrink),

    Card(id: "food_02", japaneseWord: "ラーメン", reading: nil, englishTranslation: "ramen",
         tabooWords: [
            TabooWord(word: "麺", reading: "めん", translation: "noodles"),
            TabooWord(word: "スープ", reading: "スープ", translation: "soup"),
            TabooWord(word: "丼", reading: "どんぶり", translation: "bowl"),
            TabooWord(word: "豚肉", reading: "ぶたにく", translation: "pork"),
         ], topic: .foodAndDrink),

    Card(id: "food_03", japaneseWord: "おにぎり", reading: nil, englishTranslation: "rice ball",
         tabooWords: [
            TabooWord(word: "米", reading: "こめ", translation: "rice"),
            TabooWord(word: "三角", reading: "さんかく", translation: "triangle"),
            TabooWord(word: "海苔", reading: "のり", translation: "seaweed"),
            TabooWord(word: "軽食", reading: "けいしょく", translation: "snack"),
         ], topic: .foodAndDrink),

    Card(id: "food_04", japaneseWord: "天ぷら", reading: "てんぷら", englishTranslation: "tempura",
         tabooWords: [
            TabooWord(word: "揚げる", reading: "あげる", translation: "fry"),
            TabooWord(word: "海老", reading: "えび", translation: "shrimp"),
            TabooWord(word: "油", reading: "あぶら", translation: "oil"),
            TabooWord(word: "クリスピー", reading: "クリスピー", translation: "crispy"),
         ], topic: .foodAndDrink),

    Card(id: "food_05", japaneseWord: "うどん", reading: nil, englishTranslation: "udon",
         tabooWords: [
            TabooWord(word: "麺", reading: "めん", translation: "noodles"),
            TabooWord(word: "汁", reading: "しる", translation: "soup"),
            TabooWord(word: "太い", reading: "ふとい", translation: "thick"),
            TabooWord(word: "丼", reading: "どんぶり", translation: "bowl"),
         ], topic: .foodAndDrink),

    Card(id: "food_06", japaneseWord: "そば", reading: nil, englishTranslation: "soba",
         tabooWords: [
            TabooWord(word: "麺", reading: "めん", translation: "noodles"),
            TabooWord(word: "そば粉", reading: "そばこ", translation: "buckwheat"),
            TabooWord(word: "冷たい", reading: "つめたい", translation: "cold"),
            TabooWord(word: "日本", reading: "にほん", translation: "Japan"),
         ], topic: .foodAndDrink),

    Card(id: "food_07", japaneseWord: "餃子", reading: "ぎょうざ", englishTranslation: "dumplings",
         tabooWords: [
            TabooWord(word: "肉", reading: "にく", translation: "meat"),
            TabooWord(word: "中国", reading: "ちゅうごく", translation: "China"),
            TabooWord(word: "焼く", reading: "やく", translation: "fry"),
            TabooWord(word: "一口", reading: "ひとくち", translation: "bite"),
         ], topic: .foodAndDrink),

    Card(id: "food_08", japaneseWord: "唐揚げ", reading: "からあげ", englishTranslation: "fried chicken",
         tabooWords: [
            TabooWord(word: "鶏肉", reading: "とりにく", translation: "chicken"),
            TabooWord(word: "揚げる", reading: "あげる", translation: "fry"),
            TabooWord(word: "油", reading: "あぶら", translation: "oil"),
            TabooWord(word: "クリスピー", reading: "クリスピー", translation: "crispy"),
         ], topic: .foodAndDrink),

    Card(id: "food_09", japaneseWord: "カレー", reading: nil, englishTranslation: "curry",
         tabooWords: [
            TabooWord(word: "米", reading: "こめ", translation: "rice"),
            TabooWord(word: "辛い", reading: "からい", translation: "spicy"),
            TabooWord(word: "ソース", reading: "ソース", translation: "sauce"),
            TabooWord(word: "インド", reading: "インド", translation: "India"),
         ], topic: .foodAndDrink),

    Card(id: "food_10", japaneseWord: "味噌汁", reading: "みそしる", englishTranslation: "miso soup",
         tabooWords: [
            TabooWord(word: "汁", reading: "しる", translation: "soup"),
            TabooWord(word: "塩", reading: "しお", translation: "salt"),
            TabooWord(word: "日本", reading: "にほん", translation: "Japan"),
            TabooWord(word: "朝食", reading: "ちょうしょく", translation: "breakfast"),
         ], topic: .foodAndDrink),

    Card(id: "food_11", japaneseWord: "たこ焼き", reading: "たこやき", englishTranslation: "takoyaki",
         tabooWords: [
            TabooWord(word: "タコ", reading: "タコ", translation: "octopus"),
            TabooWord(word: "丸い", reading: "まるい", translation: "round"),
            TabooWord(word: "大阪", reading: "おおさか", translation: "Osaka"),
            TabooWord(word: "屋台", reading: "やたい", translation: "street stall"),
         ], topic: .foodAndDrink),

    Card(id: "food_12", japaneseWord: "お好み焼き", reading: "おこのみやき", englishTranslation: "okonomiyaki",
         tabooWords: [
            TabooWord(word: "粉", reading: "こな", translation: "flour"),
            TabooWord(word: "キャベツ", reading: "キャベツ", translation: "cabbage"),
            TabooWord(word: "焼く", reading: "やく", translation: "grill"),
            TabooWord(word: "大阪", reading: "おおさか", translation: "Osaka"),
         ], topic: .foodAndDrink),

    Card(id: "food_13", japaneseWord: "焼肉", reading: "やきにく", englishTranslation: "BBQ meat",
         tabooWords: [
            TabooWord(word: "肉", reading: "にく", translation: "meat"),
            TabooWord(word: "焼く", reading: "やく", translation: "grill"),
            TabooWord(word: "韓国", reading: "かんこく", translation: "Korea"),
            TabooWord(word: "レストラン", reading: "レストラン", translation: "restaurant"),
         ], topic: .foodAndDrink),

    Card(id: "food_14", japaneseWord: "弁当", reading: "べんとう", englishTranslation: "lunch box",
         tabooWords: [
            TabooWord(word: "昼", reading: "ひる", translation: "lunch"),
            TabooWord(word: "箱", reading: "はこ", translation: "box"),
            TabooWord(word: "食べる", reading: "たべる", translation: "eat"),
            TabooWord(word: "学校", reading: "がっこう", translation: "school"),
         ], topic: .foodAndDrink),

    Card(id: "food_15", japaneseWord: "水", reading: "みず", englishTranslation: "water",
         tabooWords: [
            TabooWord(word: "飲む", reading: "のむ", translation: "drink"),
            TabooWord(word: "透明", reading: "とうめい", translation: "clear"),
            TabooWord(word: "ペットボトル", reading: "ペットボトル", translation: "bottle"),
            TabooWord(word: "喉", reading: "のど", translation: "throat"),
         ], topic: .foodAndDrink),

    Card(id: "food_16", japaneseWord: "お茶", reading: "おちゃ", englishTranslation: "tea",
         tabooWords: [
            TabooWord(word: "飲む", reading: "のむ", translation: "drink"),
            TabooWord(word: "緑", reading: "みどり", translation: "green"),
            TabooWord(word: "温かい", reading: "あたたかい", translation: "warm"),
            TabooWord(word: "葉", reading: "は", translation: "leaf"),
         ], topic: .foodAndDrink),

    Card(id: "food_17", japaneseWord: "コーヒー", reading: nil, englishTranslation: "coffee",
         tabooWords: [
            TabooWord(word: "飲む", reading: "のむ", translation: "drink"),
            TabooWord(word: "カフェ", reading: "カフェ", translation: "cafe"),
            TabooWord(word: "苦い", reading: "にがい", translation: "bitter"),
            TabooWord(word: "朝", reading: "あさ", translation: "morning"),
         ], topic: .foodAndDrink),

    Card(id: "food_18", japaneseWord: "ジュース", reading: nil, englishTranslation: "juice",
         tabooWords: [
            TabooWord(word: "飲む", reading: "のむ", translation: "drink"),
            TabooWord(word: "果物", reading: "くだもの", translation: "fruit"),
            TabooWord(word: "甘い", reading: "あまい", translation: "sweet"),
            TabooWord(word: "冷たい", reading: "つめたい", translation: "cold"),
         ], topic: .foodAndDrink),

    Card(id: "food_19", japaneseWord: "ビール", reading: nil, englishTranslation: "beer",
         tabooWords: [
            TabooWord(word: "飲む", reading: "のむ", translation: "drink"),
            TabooWord(word: "アルコール", reading: "アルコール", translation: "alcohol"),
            TabooWord(word: "居酒屋", reading: "いざかや", translation: "bar"),
            TabooWord(word: "冷たい", reading: "つめたい", translation: "cold"),
         ], topic: .foodAndDrink),

    Card(id: "food_20", japaneseWord: "ワイン", reading: nil, englishTranslation: "wine",
         tabooWords: [
            TabooWord(word: "飲む", reading: "のむ", translation: "drink"),
            TabooWord(word: "葡萄", reading: "ぶどう", translation: "grape"),
            TabooWord(word: "赤", reading: "あか", translation: "red"),
            TabooWord(word: "アルコール", reading: "アルコール", translation: "alcohol"),
         ], topic: .foodAndDrink),

    Card(id: "food_21", japaneseWord: "チョコレート", reading: nil, englishTranslation: "chocolate",
         tabooWords: [
            TabooWord(word: "甘い", reading: "あまい", translation: "sweet"),
            TabooWord(word: "カカオ", reading: "カカオ", translation: "cocoa"),
            TabooWord(word: "お菓子", reading: "おかし", translation: "candy"),
            TabooWord(word: "デザート", reading: "デザート", translation: "dessert"),
         ], topic: .foodAndDrink),

    Card(id: "food_22", japaneseWord: "アイスクリーム", reading: nil, englishTranslation: "ice cream",
         tabooWords: [
            TabooWord(word: "冷たい", reading: "つめたい", translation: "cold"),
            TabooWord(word: "甘い", reading: "あまい", translation: "sweet"),
            TabooWord(word: "デザート", reading: "デザート", translation: "dessert"),
            TabooWord(word: "夏", reading: "なつ", translation: "summer"),
         ], topic: .foodAndDrink),

    Card(id: "food_23", japaneseWord: "ケーキ", reading: nil, englishTranslation: "cake",
         tabooWords: [
            TabooWord(word: "誕生日", reading: "たんじょうび", translation: "birthday"),
            TabooWord(word: "甘い", reading: "あまい", translation: "sweet"),
            TabooWord(word: "クリーム", reading: "クリーム", translation: "cream"),
            TabooWord(word: "パーティー", reading: "パーティー", translation: "party"),
         ], topic: .foodAndDrink),

    Card(id: "food_24", japaneseWord: "パン", reading: nil, englishTranslation: "bread",
         tabooWords: [
            TabooWord(word: "小麦", reading: "こむぎ", translation: "wheat"),
            TabooWord(word: "焼く", reading: "やく", translation: "bake"),
            TabooWord(word: "朝食", reading: "ちょうしょく", translation: "breakfast"),
            TabooWord(word: "店", reading: "みせ", translation: "shop"),
         ], topic: .foodAndDrink),

    Card(id: "food_25", japaneseWord: "牛乳", reading: "ぎゅうにゅう", englishTranslation: "milk",
         tabooWords: [
            TabooWord(word: "白い", reading: "しろい", translation: "white"),
            TabooWord(word: "飲む", reading: "のむ", translation: "drink"),
            TabooWord(word: "牛", reading: "うし", translation: "cow"),
            TabooWord(word: "朝", reading: "あさ", translation: "morning"),
         ], topic: .foodAndDrink),

    Card(id: "food_26", japaneseWord: "たい焼き", reading: "たいやき", englishTranslation: "fish-shaped cake",
         tabooWords: [
            TabooWord(word: "魚", reading: "さかな", translation: "fish"),
            TabooWord(word: "甘い", reading: "あまい", translation: "sweet"),
            TabooWord(word: "屋台", reading: "やたい", translation: "stall"),
            TabooWord(word: "あんこ", reading: "あんこ", translation: "red bean paste"),
         ], topic: .foodAndDrink),

    Card(id: "food_27", japaneseWord: "だんご", reading: nil, englishTranslation: "sweet rice dumplings",
         tabooWords: [
            TabooWord(word: "甘い", reading: "あまい", translation: "sweet"),
            TabooWord(word: "もち", reading: "もち", translation: "rice cake"),
            TabooWord(word: "串", reading: "くし", translation: "skewer"),
            TabooWord(word: "和菓子", reading: "わがし", translation: "Japanese sweets"),
         ], topic: .foodAndDrink),

    Card(id: "food_28", japaneseWord: "うなぎ", reading: nil, englishTranslation: "eel",
         tabooWords: [
            TabooWord(word: "魚", reading: "さかな", translation: "fish"),
            TabooWord(word: "焼く", reading: "やく", translation: "grill"),
            TabooWord(word: "高い", reading: "たかい", translation: "expensive"),
            TabooWord(word: "夏", reading: "なつ", translation: "summer"),
         ], topic: .foodAndDrink),

    Card(id: "food_29", japaneseWord: "すき焼き", reading: "すきやき", englishTranslation: "sukiyaki",
         tabooWords: [
            TabooWord(word: "肉", reading: "にく", translation: "meat"),
            TabooWord(word: "鍋", reading: "なべ", translation: "hot pot"),
            TabooWord(word: "甘い", reading: "あまい", translation: "sweet"),
            TabooWord(word: "醤油", reading: "しょうゆ", translation: "soy sauce"),
         ], topic: .foodAndDrink),

    Card(id: "food_30", japaneseWord: "かき氷", reading: "かきごおり", englishTranslation: "shaved ice",
         tabooWords: [
            TabooWord(word: "氷", reading: "こおり", translation: "ice"),
            TabooWord(word: "夏", reading: "なつ", translation: "summer"),
            TabooWord(word: "甘い", reading: "あまい", translation: "sweet"),
            TabooWord(word: "シロップ", reading: "シロップ", translation: "syrup"),
         ], topic: .foodAndDrink),

    Card(id: "food_31", japaneseWord: "刺身", reading: "さしみ", englishTranslation: "sashimi",
         tabooWords: [
            TabooWord(word: "魚", reading: "さかな", translation: "fish"),
            TabooWord(word: "生", reading: "なま", translation: "raw"),
            TabooWord(word: "醤油", reading: "しょうゆ", translation: "soy sauce"),
            TabooWord(word: "寿司", reading: "すし", translation: "sushi"),
         ], topic: .foodAndDrink),

    Card(id: "food_32", japaneseWord: "しゃぶしゃぶ", reading: nil, englishTranslation: "shabu shabu",
         tabooWords: [
            TabooWord(word: "鍋", reading: "なべ", translation: "hot pot"),
            TabooWord(word: "肉", reading: "にく", translation: "meat"),
            TabooWord(word: "野菜", reading: "やさい", translation: "vegetables"),
            TabooWord(word: "付ける", reading: "つける", translation: "dip"),
         ], topic: .foodAndDrink),

    Card(id: "food_33", japaneseWord: "豚カツ", reading: "とんかつ", englishTranslation: "pork cutlet",
         tabooWords: [
            TabooWord(word: "豚肉", reading: "ぶたにく", translation: "pork"),
            TabooWord(word: "揚げる", reading: "あげる", translation: "fry"),
            TabooWord(word: "パン粉", reading: "パンこ", translation: "breadcrumbs"),
            TabooWord(word: "ソース", reading: "ソース", translation: "sauce"),
         ], topic: .foodAndDrink),

    Card(id: "food_34", japaneseWord: "焼き鳥", reading: "やきとり", englishTranslation: "yakitori",
         tabooWords: [
            TabooWord(word: "鶏肉", reading: "とりにく", translation: "chicken"),
            TabooWord(word: "串", reading: "くし", translation: "skewer"),
            TabooWord(word: "焼く", reading: "やく", translation: "grill"),
            TabooWord(word: "居酒屋", reading: "いざかや", translation: "izakaya"),
         ], topic: .foodAndDrink),

    Card(id: "food_35", japaneseWord: "納豆", reading: "なっとう", englishTranslation: "fermented soybeans",
         tabooWords: [
            TabooWord(word: "臭い", reading: "くさい", translation: "smelly"),
            TabooWord(word: "糸", reading: "いと", translation: "stringy"),
            TabooWord(word: "大豆", reading: "だいず", translation: "soybean"),
            TabooWord(word: "朝食", reading: "ちょうしょく", translation: "breakfast"),
         ], topic: .foodAndDrink),

    Card(id: "food_36", japaneseWord: "豆腐", reading: "とうふ", englishTranslation: "tofu",
         tabooWords: [
            TabooWord(word: "大豆", reading: "だいず", translation: "soybean"),
            TabooWord(word: "白い", reading: "しろい", translation: "white"),
            TabooWord(word: "柔らかい", reading: "やわらかい", translation: "soft"),
            TabooWord(word: "ヘルシー", reading: "ヘルシー", translation: "healthy"),
         ], topic: .foodAndDrink),

    Card(id: "food_37", japaneseWord: "おでん", reading: nil, englishTranslation: "oden",
         tabooWords: [
            TabooWord(word: "鍋", reading: "なべ", translation: "pot"),
            TabooWord(word: "冬", reading: "ふゆ", translation: "winter"),
            TabooWord(word: "出汁", reading: "だし", translation: "broth"),
            TabooWord(word: "コンビニ", reading: "コンビニ", translation: "convenience store"),
         ], topic: .foodAndDrink),

    Card(id: "food_38", japaneseWord: "焼きそば", reading: "やきそば", englishTranslation: "fried noodles",
         tabooWords: [
            TabooWord(word: "麺", reading: "めん", translation: "noodles"),
            TabooWord(word: "炒める", reading: "いためる", translation: "stir-fry"),
            TabooWord(word: "ソース", reading: "ソース", translation: "sauce"),
            TabooWord(word: "祭り", reading: "まつり", translation: "festival"),
         ], topic: .foodAndDrink),

    Card(id: "food_39", japaneseWord: "牛丼", reading: "ぎゅうどん", englishTranslation: "beef rice bowl",
         tabooWords: [
            TabooWord(word: "牛肉", reading: "ぎゅうにく", translation: "beef"),
            TabooWord(word: "米", reading: "こめ", translation: "rice"),
            TabooWord(word: "丼", reading: "どんぶり", translation: "bowl"),
            TabooWord(word: "早い", reading: "はやい", translation: "quick"),
         ], topic: .foodAndDrink),

    Card(id: "food_40", japaneseWord: "親子丼", reading: "おやこどん", englishTranslation: "chicken and egg rice bowl",
         tabooWords: [
            TabooWord(word: "鶏肉", reading: "とりにく", translation: "chicken"),
            TabooWord(word: "卵", reading: "たまご", translation: "egg"),
            TabooWord(word: "米", reading: "こめ", translation: "rice"),
            TabooWord(word: "丼", reading: "どんぶり", translation: "bowl"),
         ], topic: .foodAndDrink),

    Card(id: "food_41", japaneseWord: "海鮮丼", reading: "かいせんどん", englishTranslation: "seafood rice bowl",
         tabooWords: [
            TabooWord(word: "魚", reading: "さかな", translation: "fish"),
            TabooWord(word: "米", reading: "こめ", translation: "rice"),
            TabooWord(word: "生", reading: "なま", translation: "raw"),
            TabooWord(word: "丼", reading: "どんぶり", translation: "bowl"),
         ], topic: .foodAndDrink),

    Card(id: "food_42", japaneseWord: "梅干し", reading: "うめぼし", englishTranslation: "pickled plum",
         tabooWords: [
            TabooWord(word: "酸っぱい", reading: "すっぱい", translation: "sour"),
            TabooWord(word: "赤い", reading: "あかい", translation: "red"),
            TabooWord(word: "おにぎり", reading: "おにぎり", translation: "rice ball"),
            TabooWord(word: "塩", reading: "しお", translation: "salt"),
         ], topic: .foodAndDrink),

    Card(id: "food_43", japaneseWord: "煎餅", reading: "せんべい", englishTranslation: "rice crackers",
         tabooWords: [
            TabooWord(word: "米", reading: "こめ", translation: "rice"),
            TabooWord(word: "カリカリ", reading: "カリカリ", translation: "crunchy"),
            TabooWord(word: "お菓子", reading: "おかし", translation: "snack"),
            TabooWord(word: "醤油", reading: "しょうゆ", translation: "soy sauce"),
         ], topic: .foodAndDrink),

    Card(id: "food_44", japaneseWord: "わさび", reading: nil, englishTranslation: "wasabi",
         tabooWords: [
            TabooWord(word: "辛い", reading: "からい", translation: "spicy / hot"),
            TabooWord(word: "緑", reading: "みどり", translation: "green"),
            TabooWord(word: "寿司", reading: "すし", translation: "sushi"),
            TabooWord(word: "鼻", reading: "はな", translation: "nose"),
         ], topic: .foodAndDrink),

    Card(id: "food_45", japaneseWord: "醤油", reading: "しょうゆ", englishTranslation: "soy sauce",
         tabooWords: [
            TabooWord(word: "塩辛い", reading: "しおからい", translation: "salty"),
            TabooWord(word: "黒い", reading: "くろい", translation: "dark"),
            TabooWord(word: "調味料", reading: "ちょうみりょう", translation: "seasoning"),
            TabooWord(word: "刺身", reading: "さしみ", translation: "sashimi"),
         ], topic: .foodAndDrink),

    Card(id: "food_46", japaneseWord: "和菓子", reading: "わがし", englishTranslation: "Japanese sweets",
         tabooWords: [
            TabooWord(word: "甘い", reading: "あまい", translation: "sweet"),
            TabooWord(word: "あんこ", reading: "あんこ", translation: "red bean paste"),
            TabooWord(word: "伝統", reading: "でんとう", translation: "traditional"),
            TabooWord(word: "お茶", reading: "おちゃ", translation: "tea"),
         ], topic: .foodAndDrink),

    Card(id: "food_47", japaneseWord: "ポッキー", reading: nil, englishTranslation: "Pocky",
         tabooWords: [
            TabooWord(word: "チョコレート", reading: "チョコレート", translation: "chocolate"),
            TabooWord(word: "棒", reading: "ぼう", translation: "stick"),
            TabooWord(word: "お菓子", reading: "おかし", translation: "snack"),
            TabooWord(word: "細い", reading: "ほそい", translation: "thin"),
         ], topic: .foodAndDrink),

    Card(id: "food_48", japaneseWord: "ラムネ", reading: nil, englishTranslation: "ramune",
         tabooWords: [
            TabooWord(word: "瓶", reading: "びん", translation: "bottle"),
            TabooWord(word: "ビー玉", reading: "ビーだま", translation: "marble"),
            TabooWord(word: "炭酸", reading: "たんさん", translation: "fizzy"),
            TabooWord(word: "夏", reading: "なつ", translation: "summer"),
         ], topic: .foodAndDrink),

    Card(id: "food_49", japaneseWord: "梅酒", reading: "うめしゅ", englishTranslation: "plum wine",
         tabooWords: [
            TabooWord(word: "梅", reading: "うめ", translation: "plum"),
            TabooWord(word: "甘い", reading: "あまい", translation: "sweet"),
            TabooWord(word: "お酒", reading: "おさけ", translation: "alcohol"),
            TabooWord(word: "飲む", reading: "のむ", translation: "drink"),
         ], topic: .foodAndDrink),

    Card(id: "food_50", japaneseWord: "チューハイ", reading: nil, englishTranslation: "chu-hai",
         tabooWords: [
            TabooWord(word: "お酒", reading: "おさけ", translation: "alcohol"),
            TabooWord(word: "缶", reading: "かん", translation: "can"),
            TabooWord(word: "居酒屋", reading: "いざかや", translation: "izakaya"),
            TabooWord(word: "飲む", reading: "のむ", translation: "drink"),
         ], topic: .foodAndDrink),

    Card(id: "food_51", japaneseWord: "つけ麺", reading: "つけめん", englishTranslation: "dipping ramen",
         tabooWords: [
            TabooWord(word: "麺", reading: "めん", translation: "noodles"),
            TabooWord(word: "スープ", reading: "スープ", translation: "soup"),
            TabooWord(word: "付ける", reading: "つける", translation: "dip"),
            TabooWord(word: "ラーメン", reading: "ラーメン", translation: "ramen"),
         ], topic: .foodAndDrink),

    Card(id: "food_52", japaneseWord: "チャーハン", reading: nil, englishTranslation: "fried rice",
         tabooWords: [
            TabooWord(word: "米", reading: "こめ", translation: "rice"),
            TabooWord(word: "炒める", reading: "いためる", translation: "stir-fry"),
            TabooWord(word: "卵", reading: "たまご", translation: "egg"),
            TabooWord(word: "中華", reading: "ちゅうか", translation: "Chinese"),
         ], topic: .foodAndDrink),

    Card(id: "food_53", japaneseWord: "春巻き", reading: "はるまき", englishTranslation: "spring rolls",
         tabooWords: [
            TabooWord(word: "皮", reading: "かわ", translation: "wrapper"),
            TabooWord(word: "揚げる", reading: "あげる", translation: "fry"),
            TabooWord(word: "中華", reading: "ちゅうか", translation: "Chinese"),
            TabooWord(word: "野菜", reading: "やさい", translation: "vegetables"),
         ], topic: .foodAndDrink),

    Card(id: "food_54", japaneseWord: "唐辛子", reading: "とうがらし", englishTranslation: "chilli pepper",
         tabooWords: [
            TabooWord(word: "辛い", reading: "からい", translation: "spicy"),
            TabooWord(word: "赤い", reading: "あかい", translation: "red"),
            TabooWord(word: "料理", reading: "りょうり", translation: "cooking"),
            TabooWord(word: "野菜", reading: "やさい", translation: "vegetable"),
         ], topic: .foodAndDrink),

    Card(id: "food_55", japaneseWord: "みりん", reading: nil, englishTranslation: "mirin",
         tabooWords: [
            TabooWord(word: "調味料", reading: "ちょうみりょう", translation: "seasoning"),
            TabooWord(word: "甘い", reading: "あまい", translation: "sweet"),
            TabooWord(word: "料理", reading: "りょうり", translation: "cooking"),
            TabooWord(word: "酒", reading: "さけ", translation: "alcohol"),
         ], topic: .foodAndDrink),
]
