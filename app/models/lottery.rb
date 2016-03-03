class Lottery < ActiveRecord::Base
	include UniqueId
	has_many :entries, dependent: :destroy
	def winning_entries
	  entries.where(numbers: self.winning_number)
	end
end
