class LevelController < ApplicationController

  def index
    @levels = Level.all
    render('levels/index.html.erb')
  end

end
