# == Schema Information
#
# Table name: categories
#
#  id        :bigint           not null, primary key
#  name      :text
#  animal_id :integer
#

class Category < ApplicationRecord
  has_many :animals
end
