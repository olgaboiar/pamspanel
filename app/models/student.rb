class Student < ApplicationRecord
    belongs_to :cohort, optional: true
    validates :first_name, :presence => true
    validates :last_name, :presence => true
    validates :birthday, :presence => true
end
