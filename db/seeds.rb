# event
events = ["誕生日", "母の日", "父の日", "クリスマス", "結婚記念日", "敬老の日", "クリスマス", "お正月",
  "バレンタインデー", "ホワイトデー", "ひな祭り", "出産祝い", "結婚祝い", "内祝い", "引っ越し祝い", "新築祝い"]
events.count.times do |n|
  Event.create(title: events[n])
end

events = Event.all

flowers = ["チューリップ", "バラ", "ひまわり", "ゆり", "ラン", "カーネーション"]
events.each do |event|
  flowers.count.times do |n|
    Flower.first_or_create(name: flowers[n],
                  event_id: event.id,
                  votes_num: 0)
  end
end
