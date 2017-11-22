require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  def setup
    @company = Company.new(name: 'Test', comment: 'A short comment')
  end

  test 'valid company' do
    assert @company.valid?
  end

  test 'invalid without name' do
    @company.name = nil
    refute @company.valid?
    assert_not_nil @company.errors[:name]
  end

  test 'invalid without comment' do
    @company.comment = nil
    refute @company.valid?
    assert_not_nil @company.errors[:comment]
  end

  test 'invalid with too short comment' do
    @company.comment = 'abc'
    refute @company.valid?
    assert_not_nil @company.errors[:comment]
  end
end
