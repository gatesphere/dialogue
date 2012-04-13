class Question < ActiveRecord::Base
  attr_accessible :content, :replied_to, :archive_id
  
  validates :content, :presence => true, :length => { :maximum => 140 }
  #validates :replied_to, :presence => true
  
  belongs_to :archive
end
