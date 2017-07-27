class Check < ApplicationRecord
	belongs_to :account
	paginates_per 5
end
