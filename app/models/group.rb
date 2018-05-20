# == Schema Information
#
# Table name: groups
#
#  id   :integer          not null, primary key
#  name :string
#

class Group < ApplicationRecord
  has_many :matches
end
