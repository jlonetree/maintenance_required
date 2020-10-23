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

usernames.each {| user | Username.create!(user)}

MessageBoard.create!(name: "message_board")

messages = [
    {text: "Hey, don't do that", username_id: Username.first.id, message_board_id: MessageBoard.first.id},
    {text: "Stop spamming messages", username_id: Username.third.id, message_board_id: MessageBoard.first.id},
    {text: "Hey, look at this Noob, do they understand this is it, they should just leave", username_id: Username.last.id, message_board_id: MessageBoard.first.id},
    {text: "You should really stop, there is no game, it's under maintenance!!!", username_id: Username.fourth.id, message_board_id: MessageBoard.first.id},
    {text: "Alright, I hate this message board, I'm going to leave, PEACE!", username_id: Username.second.id, message_board_id: MessageBoard.first.id}
]

messages.each do | m | 
    puts m[:user]
    Message.create!(message: m[:message], username_id: m[:username_id], message_board_id: m[:message_board_id])
end
# Message.create!(message: "Hey, don't do that", user: Username.first, message_board_id: MessageBoard.first.id)

PaddleGame.create!(name: "brick attack")

sb = ScoreBoard.create!(name: "scoreboard")

scores = [
    {score: 999, username_id: Username.first.id, paddle_game_id: PaddleGame.first.id, score_board_id: sb.id},
    {score: 998, username_id: Username.second.id, paddle_game_id: PaddleGame.first.id, score_board_id: sb.id},
    {score: 997, username_id: Username.third.id, paddle_game_id: PaddleGame.first.id, score_board_id: sb.id},
    {score: 995, username_id: Username.fourth.id, paddle_game_id: PaddleGame.first.id, score_board_id: sb.id},
    {score: 990, username_id: Username.fifth.id, paddle_game_id: PaddleGame.first.id, score_board_id: sb.id},
    {score: 989, username_id: Username.all[5].id, paddle_game_id: PaddleGame.first.id, score_board_id: sb.id},
    {score: 980, username_id: Username.all[6].id, paddle_game_id: PaddleGame.first.id, score_board_id: sb.id},
    {score: 970, username_id: Username.all[7].id, paddle_game_id: PaddleGame.first.id, score_board_id: sb.id},
    {score: 969, username_id: Username.last.id, paddle_game_id: PaddleGame.first.id, score_board_id: sb.id}
]

scores.each {| score | Score.create!(score)}
