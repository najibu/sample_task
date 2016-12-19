require 'rake'

task :calculate_averages => :environment do
  products = Product.all 

  products.each do |product|
    puts "Claculating average rating for #{product.name}..."
    product.update_attribute(:average_rating, product.reviews.average("rating"))
  end
end