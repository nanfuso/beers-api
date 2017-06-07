json.array! @beers.each do |beer|
    json.name beer.name
    json.style beer.style
    json.style beer.yeast
    json.ibu beer.ibu
end