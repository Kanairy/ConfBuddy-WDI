# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Event.create(name:"Javascript - Understanding the weird parts", time:"4th of June // 9.30am", presenter:"Douglas Crockford",description:"The famous Javascript programmer and published author Douglas Crockford reveals his most hated parts of popular programming language and tells his secret to overcome these. He also argues why Javascript still remains as the most useful programming language in the future.",sponsor:"Zendesk", stream:"hacker");

Event.create(name:"Why I rather communicate with computers than humans",time:"4th of June // 11.30am", presenter:"Linus Torvalds",description:"Creator of Linux talks about his journey on how he created Linux and why communicating with computers is the most powerful way to communicate.",sponsor:"Deloitte", stream:"hacker");

Event.create(name:"How to rock your own programming language", time:"4th of June // 14.30pm", presenter:"Yukihiro Matsumoto",description:"The creator of the famous programming language Ruby shares his secrets on how to create your own programming language that becomes world-known. He explains the basics of smooth and global way to program as well as the secrets of a powerful framework.",sponsor:"General Assembly", stream:"hacker");

Event.create(name:"Keeping that plane in the air - How to code safely in risky industries", time:"4th of June // 16.00pm", presenter:"Leanna Rierson",description:"The aviation security expert Leanna Rierson talks about the importance of coding when working in risky-prone industries and how to minimize bugs when there are human lives in the game",sponsor:"General Assembly", stream:"hacker");



## я люблю тебя


############# Above the hacker events

Event.create(name:"Uber: Why disruption changes the tech industry", time:"4th of June // 9.00am", presenter:"Travis Calanik",description:"Keynote",sponsor:"General Assembly", stream:"hustler");

Event.create(name:"Why diversity matters in programming", time:"4th of June // 10.30am", presenter:"Reshma Saujani",description:"Keynote",sponsor:"Women Who Code", stream:"hustler");

Event.create(name:"What matters during the first weeks after launching a startup", time:"4th of June // 14.30am", presenter:"Jake Schwartz",description:"Keynote",sponsor:"General Assembly", stream:"hustler");


############# Above the hustler events

Event.create(name:"Why we should love CSS - and what's next", time:"4th of June // 9.30am", presenter:"Hampton Catlin",description:"Keynote",sponsor:"Envato", stream:"hipster");

Event.create(name:"Why we need to think coding like children", time:"4th of June // 11.30am", presenter:"Linda Liukas",description:"Workshop",sponsor:"General Assembly", stream:"hipster");

Event.create(name:"The challenge of millon devices - How to control your layout in one step", time:"4th of June // 14.30pm", presenter:"Jon Duckett",description:"Workshop",sponsor:"General Assembly", stream:"hipster");

Event.create(name:"Why virtual reality drives social change", time:"4th of June // 16.30pm", presenter:"John D. Carmack",description:"Keynote",sponsor:"REA", stream:"hipster");

############# Above the hipster events



# t.string   "name"
# t.integer  "type"
# t.string   "time"
# t.string   "presenter"
# t.text     "description"
# t.string   "sponsor"
# t.datetime "created_at",  null: false
# t.datetime "updated_at",  null: false
# t.string   "stream"
