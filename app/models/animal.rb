# == Schema Information
#
# Table name: animals
#
#  id          :bigint           not null, primary key
#  name        :text
#  image       :text
#  age         :integer
#  story       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#

class Animal < ApplicationRecord
  belongs_to :category, :optional => true
  has_many :favourites
  has_many :users, through: :favourites
end
