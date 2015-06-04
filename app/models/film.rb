class Film < ActiveRecord::Base
  has_many :quotes, as: :medium
end
