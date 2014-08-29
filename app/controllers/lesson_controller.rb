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

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def edit
    @lesson = Lesson.find(params[:id])
    render('lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(params[:lesson])
      redirect_to("/lessons/#{@lesson.id}")
    else
      render('lessons/edit.html.erb')
    end
  end

end
