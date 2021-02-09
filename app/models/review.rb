class Review < ApplicationRecord
    belongs_to :reviewer, class_name: "User", foreign_key: "reviewer_id"
    belongs_to :reviewee, class_name: "User", foreign_key: "reviewee_id"

    belongs_to :play_session

    validates :reviewer_id, uniqueness: {scope: [:reviewee_id, :play_session_id] }
end
