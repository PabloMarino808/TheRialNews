# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



User.create(
    email: "admin1@therialnews.com",
    password: "Th3r14lp455w0rd",
    role: 1
)


100.times do 
    Post.create(
        title: Faker::Lorem.sentence,
        content: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4),
    )    
end

puts "Admin generated and 100 posts added"