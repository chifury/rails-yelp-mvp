Restaurant.destroy_all

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORIES.sample
  )


  3.times do
      Review.create!(
      rating: rand(0..5).to_i,
      content: Faker::Quotes::Shakespeare.hamlet_quote,
      restaurant: restaurant
    )
  end

end
