# event
Event.create(title: "誕生日")
Event.create(title: "母の日")
Event.create(title: "父の日")
Event.create(title: "クリスマス")
Event.create(title: "結婚記念日")

events = Event.all[0..4]

flowers = ["チューリップ", "バラ", "ひまわり"]
events.each do |event|
  3.times do |n|
    Flower.create(name: flowers[n],
                  event_id: event.id,
                  votes_num: n)
  end
end
