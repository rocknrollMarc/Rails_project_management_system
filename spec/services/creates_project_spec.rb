require 'rails_helper'

describe CreatesProject do
  it 'creates a project given a name' do
    creator = CreateProject.new(name: 'Project Runway')
    creator.build
    expect(creator.project.name).to eq('Project Runway')
  end
  
end
