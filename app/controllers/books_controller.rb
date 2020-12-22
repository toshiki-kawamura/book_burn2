class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :move_to_index, except: [:index, :show, :new, :create]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
    @book.chapters.build
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @book = Book.find(params[:id])
    @comment = Comment.new
    @comments = @book.comments.includes(:user)
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      redirect_to book_path
    else
      render :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to root_path
  end

  def genre_page
    @books = Book.all
    @book = Book.find(params[:id])
  end

  private

  def book_params
    params.require(:book).permit(
      :title,
      :image,
      :select_genre_id,
      :note,
      :chapter_box,
      chapters_attributes:[:id, :item, :_destroy]
    ).merge(user_id: current_user.id)
  end

  def move_to_index
    book = Book.find(params[:id])
    redirect_to action: :index unless user_signed_in? && current_user.id == book.user.id
  end
end
