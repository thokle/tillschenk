class Comments < ActiveRecord::Base
  attr_accessible :string, :string, :string, :string
  belongs_to :blog
end
