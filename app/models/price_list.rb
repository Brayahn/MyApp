class PriceList < ApplicationRecord
    has_many :dealers
    has_many :items
end
