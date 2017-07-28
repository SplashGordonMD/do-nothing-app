class Sport < ApplicationRecord 
  def Sports_list
    Sports.split(",")
 end
end