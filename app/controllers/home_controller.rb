class HomeController < ApplicationController

  def home
    @park = Park.all
  end

end
