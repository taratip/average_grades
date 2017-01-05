def average(scores)
  average_grade = 0.0
  total_score = 0.0

  scores.each do |score|
    total_score += score
  end

  average_grade = total_score/scores.size.to_f
end

def letter_grade(average_score)
  case
  when average_score > 90
    "A"
  when average_score >= 80 && average_score < 90
    "B"
  when average_score >= 70 && average_score < 80
    "C"
  when average_score >= 60 && average_score < 70
    "D"
  else
    "F"
  end
end

def ranking(students)
  students.each_with_index do |student, index|
    puts "#{index+1}. #{student}"
  end
end

Jane_scores = [98, 95, 88, 97, 74]
puts average(Jane_scores)
puts letter_grade(average(Jane_scores))

Samantha_scores = [85, 93, 98, 88, 49]
puts average(Samantha_scores)
puts letter_grade(average(Samantha_scores))

Matt_scores = [87, 93, 89, 97, 65]
puts average(Matt_scores)
puts letter_grade(average(Matt_scores))

students = ["Johnny", "Jane", "Sally", "Elizabeth", "Michael"]
ranking(students)
