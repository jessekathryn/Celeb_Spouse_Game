class Celebrity < ApplicationRecord
    has_one_attached :avatar
    belongs_to :marriage
end
