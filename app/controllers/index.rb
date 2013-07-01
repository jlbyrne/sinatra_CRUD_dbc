get '/' do
  @notes = Note.all
  erb :index
end

get '/create' do
  erb :create_note
end

post '/create' do
  Note.create(title: params[:title], content: params[:content])
  redirect '/'
end

get '/edit/:note_id' do |note_id|
  @note = Note.find(note_id) 
  erb :edit_note
end

post '/edit' do
  user_note = Note.find(params[:id])
  user_note.update_attributes(title: params[:title], content: params[:content])
  redirect '/'
end

post '/delete' do
  Note.delete(params[:id])
  redirect '/'
end

get '/notes/:note_id' do |note_id|
  @note = Note.find(note_id)
  erb :show_note
end