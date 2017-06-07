json.array! @beers.each do |beer|
    json.name beer.name
    json.id beer.id
    json.style beer.style
    json.ibu beer.ibu
end