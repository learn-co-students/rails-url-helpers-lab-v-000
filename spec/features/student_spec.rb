require 'rails_helper'

feature 'Route to view' do
  scenario 'has an index page' do
    visit students_path
    expect(page.status_code).to eq(200)
  end
end

feature 'Multiple students are shown' do
  let(:index_page_student) { FactoryGirl.create(:student) }

  scenario 'on the index page' do
    FactoryGirl.create(:second_student)
    visit students_path
    expect(page).to have_content(/Daenerys|Lindsey/)
  end
end

feature 'Show page' do
  let(:show_page_student) { FactoryGirl.create(:student) }

  scenario 'renders properly' do
    visit student_path(show_page_student)
    expect(page.status_code).to eq(200)
  end

  scenario 'renders the first name in a h1 tag' do
    visit student_path(show_page_student)
    expect(page).to have_css("h1", text: "Daenerys")
  end

  scenario 'renders the last name in a h1 tag' do
    visit student_path(show_page_student)
    expect(page).to have_css("h1", text: "Targaryen")
  end
end

feature 'linking from the index page to the show page' do
  let(:link_to_student) { FactoryGirl.create(:student) }

  scenario 'index page links to post page' do
    visit students_path
    expect(page).to have_link(link_to_student.full_name, href: student_path(link_to_student))
  end
end