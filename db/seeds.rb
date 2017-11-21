# event
events = ["母の日", "父の日", "敬老の日", "結婚記念日", "誕生日"]
events_images = ["hahanohi_present", "chichinohi_present_oyako_white", "keirou_couple_flower2", "wedding_couple","birthday_animal"]

events.count.times do |n|
  Event.create(title: events[n], image: events_images[n])
end

events = Event.all

flowers = ["バラ", "チューリップ", "カーネーション"]
hanakotobas = ["「愛」「美」", "「思いやり」", "「無垢で深い愛」"]
flowers_images = ["chichinohi_rose_red", "flower_tulip", "carnation_hanataba"]

events.each do |event|
  flowers.count.times do |n|
    Flower.create(name: flowers[n],
                  event_id: event.id,
                  hanakotoba: hanakotobas[n],
                  image: flowers_images[n],
                  votes_num: 0)
  end
end
