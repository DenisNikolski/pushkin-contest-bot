class MainController < ApplicationController
  def index
    @results = Result.all
  end
end
