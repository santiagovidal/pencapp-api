# == Schema Information
#
# Table name: matches
#
#  id       :integer          not null, primary key
#  result   :string
#  date     :datetime
#  location :string
#  phase    :integer
#  country1 :string
#  country2 :string
#  group_id :integer
#
# Indexes
#
#  index_matches_on_group_id  (group_id)
#

class Match < ApplicationRecord
  belongs_to :group, optional: true

  has_many :prediction_values

  validates :date, :location, :phase, presence: true
end
