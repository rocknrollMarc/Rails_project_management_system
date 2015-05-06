FactoryGirl.define do
  factory :project do
    name "Project Runway"
    due_date { Date.today - rand(50)}
    start_date { 1.week.ago}
    slug { "#{name.downcase.gsub(" ", "_")}"}
  end
end
