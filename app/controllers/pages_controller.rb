class PagesController < ApplicationController
  skip_before_action :authenticate_user! # user doesnt need to be logged in

  def home
  end
end
