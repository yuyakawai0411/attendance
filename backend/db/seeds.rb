# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# company = Company.create(name: 'ABC株式会社', work_start_time: '9:00', work_end_time: '18:00')

Operator.create(name: '河合', email: 'samaple@sample.com', password: 'password', role: 1, company_id: 1)
