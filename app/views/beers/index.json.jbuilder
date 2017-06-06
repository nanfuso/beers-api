json.array! @beers.each do |beer|
    json.name beer.name
    json.style beer.style
    json.yeast beer.yeast
    json.malts beer.malts
    json.ibu beer.ibu
end