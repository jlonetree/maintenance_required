# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Username.delete_all
Message.delete_all
MessageBoard.delete_all
Score.delete_all
PaddleGame.delete_all
ScoreBoard.delete_all

usernames = [
    {name: "Jimbo"},
    {name: "Potion_Seller91"},
    {name: "Delightful_Dawg"},
    {name: "Poggy_Poggu"},
    {name: "YouWillNeverWin_Leave"},
    {name: "CarrotKake"},
    {name: "HowWillYouEverWin"},
    {name: "DevSlump"},
    {name: "Vv_360NoScopeGenius_vV"}
]

usernames.each {| user | Username.create(user)}

messages = [
    {message: "Hey, don't do that", user_id: Username.first.id},
    {message: "Stop spamming messages", user_id: Username.third.id},
    {message: "Hey, look at this Noob, do they understand this is it, they should just leave", user_id: Username.last.id},
    {message: "You should really stop, there is no game, it's under maintenance!!!", user_id: Username.fourth.id},
    {message: "Alright, I hate this message board, I'm going to leave, PEACE!", user_id: Username.second.id}
]

messages.each {| message | Message.create(message)}

# message_boards = [
#     {message_id: Message.first.id},
#     {message_id: Message.second.id},
#     {message_id: Message.third.id},
#     {message_id: Message.fourth.id},
#     {message_id: Message.fifth.id}
# ]

# message_boards.each {|message_board| MessageBoard.create(message_board)}

PaddleGame.create(name: "brick attack")

scores = [
    {score: 999, user_id: Username.first.id, paddle_game_id: PaddleGame.first.id},
    {score: 998, user_id: Username.second.id, paddle_game_id: PaddleGame.first.id},
    {score: 997, user_id: Username.third.id, paddle_game_id: PaddleGame.first.id},
    {score: 995, user_id: Username.fourth.id, paddle_game_id: PaddleGame.first.id},
    {score: 990, user_id: Username.fifth.id, paddle_game_id: PaddleGame.first.id},
    {score: 989, user_id: Username.all[5].id, paddle_game_id: PaddleGame.first.id},
    {score: 980, user_id: Username.all[6].id, paddle_game_id: PaddleGame.first.id},
    {score: 970, user_id: Username.all[7].id, paddle_game_id: PaddleGame.first.id},
    {score: 969, user_id: Username.last.id, paddle_game_id: PaddleGame.first.id}
]

scores.each {| score | Score.create(score)}

# score_boards = [
#     {score_id: Score.first.id},
#     {score_id: Score.second.id},
#     {score_id: Score.third.id},
#     {score_id: Score.fourth.id},
#     {score_id: Score.fifth.id},
#     {score_id: Score.all[5].id},
#     {score_id: Score.all[6].id},
#     {score_id: Score.all[7].id},
#     {score_id: Score.last.id}
# ]

# score_boards.each {|scoreboard| ScoreBoard.create(scoreboard)}