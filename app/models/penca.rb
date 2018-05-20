# == Schema Information
#
# Table name: pencas
#
#  id       :integer          not null, primary key
#  owner_id :integer
#  name     :string
#
# Indexes
#
#  index_pencas_on_owner_id  (owner_id)
#

class Penca < ApplicationRecord
  belongs_to :owner, class_name: 'User'

  has_many :penca_users
  has_many :users, through: :penca_users

  validates :name, presence: true
end
