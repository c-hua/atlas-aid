class Patient < ActiveRecord::Base
  has_many :vitals
  has_many :current_vitals
  has_many :comments
  has_many :events
  belongs_to :doctors
end
