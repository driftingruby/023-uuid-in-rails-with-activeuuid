# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def time_rand from = 0.0, to = Time.now
  Time.at(from + rand * (to.to_f - from.to_f))
end

10.times do |i|
  puts "Creating Lottery ##{i}"
  lottery = Lottery.new
  lottery.name = "#{Faker::Address.state} #{Faker::Hacker.noun.titleize} Lottery"
  lottery.state = Faker::Address.state_abbr
  winning_number = []
  while winning_number.size < 4
    winning_number << Random.rand(9)
  end
  winning_number = winning_number.join('-')
  lottery.winning_number = winning_number
  random_date = time_rand
  lottery.start_date = random_date
  lottery.end_date = random_date + 1.week
  lottery.save!
  Random.rand(40_000).times do |ii|
    entry = lottery.entries.new
    entry_number = []
    while entry_number.size < 4
      entry_number << Random.rand(9)
    end
    entry_number = entry_number.join('-')
    entry.numbers = entry_number
    puts 'WINNING ENTRY' if winning_number == entry_number
    entry.save!
  end
end