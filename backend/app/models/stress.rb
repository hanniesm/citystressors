class Stress < ApplicationRecord
    belongs_to: stress_type
    belongs_to: walk
end
