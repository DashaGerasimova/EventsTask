class EventDecorator < Draper::Decorator
  delegate_all

  def translated_repeat
  	case repeat
  	  when 0
  	  	I18n.t('every_day')
  	  when 1
  	    I18n.t('every_week')
  	  when 2
  	  	I18n.t('every_month')
  	  when 3
  	    I18n.t('every_year')
  	  end 
  end
end
