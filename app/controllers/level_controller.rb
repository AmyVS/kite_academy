class LevelController < ApplicationController

  def index
    @levels = Level.all
    render('levels/index.html.erb')
  end

  def new
    @level = Level.new
    render('levels/new.html.erb')
  end

end
