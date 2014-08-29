class LessonController < ApplicationController

  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def new
   @lesson = Lesson.new
   render('lessons/new.html.erb')
  end

  def create
    @lesson = Lesson.create(params[:lesson])
    if @lesson.valid?
      redirect_to("/lessons/#{@lesson.id}")
    else
      render('lessons/new.html.erb')
    end
  end

end
