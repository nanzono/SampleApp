class ItemsController < ApplicationController

  def index
    t_now = Time.now
    day = t_now.strftime("%Y-%m-%d %H:%M:%S")
  	#logger.debug(day)

    Flydata.send_to('user_activities2', {:timestamp => day, :action => 'item page index' })

    Flydata.send_to('table_01', {:name => 'name-2', :memo => 'this is memo-2', :timestamp => day, :column1 => 'aaabbbccc'})

  end

end
