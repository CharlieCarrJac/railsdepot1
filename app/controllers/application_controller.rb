class ApplicationController < ActionController::Base

require 'pry' 
def some_method
    binding.pry
end

end 