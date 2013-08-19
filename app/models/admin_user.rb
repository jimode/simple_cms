class AdminUser < ActiveRecord::Base
  attr_accessible :first_name

  scope :named, lambda {|first,last| where(first_name: first, last_name: last)}

  # To configure a different table name
  #set_table_name("admin_users")
end
