class Post < ActiveRecord::Base
  belongs_to :author

  def author=(name)
    unless name == ""
      self.author_id = Author.find_or_create_by(name: name).id
    end
  end
end