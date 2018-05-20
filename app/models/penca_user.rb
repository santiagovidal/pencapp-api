# == Schema Information
#
# Table name: penca_users
#
#  id       :integer          not null, primary key
#  user_id  :integer
#  penca_id :integer
#
# Indexes
#
#  index_penca_users_on_penca_id  (penca_id)
#  index_penca_users_on_user_id   (user_id)
#

class PencaUser < ApplicationRecord
  belongs_to :user
  belongs_to :penca
end
