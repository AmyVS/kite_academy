class LevelController < ApplicationController

  def index
    @levels = Level.all
    render('levels/index.html.erb')
  end

  def new
    @level = Level.new
    render('levels/new.html.erb')
  end

  def create
    @level = Level.create(params[:level])
    if @level.valid?
      flash[:notice] = "Your level was added successfully!"
      redirect_to("/levels/#{@level.id}")
    else
      flash[:alert] = "Bummer... looks like there are some things that need fixing here."
      render('levels/new.html.erb')
    end
  end

end
