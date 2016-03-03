class Entry < ActiveRecord::Base
	include UniqueId
	natural_key :lottery_id
	belongs_to :lottery
end
