# event
events = ["母の日", "父の日", "敬老の日", "結婚記念日", "誕生日"]
events_images = ["hahanohi_present", "chichinohi_present_oyako_white", "keirou_couple_flower2", "wedding_couple","birthday_animal"]

events.count.times do |n|
  Event.create(title: events[n], image: events_images[n])
end

events = Event.all

flowers = ["バラ", "チューリップ", "カーネーション", "ゆり", "コチョウラン"]
hanakotobas = ["「愛」「美」", "「思いやり」", "「無垢で深い愛」", "「純粋」「無垢」「威厳」", "「幸福が飛んでくる」「純粋な愛」"]
flowers_images = []

events.each do |event|
  flowers.count.times do |n|
    Flower.create(name: flowers[n],
                  event_id: event.id,
                  hanakotoba: hanakotobas[n],
                  votes_num: 0)
  end
end
