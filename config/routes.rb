Rails.application.routes.draw do

get("/dice/:number_of_dice/:how_many_sides", {:controller => "dice", :action => "roll_dice"})

get("/", {:controller => "dice", :action => "show_initial_page"})

end
