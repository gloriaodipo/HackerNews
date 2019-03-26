class Link < ApplicationRecord
  belongs_to :user, optional: true #prevents ActiveRecord::RecordInvalid
  has_many :votes
end
