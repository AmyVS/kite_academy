class Lesson < ActiveRecord::Base

  validates :name, presence: true
  validates :content, presence: true
  validates :number, presence: true

  belongs_to :level

  def next
    Lesson.all.find_by(number: number.to_i+1)
  end

end
