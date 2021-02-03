class BooksController < ApplicationController
  
  def top
  end

  def index
  @books = Book.all
  # 以下1行テスト
  @book=Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    @books = Book.all

    # 以下のif文テスト
    if @book.save
    redirect_to("/books/#{@book.id}")
    flash[:notice] = "Book was successfully created."
    else
    render ("books/index")
    end
  end


  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
    flash[:update] = "Book was successfully updated."
    redirect_to("/books/#{@book.id}")
    else
    render ("books/edit")
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to('/books')
    flash[:success] = "Book was successfully destroyed."
  end

  private

    def book_params
    params.require(:book).permit(:title, :body)
    end
end
