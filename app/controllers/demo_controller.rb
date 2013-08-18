class DemoController < ApplicationController
  def index
  	#render ('hello')
  	#redirect_to(action: 'other_hello')
  end

  def hello
  	@id   = params[:id]
  	@page = params[:page].to_i
  end

  def other_hello
  	#render(text: 'Hello Everyone')
  end
end
