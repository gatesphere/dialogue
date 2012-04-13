class Archive < ActiveRecord::Base
  attr_accessible :complete
  
  has_many :questions, :dependent => :destroy
  
  def root_question
    self.questions.first
  end
  
  def last_question
    self.questions.last
  end
  
  def self.incomplete_archive
    archives = Archive.where(:complete => false)
    if archives
      archives[rand(archives.length)]
    else
      Archive.all[rand(Archive.count)]
    end
  end
  
  def self.complete_archives
    Archive.find_by_complete(true)
  end
end
