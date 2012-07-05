class SiteController < ApplicationController
  def home
  end

  def about
  	@authors = ["Avi Flombaum", "General Assembly", "Rubywan"]
  end
end
