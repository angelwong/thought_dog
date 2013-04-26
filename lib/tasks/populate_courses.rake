require 'csv'
namespace :courses do
	desc "Populates DB with Courses"
	task :populate_courses => :environment do
		file = "db/courses.csv"
		CSV.foreach(file) do |line|
		new_course = Course.create(
			call_num: line[0],
			course_title: line[1],
			start_time: line[2],
			end_time: line[3],
			meets_on: line[4],
			building: line[5],
			room: line[6],
			instructor: line[7]
			)
		new_course.save
		end
	end
end