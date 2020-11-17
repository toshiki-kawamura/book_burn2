class BookChapter
  include ActiveModel::Model
  attr_accessor :title, :image, :select_genre_id, :note, :chapter

  with_options presence: true do
    validates :title
    validates :select_genre_id
  end

  def save
    user = current_user.id
    book = Book.create(title: title, image: image, select_genre_id: select_genre_id, note: note, user_id: user.id)
    Chapter.create(chapter: chapter, book_id: book.id)
  end
  
end