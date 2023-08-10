# == Schema Information
#
# Table name: restaurants
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string           not null
#  tel                    :string           not null
#  address                :string           not null
#  description            :text
#  image                  :string
#  close_weekday          :string           not null
#  open_hour              :string           not null
#  UBN                    :string
#  provider               :string
#  uid                    :string
#
require "test_helper"

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
