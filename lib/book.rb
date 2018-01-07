require 'date'

class Book
  attr_reader :id, :title, :author, :description

  def initialize(id, title, author, description)
    @id = id
    @title = title
    @author = author
    @description = description
  end
end
