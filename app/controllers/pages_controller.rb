class PagesController < ApplicationController
  Time::DATE_FORMATS[:time] = "criado em %m, %b de %Y - %I:%M:%p"
  def home
  end

  def thank_you
  end

  def list
    @providers = Provider.order("id DESC")
  end
end
