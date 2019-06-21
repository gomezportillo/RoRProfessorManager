class ApplicationController < ActionController::Base

  def welcome
    render html: 'Welcome to the Professor Manager!'
  end

end
