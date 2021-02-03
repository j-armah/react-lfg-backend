# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Game.destroy_all
UserGame.destroy_all
PlaySession.destroy_all

User.create(username: "jmoney", name: "jeremy", avatar: "https://imgsrc.hubblesite.org/hvi/uploads/image/social_media_image/3862/STScI-H-2015-01-c-display-M16.png", bio: "Lookin' to game", discord: "j#0001", lfg: false)
User.create(username: "cool_dude1", name: "keanu", avatar: "https://cdn.vox-cdn.com/thumbor/Yd7b7iobK45wxkAo-62R39OItbU=/1400x1400/filters:format(png)/cdn.vox-cdn.com/uploads/chorus_asset/file/16329042/cyberpunk_2077_keanu_reeves_1920.png", bio: "Wake the frick up Samurai, We got a city to burn", discord: "kr#0001", lfg: false)

Game.create!(name: "League of Legends", genre: "MOBA", image:"https://i2.wp.com/www.techdigest.tv/wp-content/uploads/2020/09/league-of-legends.jpg?ssl=1" , splash:"https://wallpaperaccess.com/full/217097.jpg" )
Game.create(name: "Apex Legends", genre: "Battle Royale", image: "https://cdn.wccftech.com/wp-content/uploads/2019/02/apex-legends-keyart.jpg", splash: "https://image-cdn.essentiallysports.com/wp-content/uploads/20201001212953/apex-legends-5.jpg")
Game.create(name: "Valorant", genre: "First-Person Shooter", image: "https://www.riotgames.com/darkroom/1440/d0807e131a84f2e42c7a303bda672789:3d02afa7e0bfb75f645d97467765b24c/valorant-offwhitelaunch-keyart.jpg", splash: "https://images6.alphacoders.com/107/thumb-1920-1072679.jpg")
Game.create(name: "Overwatch", genre: "First-Person Shooter", image: "https://i.ytimg.com/vi/UEYp1RTvllM/maxresdefault.jpg", splash: "https://overwatch2-static.playoverwatch.com/5247d533591a956bf54ba216fba501ecb081356d/static/images/share.jpg")
Game.create(name: "Dota 2", genre: "MOBA", image: "https://cdn-5c489073f911c8147449b474.closte.com/wp-content/uploads/2020/02/Dota-2-scaled-1-1600x901.jpg", splash: "https://i.redd.it/ucrs440kdyi31.jpg")
Game.create(name: "Among Us", genre: "Party", image: "https://cdn.akamai.steamstatic.com/steam/apps/945360/capsule_616x353.jpg?t=1611793703", splash: "https://cnet3.cbsistatic.com/img/C_J1PUATAExNP3p1z2e0x083KEk=/0x154:1000x778/1200x675/2020/10/21/9f706d3a-dc30-4937-8195-47aa345288e5/promofinal.jpg")

UserGame.create(user_id: User.first.id, game_id: Game.first.id, details: "Hit Challenger S4, hit me up")
UserGame.create(user_id: User.second.id, game_id: Game.first.id, details: "Only play unranked lol")
UserGame.create(user_id: User.first.id, game_id: Game.second.id, details: "20k kills on wraith, wraith main btw xD")

PlaySession.create!(sender_id: User.first.id, receiver_id: User.second.id, game_id: Game.first.id, is_accepted: false)