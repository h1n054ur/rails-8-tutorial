# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Create admin user
admin_user = User.find_or_create_by!(email: 'admin@example.com') do |user|
  user.password = 'password123'
  user.password_confirmation = 'password123'
  user.admin = true
end

puts "Created admin user: #{admin_user.email}"

# Create sample published and draft articles
if Article.count == 0
  # Published articles
  3.times do |i|
    article = Article.create!(
      title: "Published Article #{i + 1}",
      content: "This is the content for published article #{i + 1}. It contains enough text to meet the minimum requirements for validation.",
      published: true,
      published_at: Time.current - (i + 1).days
    )
    puts "Created published article: #{article.title}"
  end

  # Draft articles
  2.times do |i|
    article = Article.create!(
      title: "Draft Article #{i + 1}",
      content: "This is the content for draft article #{i + 1}. This article is not yet published and only visible to admins.",
      published: false
    )
    puts "Created draft article: #{article.title}"
  end
end

puts "Seeding completed!"
puts "Admin login: admin@example.com / password123"
