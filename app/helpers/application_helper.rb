module ApplicationHelper

def if_active(controller)
  'active' if params[:controller] == controller
end

end
