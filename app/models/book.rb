# == Schema Information
#
# Table name: books
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  title      :string(255)
#  author     :string(255)
#  hq1        :string(255)
#  hq2        :string(255)
#  hq3        :string(255)
#  hq4        :string(255)
#  hq5        :string(255)
#  hq6        :string(255)
#  hq7        :string(255)
#  hq8        :string(255)
#  hq9        :string(255)
#  hq10       :string(255)
#  hq11       :string(255)
#  hq12       :string(255)
#  hq13       :string(255)
#  hq14       :string(255)
#  hq15       :string(255)
#  hq16       :string(255)
#  hq17       :string(255)
#  user_id    :integer
#
class Book < ApplicationRecord
    belongs_to :user

    validates :title, presence: true
    validates :author, presence: true
end
