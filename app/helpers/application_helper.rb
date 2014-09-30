module ApplicationHelper

  def amount(investment)
    (investment.price * investment.shares).round(-2)
  end
end
