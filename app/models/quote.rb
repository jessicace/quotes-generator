class Quote < ActiveRecord::Base
  has_and_belongs_to_many :categories
  belongs_to :medium, polymorphic: true
  validates :content, :attribution, presence: true
end
