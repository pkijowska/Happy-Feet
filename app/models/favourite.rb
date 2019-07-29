# == Schema Information
#
# Table name: favourites
#
#  id         :bigint           not null, primary key
#  user_id    :integer
#  animal_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Favourite < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :animal, :optional => true
end
