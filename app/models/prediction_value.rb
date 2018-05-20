# == Schema Information
#
# Table name: prediction_values
#
#  id                    :integer          not null, primary key
#  value                 :string
#  earned_points         :integer
#  match_id              :integer
#  initial_prediction_id :integer
#  user_id               :integer
#  penca_id              :integer
#
# Indexes
#
#  index_prediction_values_on_initial_prediction_id  (initial_prediction_id)
#  index_prediction_values_on_match_id               (match_id)
#  index_prediction_values_on_penca_id               (penca_id)
#  index_prediction_values_on_user_id                (user_id)
#

class PredictionValue < ApplicationRecord
  belongs_to :initial_prediction, optional: true
  belongs_to :match, optional: true
  belongs_to :user
  belongs_to :penca

  validates :value, presence: true
end
