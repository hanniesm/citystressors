class Walk < ApplicationRecord
    belongs_to: user
    has_many: stresses
end
