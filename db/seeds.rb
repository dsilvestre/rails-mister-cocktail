require 'json'
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
parse_ingredients = open(url).read
ingredients = JSON.parse(parse_ingredients)

ingredients["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

