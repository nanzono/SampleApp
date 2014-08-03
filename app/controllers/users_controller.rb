require 'date'
require 'flydata'

class UsersController < ApplicationController
  def new
  end

  def index
  	#render :text => 'Hello'
  	t_now = Time.now
  	day = t_now.strftime("%Y-%m-%d %H:%M:%S")
  	#logger.debug(day)
  	FlyData.send_to('user_activities', {:timestamp => day, :action => 'user page index' })

  end
end
