# fakestoreapi - products
@response = Faraday.get 'https://fakestoreapi.com/products'

products = JSON.parse(@response.body)

products.each do |product|
  Product.find_or_create_by(
    title: product['title'],
    price: product['price'],
    description: product['description'],
    category: product['category'],
    image: product['image'],
    stock: Faker::Alphanumeric.alphanumeric(number: 10)
  )
end

puts 'Seeded Product table'
