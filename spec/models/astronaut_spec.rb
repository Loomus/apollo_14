require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions }
    it { should have_many(:missions).through(:astronaut_missions) }
  end

  describe 'Instance Methods' do
    it ".avg_age" do
      expect(page).to have_content(astro)
    end
  end
end
