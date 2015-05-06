require 'rails_helper'

describe "adding projects" do
  it 'allows a user to create a project with tasks' do
    visit new_project_path
    fill_in 'Name', with: 'Project Runway'
    fill_in 'Tasks', with: 'Task 1:3\nTask2:5'
    click_on('Create Project')
  end
end
