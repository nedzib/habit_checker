# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create!(email: "test@test.com", username: "doe", password: "123456", password_confirmation: "123456",confirmed_at: Time.now.utc)

routine = Routine.create!(user: user)

activity_1 = Activity.create!(routine: routine, name: "Leer Harry Potter", description: "Leer el tercer libro de Harry", repetition: :every_day, repetition_spacing: 2, icon: "wand")
activity_2 = Activity.create!(routine: routine, name: "Visitar Jhon Doe", description: "Ir cada mes a La Dorada", repetition: :every_month, repetition_spacing: 1, icon: "car")
activity_3 = Activity.create!(routine: routine, name: "ir al Gym", description: "Fortalecer piernas", repetition: :every_week, repetition_spacing: 1, icon: "dumbbell")
activity_4 = Activity.create!(routine: routine, name: "Renovar Votos", description: "Reencontrarnos", repetition: :every_year, repetition_spacing: 1, icon: "rings-weeding")
activity_5 = Activity.create!(routine: routine, name: "Escribir en diario", description: "Salud mental", repetition: :every_day, repetition_spacing: 1, icon: "book", status: :disabled)


### Para la actividad 1
Attempt.create!(activity: activity_1)
attempt_1 = Attempt.create!(activity: activity_1, result: :failed)
attempt_2 = Attempt.create!(activity: activity_1, result: :success)

attempt_1.update!(created_at: Time.now-2.days)
attempt_2.update!(created_at: Time.now-1.days)

### Para la actividad 2
Attempt.create!(activity: activity_2)
attempt_1 = Attempt.create!(activity: activity_2, result: :failed)
attempt_2 = Attempt.create!(activity: activity_2, result: :success)

attempt_1.update!(created_at: Time.now-2.months)
attempt_2.update!(created_at: Time.now-1.months)


### Para la actividad 3
Attempt.create!(activity: activity_3)
attempt_1 = Attempt.create!(activity: activity_3, result: :failed)
attempt_2 = Attempt.create!(activity: activity_3, result: :success)

attempt_1.update!(created_at: Time.now-2.weeks)
attempt_2.update!(created_at: Time.now-1.weeks)


### Para la actividad 4
Attempt.create!(activity: activity_4)
attempt_1 = Attempt.create!(activity: activity_4, result: :failed)
attempt_2 = Attempt.create!(activity: activity_4, result: :success)

attempt_1.update!(created_at: Time.now-2.years)
attempt_2.update!(created_at: Time.now-1.years)

### Para la actividad 5
attempt_0 = Attempt.create!(activity: activity_5, result: :failed)
attempt_1 = Attempt.create!(activity: activity_5, result: :failed)
attempt_2 = Attempt.create!(activity: activity_5, result: :success)

attempt_0.update!(created_at: Time.now-3.days)
attempt_1.update!(created_at: Time.now-2.days)
attempt_2.update!(created_at: Time.now-1.days)