json.extract! book, :id, :title, :author, :pagecount, :user_id, :tradeable, :created_at, :updated_at
json.url book_url(book, format: :json)
