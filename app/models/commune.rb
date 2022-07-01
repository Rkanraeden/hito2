class Commune < ApplicationRecord
    has_and_belongs_to_many :customers
end
