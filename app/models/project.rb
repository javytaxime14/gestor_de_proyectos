class Project < ApplicationRecord
    enum status: [:proposal, :in_progress, :finished]
       # scope :search_proposal, -> {where(status: 'proposal')}
    # scope :search_proposal, -> {where('status=?', 0)}
    # scope :search_in_progress, -> {where(status: 'in_progress')}
    # scope :search_finished, -> {where(status: 'finished')}
    scope :search, ->(param) {where(status: param)}
    validates :name, :description, :status, presence: true

end
