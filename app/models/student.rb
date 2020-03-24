class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def index
  end

  def show
    @student = Student.find(params[:id])
  end
end