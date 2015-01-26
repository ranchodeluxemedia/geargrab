# == Schema Information
#
# Table name: posts
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  category_id   :integer
#  title         :string
#  description   :string
#  price         :decimal(, )
#  location      :string
#  featured_post :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Post < ActiveRecord::Base
end
