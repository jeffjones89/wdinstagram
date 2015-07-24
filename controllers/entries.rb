get '/new' do
  erb :new
end

post '/' do
  Entry.create(params[:entry])
  redirect '/'
end
#edit
get '/:id/edit' do
  @entry = Entry.find(params[:id])
  erb :edit
end

put '/:id' do
  @entry = Entry.find(params[:id])
  @entry.update(params[:entry])
  redirect "/#{@entry.id}"
end

get '/' do
  @entries = Entry.all.order('date_taken desc')
  erb :index
end

get '/:id' do
  @entry = Entry.find(params[:id])
  erb :show
end
