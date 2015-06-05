class Category < ActiveRecord::Base
  has_and_belongs_to_many :quotes
  validates :name, presence: true, uniqueness: true

  def self.quotes_by_theme(theme)
    self.where(name: theme).joins(:quotes).first
  end
end
