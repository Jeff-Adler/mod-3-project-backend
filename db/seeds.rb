# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Quiz.destroy_all

quiz1 = Quiz.create(nickname: "Josephine", category: "General Knowledge", difficulty: "easy", score: 23, num_questions: 50)
quiz2 = Quiz.create(nickname: "Esmeralda", category: "Science: Computers", difficulty: "medium", score: 45, num_questions: 50)
quiz3 = Quiz.create(nickname: "NullPlayer", category: "Science: Computers", difficulty: "medium", num_questions: 50)
quiz4 = Quiz.create(nickname: "Robert", category: "Mythology", difficulty: "hard", score: 7, num_questions: 10)
quiz5 = Quiz.create(nickname: "Kristoph", category: "History", difficulty: "easy", score: 4, num_questions: 10)

quiz6 = Quiz.create(nickname: "Sogna Bologna", category: "Celebrities", difficulty: "hard", score: 50, num_questions: 50)
quiz7 = Quiz.create(nickname: "Esmeralda", category: "Mythology", difficulty: "medium", score: 22, num_questions: 50)
quiz8 = Quiz.create(nickname: "Sogna Bologna", category: "Science: Mathematics", difficulty: "hard", score: 50, num_questions: 50)
quiz9 = Quiz.create(nickname: "Kyle Burda", category: "Science: Computers", difficulty: "hard", score: 47, num_questions: 50)
quiz10 = Quiz.create(nickname: "Jeff MF Adler", category: "Entertainment: Japanese Anime & Manga", difficulty: "hard", score: 46, num_questions: 50)

quiz11 = Quiz.create(nickname: "Sarabelle", category: "Politics", difficulty: "medium", score: 9, num_questions: 10)
quiz12 = Quiz.create(nickname: "Wilhelm", category: "Geography", difficulty: "easy", score: 3, num_questions: 10)