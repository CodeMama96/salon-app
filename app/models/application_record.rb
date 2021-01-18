class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  #helper_method :current_user
end
