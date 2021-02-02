class Celebrity < ApplicationRecord
    has_one_attached :image
    belongs_to :marriage
end
