class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
  	render html: "Hello , World!"
  end

  def bye
  	render html: "Good Bye!!"
  end
  
end
