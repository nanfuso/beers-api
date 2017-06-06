100.times do 

    Beer.create!(
                name: Faker::Beer.name,
                style: Faker::Beer.style,
                yeast: Faker::Beer.yeast,
                malts: Faker::Beer.malts,
                ibu: Faker::Beer.ibu
                )

end
