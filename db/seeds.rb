# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if !Building.any?
    building = Building.create!(title: 'EBC Parukářka', address: 'V Kapslovně 2767/2', code: 'PAR')

    room = Room.create!(title: '0.1', code: '0.1', building_id: building.id)

    students = Student.create!([{first_name: 'Daniel', last_name: 'Pudil', email: 'daniel@email.cz', study_type: 'full_time'},
                               {first_name: 'Petr', last_name: 'Pudil', email: 'petr@email.cz', study_type: 'part_time'}])

    teachers = Teacher.create!([{first_name: 'Tomáš', last_name: 'Jukin', email: 'tomas@email.cz'},
                                {first_name: 'Pavel', last_name: 'Bory', email: 'pavel@email.cz'}])

    course = Course.create!(title: 'Webové technologie', code: 'WEB', study_type: 'full_time', language: 'CZECH', students: students, teachers: teachers)

    lesson = Lesson.create!(start_at: '2017-12-18 10:00:00', end_at: '2017-12-18 14:00:00', durration: 4, room_id: room.id, teacher_id: teachers[0].id, course_id: course.id)
end
