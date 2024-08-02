# app/models/task.rb
class Task < ApplicationRecord
  belongs_to :user_project, class_name: 'User::Project'

  # Define the enum for status
  enum status: { to_do: 'To do', in_progress: 'In progress', in_review: 'In review', done: 'Done' }
end
