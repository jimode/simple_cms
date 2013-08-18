class Section < ActiveRecord::Base
  attr_accessible :content, :content_type, :name, :page_id, :position, :visible
end
