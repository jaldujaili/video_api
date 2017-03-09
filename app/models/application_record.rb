class ApplicationRecord < ActiveRecord::Base
	include Jsonfiable
  self.abstract_class = true
end
