class BooksController < ApplicationController
  # INDEX
  get "/books" do
    @books = Book.all
    erb :"/books/index.html"
  end

  # NEW
  get "/books/new" do
    @book = Book.new params[:book]
    erb :"/books/new.html"
  end

  # CREATE
  post "/books" do
    @book = Book.new params[:book]

    if @book.valid?
      @book.save

      flash[:success] = 'Livro alterado com sucesso!'
      redirect "/books"
    else
      flash[:error] = 'O Livro não pode ser criado :('

      query = { book: @book.attributes }.to_query
      redirect "/books/new?#{query}"
    end
  end

  # SHOW
  get "/books/:id" do
    @book = Book.find_by id: params["id"]
    erb :"/books/show.html"
  end

  # EDIT
  get "/books/:id/edit" do
    @book = Book.find_by id: params["id"]
    erb :"/books/edit.html"
  end

  # UPDATE
  patch "/books/:id" do
    @book = Book.find_by id: params["id"]
    @book.assign_attributes params['book']

    if @book.valid?
      @book.save

      flash[:success] = 'Livro alterado com sucesso!'
      redirect "/books/#{@book.id}"
    else
      flash[:error] = 'O Livro não pode ser alterado :('

      query = { book: @book.attributes }.to_query
      redirect "/books/#{@book.id}/edit?#{query}"
    end
  end

  # DELETE
  delete "/books/:id/delete" do
    @book = Book.find_by id: params["id"]
    @book.destroy

    redirect "/books"
  end
end
