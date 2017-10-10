# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.destroy_all
Batch.destroy_all


batch1 = Batch.create!(code: 1, starts_at: Date.today + 1, ends_at: Date.today + 10)
batch2 = Batch.create(code: 2, starts_at: Date.today + 10, ends_at: Date.today + 15)
batch3 = Batch.create(code: 3, starts_at: Date.today + 15, ends_at: Date.today + 20)


student1 = Student.create!(name: "Jane", image_url: "image", batch: batch1)
student2 = Student.create!(name: "Jamie", image_url: "image", batch: batch1)
student3 = Student.create!(name: "Harriet", image_url: "image", batch: batch1)

student4 = Student.create!(name: "Vicky", image_url: "image", batch: batch1)
student5 = Student.create!(name: "Amy", image_url: "image", batch: batch1)
student6 = Student.create!(name: "Darlene", image_url: "image", batch: batch1)

evaluation1 = Evaluation.create(day: Date.today - 2, color_code: "green", remarks: "Good", student: student1)
evaluation2 = Evaluation.create(day: Date.today - 3, color_code: "green", remarks: "Much better", student: student1)
