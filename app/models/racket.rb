class Racket < ActiveRecord::Base
  validates :amount, presence: true
  validates :entity, presence: true

  def self.current_balance
    self.all.inject(0) { |sum, number| sum + number.amount.to_d}
  end

  def self.racket_total
    self.count
  end

  def self.broke
    if self.current_balance < 0
      true
    else
      false
    end
  end

end
