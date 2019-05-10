require 'rails_helper'

RSpec.describe "Astronaut index page" do
  before :each do
    @astronaut_1 = Astronaut.create!(name: "Neil Armstrong", age: 37, job: "Commander")
    @astronaut_2 = Astronaut.create!(name: "Buzz Aldrin", age: 36, job: "Navigator")
  end

  describe "When I visit /astronauts" do
    it "shows a list of all astronauts and their info." do

      visit '/astronauts'

      expect(page).to have_content(@astronaut_1.name)
      expect(page).to have_content(@astronaut_1.age)
      expect(page).to have_content(@astronaut_1.job)

      expect(page).to have_content(@astronaut_2.name)
      expect(page).to have_content(@astronaut_2.age)
      expect(page).to have_content(@astronaut_2.job)

    end

    it "shows the average age of all astronauts." do

      visit '/astronauts'

      expect(page). to have_content()
    end
As a visitor,
When I visit '/astronauts'
I see the average age of all astronauts.
  end
end
