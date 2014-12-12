class Task < ActiveRecord::Base
  belongs_to :project
  translates :name, :description
end
