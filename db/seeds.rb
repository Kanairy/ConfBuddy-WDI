# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

jsEvent = Event.create(name:"Javascript - Understanding the weird parts", time:"4th of June // 9.30am", presenter:"Douglas Crockford",description:"The famous Javascript programmer and published author Douglas Crockford reveals his most hated parts of popular programming language and tells his secret to overcome these. He also argues why Javascript still remains as the most useful programming language in the future.",sponsor:"Zendesk", stream:"hacker", image: "assets/js.gif");

linus = Event.create(name:"Why I rather communicate with computers than humans",time:"4th of June // 11.30am", presenter:"Linus Torvalds",description:"Creator of Linux talks about his journey on how he created Linux and why communicating with computers is the most powerful way to communicate.",sponsor:"Deloitte", stream:"hacker", image:"assets/darpa.jpg");

lang = Event.create(name:"How to rock your own programming language", time:"4th of June // 14.30pm", presenter:"Yukihiro Matsumoto",description:"The creator of the famous programming language Ruby shares his secrets on how to create your own programming language that becomes world-known. He explains the basics of smooth and global way to program as well as the secrets of a powerful framework.",sponsor:"General Assembly", stream:"hacker", image:"assets/code_languages.jpg");

risk = Event.create(name:"Keeping that plane in the air - How to code safely in risky industries", time:"4th of June // 16.00pm", presenter:"Leanna Rierson",description:"The aviation security expert Leanna Rierson talks about the importance of coding when working in risky-prone industries and how to minimize bugs when there are human lives in the game",sponsor:"General Assembly", stream:"hacker", image:"assets/aereospace.jpg");






############# Above the hacker events

disr = Event.create(name:"Uber: Why disruption changes the tech industry", time:"4th of June // 9.00am", presenter:"Travis Calanik",description:"CEO of Uber talks about a global business and why disruption has became the buzzword of the industry. He gives practical advice on how to mix something already invented in a new creative way.",sponsor:"General Assembly", stream:"hustler", image:"assets/uber_ceo.jpg");

divers = Event.create(name:"Why diversity matters in programming", time:"4th of June // 10.30am", presenter:"Reshma Saujani",description:"The founder of Women who code tells why it means to have more women in the industry and what differs women programmer from a male one. Whe gives practical advice for companies to make their work environment as diverse as possible to maximise business goals.",sponsor:"Women Who Code", stream:"hustler", image:"assets/it_women.jpg");

start = Event.create(name:"What matters during the first weeks after launching a startup", time:"4th of June // 14.30am", presenter:"Jake Schwartz",description:"Co-Founder of General Assembly tells a story behind the worldwide startup community and tech hub and how it started as a creative co-working space. He also emphasizes the power of global communities in tech industry.",sponsor:"General Assembly", stream:"hustler", image:"assets/gafounder.jpg");


############# Above the hustler events

cssEvent = Event.create(name:"Why we should love CSS - and what's next", time:"4th of June // 9.30am", presenter:"Hampton Catlin",description:"Famous CSS-expert shares his secret to less-hateable CSS and how to fall in love with responsiveness. He also shares his idea what will be the next trends in Front-End development.",sponsor:"Envato", stream:"hipster", image:"assets/css-love.jpg");

child = Event.create(name:"Why we need to think coding like children", time:"4th of June // 11.30am", presenter:"Linda Liukas",description:"Writer of the famous children's book to learn coding - Linda Liukas - reveals her vision on how adults should think coding as children and why it is important to teach coding to our kids.",sponsor:"General Assembly", stream:"hipster", image: "assets/Hello_Ruby.jpg");

lay = Event.create(name:"The challenge of millon devices - How to control your layout in one step", time:"4th of June // 14.30pm", presenter:"Jon Duckett",description:"The world-known Front-End specialist Jon Duckett gives advice how to handle your layout in the world of million different gadgets and what is the easiest way to make a layout responsive and functioning in different browsers and screens.",sponsor:"General Assembly", stream:"hipster", image:"assets/usability-responsive-design.jpg");

vr = Event.create(name:"Why virtual reality drives social change", time:"4th of June // 16.30pm", presenter:"John D. Carmack",description:"The CTO of Oculus gives a keynote on how virtual reality will drive social change in the future and how it will change our everyday lives all around the world.",sponsor:"REA", stream:"hipster", image:"assets/virtual.jpg");

############# Above the hipster events
javascript = Type.create(name:"Javascript")
css = Type.create(name:"CSS")


javascript.events << jsEvent
css.events << cssEvent

Type.create(name:"Javascript");
Type.create(name:"Ruby");
Type.create(name:"Ruby on Rails");
Type.create(name:"PHP");
Type.create(name:"Python");
Type.create(name:"Jquery");
Type.create(name:"Css");
Type.create(name:"Node");
Type.create(name:"Angular");
Type.create(name:"Git");
Type.create(name:"Databases");
Type.create(name:"Api");
Type.create(name:"Startup");




# User id: nil, first_name: nil, last_name: nil, email: nil, password_digest: nil, buddy: nil, strength: nil, seeking: nil, linkedin_url: nil, created_at: nil, updated_at: nil>


har = User.create(first_name:"Harry", strength:"Javascript", seeking:"Css", password: "tomaatti", email: "ha@ga.co");
ali = User.create(first_name:"Alimain", strength:"Css", seeking:"Javascript", password: "tomaatti", email: "am@ga.co");
kat = User.create(first_name:"Katy", strength:"Css", seeking:"Ruby", password: "tomaatti", email: "kd@ga.co");
pau = User.create(first_name:"Pauliina", strength:"Css", seeking:"Ruby", password: "tomaatti", email: "ps@ga.co");
wol = User.create(first_name:"Wolf", strength:"Ruby", seeking:"Css", password: "tomaatti", email: "nw@ga.co");
pal = User.create(first_name:"Paul", strength:"Ruby", seeking:"Css", password: "tomaatti", email: "ps@ga.co");
lj =  User.create(first_name:"LJ", strength:"Css", seeking:"Angular", password: "tomaatti", email: "lj@ga.co");
chr = User.create(first_name:"Chris", strength:"Ruby", seeking:"Angular", password: "tomaatti", email: "cm@ga.co");
kei = User.create(first_name:"Keith", strength:"Ruby", seeking:"Ruby", password: "tomaatti", email: "cm@ga.co");
avi = User.create(first_name:"avika", strength:"Ruby", seeking:"Angular", password: "tomaatti", email: "cm@ga.co");



jsEvent.users << har
jsEvent.users << ali
jsEvent.users << kat
jsEvent.users << pau
jsEvent.users << wol
jsEvent.users << pal
jsEvent.users << lj
jsEvent.users << chr
jsEvent.users << kei
jsEvent.users << avi


cssEvent.users << har
cssEvent.users << ali
cssEvent.users << kat
cssEvent.users << pau
cssEvent.users << wol
cssEvent.users << pal
cssEvent.users << lj
cssEvent.users << chr
cssEvent.users << kei
cssEvent.users << avi


# Match.create( :"1", user_two_id:"5", event_id:"1")

# t.string   "name"
# t.integer  "type"
# t.string   "time"
# t.string   "presenter"
# t.text     "description"
# t.string   "sponsor"
# t.datetime "created_at",  null: false
# t.datetime "updated_at",  null: false
# t.string   "stream"
#   EVENT      MATCH 
#  JSS event   Wolf
#    current_user.get_all_buddies
# 
# 
# 

