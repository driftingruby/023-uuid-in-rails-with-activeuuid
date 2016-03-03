json.array!(@lotteries) do |lottery|
  json.extract! lottery, :id, :name, :state, :winning_number, :start_date, :end_date
  json.url lottery_url(lottery, format: :json)
end
