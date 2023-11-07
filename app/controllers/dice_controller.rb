class DiceController <ApplicationController
  def roll_dice
    
    @num_dice = params.fetch("number_of_dice").to_i

    @sides = params.fetch("how_many_sides").to_i
  
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@sides)
  
      @rolls.push(die)
    end

    render ({:template => "view_templates/results"})

  end

  def show_initial_page
    
    render ({:template => "view_templates/initial_page"})

  end

end
