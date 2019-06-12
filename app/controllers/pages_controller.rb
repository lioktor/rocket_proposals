class PagesController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:home] # activation de cette ligne suite à création landing page

  def home
  end

  # def dashboard
  # end
end
