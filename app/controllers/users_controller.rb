require 'date'
require 'flydata'

require 'json'

class UsersController < ApplicationController
  def new
  end

  def index
  	#render :text => 'Hello'
  	t_now = Time.now
  	day = t_now.strftime("%Y-%m-%d %H:%M:%S")
  	#logger.debug(day)

  	Flydata.send_to('user_activities', {:timestamp => day, :action => 'user page index' })


  	puts {
  	  "item_bought"=>[
  	    {"id"=>19, "user_id"=>2, "item"=>"orange", "quantity"=>6},
        {"id"=>19, "user_id"=>2, "item"=>"banana", "quantity"=>12}
  	  ],
  	  "user_info"=>{"id"=>2, "name"=>"matt"}
  	}.to_json


  end
end
