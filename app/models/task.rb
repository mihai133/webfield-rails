class Task < ApplicationRecord
  belongs_to :project

  enum status: {to_do: "to_do", in_progress: "in_progress", done: "done"}

  validates :name, :description, :status, presence: true
end
