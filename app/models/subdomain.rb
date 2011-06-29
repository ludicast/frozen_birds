class Subdomain < ActiveRecord::Base
  has_many :statuses
  has_many :sql_templates
end
