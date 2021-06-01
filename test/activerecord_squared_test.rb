require "test_helper"

class ActiverecordSquaredTest < ActiveSupport::TestCase
  setup do
    SomeModel.create(some_string: 'woot')
    SomeModel.create(some_string: 'woot 2')
    @smid = SomeModel.create(some_string: 'woot 3').id
    SomeModel.create(some_string: 'woot more than once')
    SomeModel.create(some_string: 'woot more than once')
  end

  teardown do
    SomeModel.destroy_all
  end

  test "it has a version number" do
    assert ActiverecordSquared::VERSION
  end

  test 'it returns nil if given nil' do
    assert SomeModel[nil].nil?
  end

  test 'it finds a single model by id' do
    assert SomeModel[@smid] == SomeModel.find(@smid)
  end

  test 'it searches appropriately' do
    assert SomeModel[some_string: 'woot 2'].first == SomeModel.find_by(some_string: 'woot 2')
  end

  test 'it doesn\'t use find by but rather where' do
    assert SomeModel[some_string: 'woot more than once'].count > 1
  end
end
