class BooksController < ApplicationController
  get "/books" do
    @books = Book.all
    erb :"/books/index.html"
  end

  get "/books/new" do
    erb :"/books/new.html"
  end

  post "/books" do
    @book = Book.new params[:book]

    if @book.save
      redirect "/books"
    else
      erb :"/books/new.html"
    end
  end

  get "/books/:id" do
    @book = Book.find_by id: params["id"]
    erb :"/books/show.html"
  end

  get "/books/:id/edit" do
    @book = Book.find_by id: params["id"]
    erb :"/books/edit.html"
  end

  patch "/books/:id" do
    @book = Book.find_by id: params["id"]
    @book.assign_attributes params['book']

    if @book.save
      redirect "/books/#{@book.id}"
    else
      erb :"/books/new.html"
    end
  end

  delete "/books/:id/delete" do
    @book = Book.find_by id: params["id"]
    @book.destroy

    redirect "/books"
  end
end
