class Blog < ActiveRecord::Base
  attr_accessible :author, :link, :text, :title
  has_many :comments
end
