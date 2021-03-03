# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# User.destroy_all
# Game.destroy_all
# UserGame.destroy_all
# PlaySession.destroy_all
# Review.destroy_all
# Tag.destroy_all

User.create!(username: "jmoney", password: "123", name: "jeremy", avatar: "https://imgsrc.hubblesite.org/hvi/uploads/image/social_media_image/3862/STScI-H-2015-01-c-display-M16.png", bio: "Lookin' to game", discord: "j#0001", lfg: true)
User.create!(username: "cool_dude1",  password: "123",name: "keanu", avatar: "https://cdn.vox-cdn.com/thumbor/Yd7b7iobK45wxkAo-62R39OItbU=/1400x1400/filters:format(png)/cdn.vox-cdn.com/uploads/chorus_asset/file/16329042/cyberpunk_2077_keanu_reeves_1920.png", bio: "Wake the frick up Samurai, We got a city to burn", discord: "kr#0001", lfg: true)
User.create!(username: "makima happy meal",  password: "123", name: "greg", avatar: "https://i.redd.it/h3u4akn5vmy31.jpg", bio: "woof", discord: "bigmak#5313", lfg: true)
User.create!(username: "genji_main_btw",  password: "123", name: "steph", avatar: "https://i.pinimg.com/originals/c9/30/c1/c930c11c3c46486f69a27d62f708036c.jpg", bio: "If I don't get genji, I leave game", discord: "asdwqwe#0123", lfg: true)

Game.create!(name: "League of Legends", genre: "MOBA", image:"https://i2.wp.com/www.techdigest.tv/wp-content/uploads/2020/09/league-of-legends.jpg?ssl=1" , splash:"https://wallpaperaccess.com/full/217097.jpg" )
Game.create!(name: "Apex Legends", genre: "Battle Royale", image: "https://cdn.wccftech.com/wp-content/uploads/2019/02/apex-legends-keyart.jpg", splash: "https://image-cdn.essentiallysports.com/wp-content/uploads/20201001212953/apex-legends-5.jpg")
Game.create!(name: "Valorant", genre: "First-Person Shooter", image: "https://www.riotgames.com/darkroom/1440/d0807e131a84f2e42c7a303bda672789:3d02afa7e0bfb75f645d97467765b24c/valorant-offwhitelaunch-keyart.jpg", splash: "https://images6.alphacoders.com/107/thumb-1920-1072679.jpg")
Game.create!(name: "Overwatch", genre: "First-Person Shooter", image: "https://i.ytimg.com/vi/UEYp1RTvllM/maxresdefault.jpg", splash: "https://overwatch2-static.playoverwatch.com/5247d533591a956bf54ba216fba501ecb081356d/static/images/share.jpg")
Game.create!(name: "Dota 2", genre: "MOBA", image: "https://cdn-5c489073f911c8147449b474.closte.com/wp-content/uploads/2020/02/Dota-2-scaled-1-1600x901.jpg", splash: "https://i.redd.it/ucrs440kdyi31.jpg")
Game.create!(name: "Among Us", genre: "Party", image: "https://cdn.akamai.steamstatic.com/steam/apps/945360/capsule_616x353.jpg?t=1611793703", splash: "https://cnet3.cbsistatic.com/img/C_J1PUATAExNP3p1z2e0x083KEk=/0x154:1000x778/1200x675/2020/10/21/9f706d3a-dc30-4937-8195-47aa345288e5/promofinal.jpg")

# UserGame.create!(user_id: User.first.id, game_id: Game.first.id, details: "Hit Challenger S4, hit me up", platform: "PC", server: "NA")
# UserGame.create!(user_id: User.second.id, game_id: Game.first.id, details: "Only play unranked lol", platform: "PC", server: "NA")
# UserGame.create!(user_id: User.first.id, game_id: Game.second.id, details: "20k kills on wraith, wraith main btw xD", platform: "PC", server: "NA")

# PlaySession.create!(sender_id: User.first.id, receiver_id: User.second.id, game_id: Game.first.id, is_accepted: true, rejected: false)

#  Review.create!(reviewer_id: User.first.id, reviewee_id: User.second.id, contents: "Very cool guy test test", rating: 4.5, play_session_id: PlaySession.first.id)

Game.create!(name: "CS:GO", genre: "First-Person-Shooter", image:"http://media.steampowered.com/apps/csgo/blog/images/fb_image.png?v=6" , splash:"https://games.mxdwn.com/wp-content/uploads/2020/02/csgo-1.jpg" )
Game.create!(name: "Rainbow Six: Siege", genre: "First-Person-Shooter", image:"https://www.essentiallysports.com/wp-content/uploads/capsule_616x353-7-1.jpg" , splash:"https://external-preview.redd.it/OJdehErYVLVuTKHvv8zcyD02lR3PzL2l0oOLqfIBFug.jpg?auto=webp&s=2465866c4d1aacdbf2d577a14344b246650c4f3f" )
Game.create!(name: "Call of Duty", genre: "First-Person-Shooter", image:"https://www.callofduty.com/content/dam/atvi/callofduty/cod-touchui/kronos/common/social-share/social-share-image.jpg" , splash:"https://interfaceingame.com/wp-content/uploads/call-of-duty-mobile/call-of-duty-mobile-banner.jpg" )
Game.create!(name: "Teamfight Tactics", genre: "Auto Chess", image:"https://lolstatic-a.akamaihd.net/frontpage/apps/prod/tft-microsite/en_US/4627a7b383b9145327c711513ad2dc731c3c7f2d/assets/images/social-1200x630.jpg" , splash:"https://support-teamfighttactics.riotgames.com/hc/article_attachments/360089069993/TFT_Fates_TW_Banner_V2.jpg" )
Game.create!(name: "Halo MCC", genre: "First-Person-Shooter", image:"https://static0.gamerantimages.com/wordpress/wp-content/uploads/2021/02/halo-master-chief-collection-helmet-blue-outline.jpg" , splash:"https://i.imgur.com/DbBuSkC.jpg" )
Game.create!(name: "PUBG", genre: "First-Person-Shooter", image:"https://akm-img-a-in.tosshub.com/sites/btmt/images/stories/pubg_game_660_141020121948.jpg" , splash:"https://cdn.game.tv/game-tv-content/images_3/cdf6ea9f8b79f396ac09484f20606dc2/Banners.jpg" )
Game.create!(name: "Fortnite", genre: "Third-Person-Shooter", image:"https://www.nintendo.com/content/dam/noa/en_US/games/switch/f/fortnite-switch/fortnite-switch-hero.jpg" , splash:"https://cdn2.unrealengine.com/Fortnite%2FtempUpload%2FSocialContainer_Header-1903x480-158d958b2fee0adece68a8cce4d97a8637adc0c5.jpg" )
Game.create!(name: "Destiny 2", genre: "First-Person-Shooter", image:"https://wallpaperaccess.com/full/27583.jpg" , splash:"https://www.squarexo.co.uk/wp-content/uploads/2018/10/destiny-2-forsaken-hero-banner-04-ps4-us-26jun18.jpeg" )
Game.create!(name: "Escape from Tarkov", genre: "First-Person-Shooter", image:"https://i.redd.it/wvhp9gngz7941.jpg" , splash:"https://cdn.game.tv/game-tv-content/images_3/ba77327cfd9b2a2e077ee65b19c067f6/Banners.jpg" )
Game.create!(name: "World of Warcraft", genre: "MMORPG", image:"https://bleedingcool.com/wp-content/uploads/2020/05/World-of-Warcraft-Shadowlands-Main-Logo-Art-1200x900.jpg" , splash:"https://cdn.mmos.com/wp-content/uploads/2017/02/world-of-warcraft-token-changes-news-banner.jpg" )
Game.create!(name: "Black Desert Online", genre: "MMORPG", image:"https://steamcdn-a.akamaihd.net/steam/apps/582660/capsule_616x353.jpg?t=1599178252" , splash:"https://cdn.mmos.com/wp-content/uploads/2019/09/black-desert-online-ps4-awakening-banner.jpg" )
Game.create!(name: "Phasmophobia", genre: "Horror", image:"https://cdn.cloudflare.steamstatic.com/steam/apps/739630/capsule_616x353.jpg?t=1611245377" , splash:"https://britgamer.s3.eu-west-1.amazonaws.com/2020-12/phasmophobia-banner.jpg" )
Game.create!(name: "Genshin Impact", genre: "RPG", image:"https://www.gamerefinery.com/wp-content/uploads/2020/10/genshin-impact-header.jpg" , splash:"https://www.zeldadungeon.net/wp-content/uploads/2020/11/Genshin-Impact-Zelda-Inspired-850x329.jpg" )
Game.create!(name: "Fall Guys", genre: "Party", image:"https://i.ytimg.com/vi/tmWwGP5mROg/maxresdefault.jpg" , splash:"https://magazine.artstation.com/wp-content/uploads/2020/10/Fall_Guys_page_header.jpg" )
Game.create!(name: "Rocket League", genre: "Arcade", image:"https://cdn.images.express.co.uk/img/dynamic/143/590x/Rocket-League-free-update-1334320.jpg?r=1599821812845" , splash:"https://i.redd.it/hlt1uo3sx6201.png" )
Game.create!(name: "Minecraft", genre: "Sandbox", image:"https://i.stack.imgur.com/dqVlX.png" , splash:"https://coverfiles.alphacoders.com/407/40752.jpg" )
Game.create!(name: "Dead by Daylight", genre: "Horror", image:"https://www.sideshow.com/wp/wp-content/uploads/2020/06/dead-by-daylight-switch-hero.jpg" , splash:"https://d2908q01vomqb2.cloudfront.net/91032ad7bbcb6cf72875e8e8207dcfba80173f7c/2019/11/22/DBD-Trapper-HighRes-copy.jpg" )
Game.create!(name: "Terraria", genre: "Sandbox", image:"https://www.videogameschronicle.com/files/2021/02/terraria.jpg" , splash:"https://steamcdn-a.akamaihd.net/steam/apps/105600/library_hero.jpg?t=1588170166" )


Tag.create!(name: "Chill")
Tag.create!(name: "Tilt-proof")
Tag.create!(name: "Team player")
Tag.create!(name: "Friendly")
Tag.create!(name: "Interactive")
Tag.create!(name: "Strategic")
Tag.create!(name: "Humorous")
Tag.create!(name: "Creative")
Tag.create!(name: "Carry")
