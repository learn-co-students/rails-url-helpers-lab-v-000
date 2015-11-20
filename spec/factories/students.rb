FactoryGirl.define do
  factory :student do
    first_name "Daenerys"
    last_name "Targaryen"
  end

  factory :second_student, class: Student do
    first_name "Lindsey"
    last_name "Stirling"
  end
end