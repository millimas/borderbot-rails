class Event::Prize < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :event
  belongs_to :idol

  validates :idol_id, presence: true
end
