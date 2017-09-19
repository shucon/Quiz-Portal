class UserStat < ApplicationRecord
  after_initialize :set_defaults, unless: :persisted?
  # The set_defaults will only work if the object is new

  def set_defaults
    self.highest_score  ||= 0
    self.last_ques  ||= 0
    self.score  ||= 0
  end

end
