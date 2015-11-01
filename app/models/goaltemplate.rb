class Goaltemplate < ActiveRecord::Base
	belongs_to :user
	default_scope { order('area') }
end
