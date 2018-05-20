# == Schema Information
#
# Table name: initial_predictions
#
#  id          :integer          not null, primary key
#  code        :integer
#  points      :integer
#  result      :string
#  description :string
#

class InitialPrediction < ApplicationRecord
  has_many :prediction_values

  validates :code, :points, :description, presence: true

  enum code: [:uruguay_top_scorer, :uruguay_final_phase, :top_scorer, :best_goalie,
              :round_of_16, :quarterfinals, :semifinals, :third_place, :final, :champion]
end
