module ApplicationHelper

  def activate_student_path(student)#@student => student
    "students/#{student.id}/activate"
  end
end
