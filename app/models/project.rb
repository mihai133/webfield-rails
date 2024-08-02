class User::Project < ApplicationRecord
    belongs_to :user
    has_many :tasks, class_name: 'Task', dependent: :destroy
end
