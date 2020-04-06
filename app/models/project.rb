class Project < ApplicationRecord
    validates :title, presence: true
    validates :summary, length: {minimum: 5}
end








