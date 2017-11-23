class ChartsController < ApplicationController
  def companies_per_week
    render json: Company.not_deleted.group_by_week(:created_at).count
  end

  def cumulative_companies
    sum = 0
    render json: Company.not_deleted.group_by_week(:created_at).count.map { |x,y| { x => (sum += y)} }.reduce({}, :merge)
  end
end
