# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'kramdown'

Article.destroy_all

puts 'start...'
10.times {
  article = Article.create!(
    title: Kramdown::Document.new(Faker::Book.title).to_html,
    content: Kramdown::Document.new(Faker::Movie.quote).to_html
  )
}

puts "10 articles created."



