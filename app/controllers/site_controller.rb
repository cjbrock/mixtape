class SiteController < ApplicationController
  def home
  end

  def about
  	@authors = ["Avi Flombaum", "General Assembly", "Rubywan"]
  end

  def jobs
  	render :text => "Coming Soon!"
  end
end
