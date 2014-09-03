class LessonsController < ApplicationController

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
      flash[:notice] = "Your lesson was added successfully!"
      redirect_to("/lessons/#{@lesson.id}")
    else
      flash[:alert] = "Bummer... looks like there are some things that need fixing here."
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
      flash[:notice] = "Your lesson was edited successfully!"
      redirect_to("/lessons/#{@lesson.id}")
    else
      flash[:alert] = "Bummer... looks like there are some things that need fixing here."
      render('lessons/edit.html.erb')
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.delete
    redirect_to("/lessons")
  end

end
