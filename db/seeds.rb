User.destroy_all
Trail.destroy_all
Language.destroy_all
Lesson.destroy_all
Game.destroy_all
FlashCard.destroy_all
WordCard.destroy_all
ImgCard.destroy_all

u1 = User.create(name: "Liz", email: "testing@email.com", profile_pic: "https://vignette.wikia.nocookie.net/animalcrossing/images/a/a5/Acnl-celeste.png/revision/latest?cb=20130703203412", password: "123")

lang1 = Language.create(language: "English")
lang2 = Language.create(language: "Korean")

t1 = Trail.create(user_id: u1.id, language_id: lang1.id)

l1 = Lesson.create(language_id: lang1.id, name: "fruits", img_url: "https://blog.bariatriceating.com/wp-content/uploads/2015/09/Dollarphotoclub_78097722-1024x693.jpg")
l2 = Lesson.create(language_id: lang1.id, name: "alphabet", img_url: "https://www.wowwallpaperhanging.com.au/wp-content/uploads/2013/04/Brewers_Wallapper_-_Cheek_Monkeys_-_Alphabet.png?x33484")
l3 = Lesson.create(language_id: lang1.id, name: "animals", img_url: "https://i.pinimg.com/originals/b9/a6/30/b9a6305ff831529bea9bb15a4e393fa0.jpg")

g1 = Game.create(lesson_id: l1.id)
g2 = Game.create(lesson_id: l2.id)
g3 = Game.create(lesson_id: l3.id)

# fc: word, audio, img_url, lesson_id
fruits = [
    {word: "apple", audio: "https://media.merriam-webster.com/audio/prons/en/us/mp3/a/apple001.mp3", img_url: "https://i.redd.it/enxqx1wjsxg21.jpg"},
    {word: "banana", audio: "https://media.merriam-webster.com/audio/prons/en/us/mp3/b/banana01.mp3", img_url: "https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-320-80.jpg"},
    {word: "cherry", audio:  "https://media.merriam-webster.com/audio/prons/en/us/mp3/c/cherry01.mp3", img_url: "https://www.plantshospital.com/wp-content/uploads/2017/11/cherry.jpg"},
    {word: "grape", audio: "https://media.merriam-webster.com/audio/prons/en/us/mp3/g/grape001.mp3", img_url: "https://royalfruitz.com/wp-content/uploads/2018/02/red-grape.jpg"},
    {word: "peach", audio: "https://media.merriam-webster.com/audio/prons/en/us/mp3/p/peach001.mp3", img_url: "https://www.titosvodka.com/uploads/Recipes/Garnishes/_auto1000/Titos-Vodka-Peach-Ingredient.jpg"},
    {word: "watermelon", audio: "https://media.merriam-webster.com/audio/prons/en/us/mp3/w/waterm04.mp3", img_url: "https://cdn.tridge.com/image/original/6f/82/1a/6f821a251e07a2abaf9bf0b7931cab024639dba3.jpg"}
]

alphabet = [
    {word: "A" , audio: "https://media.merriam-webster.com/audio/prons/en/us/mp3/a/a0000001.mp3", img_url: "https://teachables.scholastic.com/content/dam/scholastic/teachables/products/23/9780439393423_011/9780439393423_011_xlg.jpg"},
    {word: "B" , audio: "https://media.merriam-webster.com/audio/prons/en/us/mp3/b/b0000001.mp3", img_url: "https://teachables.scholastic.com/content/dam/scholastic/teachables/products/23/9780439393423_012/9780439393423_012_xlg.jpg"},
    {word: "C" , audio: "https://media.merriam-webster.com/audio/prons/en/us/mp3/c/c0000001.mp3", img_url: "https://teachables.scholastic.com/content/dam/scholastic/teachables/products/23/9780439393423_013/9780439393423_013_xlg.jpg"},
    {word: "D" , audio: "https://media.merriam-webster.com/audio/prons/en/us/mp3/d/d0000001.mp3", img_url: "https://teachables.scholastic.com/content/dam/scholastic/teachables/products/23/9780439393423_014/9780439393423_014_xlg.jpg"},
    {word: "E" , audio: "https://media.merriam-webster.com/audio/prons/en/us/mp3/e/e0000001.mp3", img_url: "https://teachables.scholastic.com/content/dam/scholastic/teachables/products/23/9780439393423_015/9780439393423_015_xlg.jpg"},
    {word: "F" , audio: "https://media.merriam-webster.com/audio/prons/en/us/mp3/f/f0000001.mp3", img_url: "https://teachables.scholastic.com/content/dam/scholastic/teachables/products/23/9780439393423_016/9780439393423_016_xlg.jpg"},
    {word: "G" , audio: "https://media.merriam-webster.com/audio/prons/en/us/mp3/g/g0000001.mp3", img_url: "https://teachables.scholastic.com/content/dam/scholastic/teachables/products/23/9780439393423_017/9780439393423_017_xlg.jpg"},
    {word: "H" , audio: "https://media.merriam-webster.com/audio/prons/en/us/mp3/h/h0000001.mp3", img_url: "https://teachables.scholastic.com/content/dam/scholastic/teachables/products/23/9780439393423_018/9780439393423_018_xlg.jpg"}
]

animals = [
{word:"Elephant", audio:"https://media.merriam-webster.com/audio/prons/en/us/mp3/e/elepha01.mp3", img_url:"https://i.pinimg.com/originals/06/74/c5/0674c5e9defc6a949acf4f96f7818b27.png"},
{word:"Kangaroo", audio:"https://media.merriam-webster.com/audio/prons/en/us/mp3/k/kangar01.mp3", img_url:"https://pngimg.com/uploads/kangaroo/kangaroo_PNG13.png"},
{word:"Lion", audio:"https://media.merriam-webster.com/audio/prons/en/us/mp3/l/lion0001.mp3", img_url:"https://pngimg.com/uploads/lion/lion_PNG23262.png"},
{word:"Ostrich", audio:"https://media.merriam-webster.com/audio/prons/en/us/mp3/o/ostric01.mp3", img_url:"https://pngimg.com/uploads/ostrich/ostrich_PNG76962.png"},
{word:"Panda", audio:"https://media.merriam-webster.com/audio/prons/en/us/mp3/p/panda001.mp3", img_url:"https://pngimg.com/uploads/panda/panda_PNG8.png"}, 
{word:"Zebra", audio:"https://media.merriam-webster.com/audio/prons/en/us/mp3/z/zebra001.mp3", img_url:"https://pngimg.com/uploads/zebra/zebra_PNG8965.png"}
]

fruits.each do |fruit|
    FlashCard.create(
        lesson_id: l1.id,
        word: fruit[:word],
        audio: fruit[:audio],
        img_url: fruit[:img_url]
    )
end

fruits.each do |fruit|
    WordCard.create(
        game_id: g1.id,
        word: fruit[:word]
    )
end

fruits.each do |fruit|
    ImgCard.create(
        word_card_id: WordCard.find_by(word: fruit[:word]).id,
        img_url: fruit[:img_url]
    )
end

alphabet.each do |word|
    FlashCard.create(
        lesson_id: l2.id,
        word: word[:word],
        audio: word[:audio],
        img_url: word[:img_url]
    )
end

alphabet.each do |word|
    WordCard.create(
        game_id: g2.id,
        word: word[:word]
    )
end

alphabet.each do |word|
    ImgCard.create(
        word_card_id: WordCard.find_by(word: word[:word]).id,
        img_url: word[:img_url]
    )
end

animals.each do |word|
    FlashCard.create(
        lesson_id: l3.id,
        word: word[:word],
        audio: word[:audio],
        img_url: word[:img_url]
    )
end

animals.each do |word|
    WordCard.create(
        game_id: g3.id,
        word: word[:word]
    )
end

animals.each do |word|
    ImgCard.create(
        word_card_id: WordCard.find_by(word: word[:word]).id,
        img_url: word[:img_url]
    )
end

