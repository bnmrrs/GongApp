class Gong < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :votes

  before_create :set_name
  validates_uniqueness_of :name

  def can_vote?(session_id)
    self.votes.where(session_id: session_id).count == 0
  end

  def set_name
    self.name ||= self.generate_unique_name
  end

  def generate_unique_name
    potential_name = (0...5).map { (65 + rand(26)).chr }.join
    if Gong.where(name: potential_name).count > 0
      self.generate_unique_name
    else
      potential_name
    end
  end
end
