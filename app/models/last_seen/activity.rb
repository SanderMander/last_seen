module LastSeen
  class Activity < ApplicationRecord
    belongs_to :user
  end
end
