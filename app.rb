require("sinatra")
require("sinatra/reloader")
also_reload("/lib/**/*.rb")


get("/") do
  @input = Term.all()
  erb(:index)
end

post("/terms") do
  word = params.fetch("word")
  definition = params.fetch("definition")
  dictionary_entry = Term.new(word, definition)
  dictionary_entry.save()
  erb(:dictionary)
end
