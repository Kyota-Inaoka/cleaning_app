class CleaningPost < ApplicationRecord
  belongs_to :user

  enum place_id: {living: 0, bath: 1, kitchen: 2}
  enum required_time_id: {min15: 0, min30: 1, hour1: 2, morethan: 3}
end
