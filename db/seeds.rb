require 'rest-client'

User.destroy_all
ProgressTrail.destroy_all
Language.destroy_all
Lesson.destroy_all
Game.destroy_all
FlashCard.destroy_all
WordCard.destroy_all
ImgCard.destroy_all

u1 = User.create(name: "Liz", email: "testing@email.com", password: "123")

lang1 = Language.create(language: "English")
lang2 = Language.create(language: "Korean")

pt1 = ProgressTrail.create(user_id: u1.id, language_id: lang1.id)

l1 = Lesson.create(language_id: lang1.id, name: "Fruits", img_url: "https://blog.bariatriceating.com/wp-content/uploads/2015/09/Dollarphotoclub_78097722-1024x693.jpg")
l2 = Lesson.create(language_id: lang1.id, name: "Alphabet", img_url: "https://www.wowwallpaperhanging.com.au/wp-content/uploads/2013/04/Brewers_Wallapper_-_Cheek_Monkeys_-_Alphabet.png?x33484")
l3 = Lesson.create(language_id: lang1.id, name:"Animals", img_url: "https://i.pinimg.com/originals/b9/a6/30/b9a6305ff831529bea9bb15a4e393fa0.jpg")

# fc: word, definition, pronunciation, audio, img_url, lesson_id
fruits = [
    {word: "apple", audio: "https://media.merriam-webster.com/soundc11/a/apple001.wav", img_url: "https://i.redd.it/enxqx1wjsxg21.jpg"},
    {word: "banana", audio: "https://media.merriam-webster.com/soundc11/b/banana01.wav", img_url: "https://cdn.mos.cms.futurecdn.net/42E9as7NaTaAi4A6JcuFwG-320-80.jpg"},
    {word: "cherry", audio:  "https://media.merriam-webster.com/soundc11/c/cherry01.wav", img_url: "https://www.plantshospital.com/wp-content/uploads/2017/11/cherry.jpg"},
    {word: "grape", audio: "https://media.merriam-webster.com/soundc11/g/grape001.wav", img_url: "https://royalfruitz.com/wp-content/uploads/2018/02/red-grape.jpg"},
    {word: "peach", audio: "https://media.merriam-webster.com/soundc11/p/peach001.wav", img_url: "https://www.titosvodka.com/uploads/Recipes/Garnishes/_auto1000/Titos-Vodka-Peach-Ingredient.jpg"},
    {word: "watermelon", audio: "https://media.merriam-webster.com/soundc11/w/waterm04.wav", img_url: "https://cdn.tridge.com/image/original/6f/82/1a/6f821a251e07a2abaf9bf0b7931cab024639dba3.jpg"}
]

# fruit_words = ["apple", "banana", "cherry", "grape", "peach", "watermelon"]

# res = fruit_words.each do |word|
#     RestClient.get("https://dictionaryapi.com/api/v3/references/learners/json/#{word}?key=#{ENV['MW_LEARNERS_API_KEY']}")
# end

fruits.each do |fruit|
    FlashCard.create(
        lesson_id: l1.id,
        word: fruit[:word],
        # definition: res[:def],
        audio: fruit[:audio],
        img_url: fruit[:img_url]
    )
end

g1 = Game.create(lesson_id: l1.id)

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
