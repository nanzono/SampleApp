class ItemsController < ApplicationController

  def index
    t_now = Time.now
    day = t_now.strftime("%Y-%m-%d %H:%M:%S")
  	#logger.debug(day)

    Flydata.send_to('user_activities2', {:timestamp => day, :action => 'item page index' })

    Flydata.send_to('table_01', {:name => 'name-4', :memo => 'this is memo-4', :timestamp => day, :column1 => '4-aaabbbccc', :column2 => '4-ddeeff'})

    Flydata.send_to('table_02', {:name => 'table02-name-4', :memo => 'table02- memo-4', :timestamp => day, :column1 => 'table02-column1-4'})

  end

end
