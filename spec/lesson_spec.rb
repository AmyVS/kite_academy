require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_presence_of :content }
  it { should validate_presence_of :number }

  it { should belong_to :level }

  it 'returns the lesson with the next-highest number than the current lesson' do
    current_lesson = Lesson.create(number: 2, name: 'kite handling', content: 'pull bar to the left or right to dip the kite')
    next_lesson = Lesson.create(number: 3, name: 'body dragging', content: 'launch kite by the beach, walk into the water, and have fun!')
    expect(current_lesson.next).to eq next_lesson
  end

end
