class DemoController < ApplicationController

  layout 'admin'
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

  def javascript
  end

  def text_helpers
  end
end
