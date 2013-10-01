class Vote < ActiveRecord::Base
  belongs_to :gong

  validates_presence_of :session_id
  validate :is_unique_for_user

  def is_unique_for_user
    if Vote.where(gong_id: self.gong_id, session_id: self.session_id).count > 0
      errors[:base] << "You have already voted on this."
    end
  end
end
