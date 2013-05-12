#puts "some stuff is being written somewhere"
require 'csv'
namespace :courses do
	desc "Populates DB with Courses"
	task :populate_courses => :environment do
		#puts "starting to read in CSV"

		file = "db/courses.csv"
		#if (file != NIL)
			#puts "file is a thing!"
		#end

		CSV.foreach(file) do |line|
		#p "inside foreach#{line[0]}"

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

 		#p "success!"



	end
end
##CallNumber,CourseTitle,StartTime1,EndTime1,
##MeetsOn1,Building1,Room1,Instructor1Name

##11037,"TOPICS IN COMPUTER SCIENCE","16:10:00","18:00:00",
##"W","HAMILTON HAL","503","LI, KEVIN A"