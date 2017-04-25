require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/to_do')

get('/') do
  @tasks = Task.all()
  erb(:index)
end

post('/to_do_form') do
  description = params.fetch("to_do")
  task = Task.new(description)
  task.save()
  erb(:to_do)
end
