# event
events = ["誕生日", "母の日", "父の日", "クリスマス", "結婚記念日", "敬老の日", "お正月", "ひな祭り"]
images = ["birthday_animal", "hahanohi_present", "chichinohi_present_oyako_white", "flower_xmas", "wedding_couple", "keirou_couple_flower2", "osyougatsu_hanataba", "hinamatsuri_title"]

events.count.times do |n|
  Event.create(title: events[n], image: images[n])
end

events = Event.all

flowers = ["チューリップ", "バラ", "ひまわり", "ゆり", "ラン", "カーネーション"]
events.each do |event|
  flowers.count.times do |n|
    Flower.create(name: flowers[n],
                  event_id: event.id,
                  votes_num: 0)
  end
end
