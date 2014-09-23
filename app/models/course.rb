class Course < ActiveRecord::Base
	belongs_to :department
	has_many :students
	validates :code, presence: true,
                    length: { is: 7 }
    validates :dept, presence: true,
    				length: { is: 2 }
end
