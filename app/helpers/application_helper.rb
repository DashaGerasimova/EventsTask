module ApplicationHelper
  class CustomTranslation
  	class << self
  	  def repeat (repeat_value)
  	  	case repeat_value
  	  	when 0
  	  	  result = 'every_day'
  	  	when 1
  	  	  result = 'every_week'
  	  	when 2
  	  	  result = 'every_month'
  	  	when 3
  	  	  result = 'every_year'
  	  	end 
  	  	return result
  	  end
  	end
  end
end
