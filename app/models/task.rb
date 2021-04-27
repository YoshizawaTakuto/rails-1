class Task < ApplicationRecord
    validates :title, presence: true

    validates :start_day, presence: true

    validates :start_time, presence: true

    validate :date_before_start

    def date_before_start
        return if start_day.blank?
        errors.add(:start_day, "は今日以降のものを選択してください") if
        start_day < Date.today
    end
        
end
