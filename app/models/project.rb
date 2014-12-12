class Project < ActiveRecord::Base
  has_many :tasks
  accepts_nested_attributes_for :tasks, :reject_if => :all_blank, :allow_destroy => true

  translates :name, :description

  # f.input :gender, collection: f.object.gender_options
  GENDERS = %w(male female)

  def gender_options
    GENDERS.map(&:to_sym)
  end

end
