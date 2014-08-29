require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_presence_of :content }
  it { should validate_presence_of :number }

  it { should belong_to :level }

  it 'ensures that number only accepts integers' do
    lesson = Lesson.create(name: 'get the gear', content: "Here's information about kite boarding gear...", number: 'one')
    expect(lesson.save).to eq false
  end

end
