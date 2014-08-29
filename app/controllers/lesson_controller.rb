class LessonController < ApplicationController

  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def new
   @lesson = Lesson.new
   render('lessons/new.html.erb')
  end

end
