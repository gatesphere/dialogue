module ApplicationHelper

  def title
    base_title = "dialogue"
    if @title.nil?
      base_title
    else
      "#{base_title} :: #{@title}"
    end
  end
  
  def question(id = nil)
    if id
      @archive_id = id
      @meditation = Archive.find(id).last_question
    else
      archive = Archive.incomplete_archive
      @archive_id = archive.id
      @metidation = archive.last_question
    end
  end
end
