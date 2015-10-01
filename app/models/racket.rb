class Racket < ActiveRecord::Base

  def self.current_balance
    self.all.inject(0) { |sum, number| sum + number.amount.to_d}
  end

  def self.racket_total
    self.count
  end

end
