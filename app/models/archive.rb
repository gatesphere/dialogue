class Archive < ActiveRecord::Base
  attr_accessible :complete
  
  validates :complete, :presence => true
  
  has_many :questions
  
  def root_question
    this.questions.first
  end
  
  def last_question
    this.questions.last
  end
  
  def self.incomplete_archive
    archives = Archive.find_by_complete(false)
    archives[rand(archives.length)]
  end
  
  def self.complete_archives
    Archive.find_by_complete(true)
  end
end
