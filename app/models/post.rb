class Post < ActiveRecord::Base
  attr_accessible :author, :posttext, :title
end
