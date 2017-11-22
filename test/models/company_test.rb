require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  def setup
    @company = companies(:valid)
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

  test 'active scope does not include deleted company' do
    deleted = companies(:deleted)

    assert_equal 0, Company.not_deleted.where(id: deleted.id).count
  end

  test 'deleted scope includes deleted company' do
    deleted = companies(:deleted)

    assert_equal 1, Company.deleted.where(id: deleted.id).count
  end
end
