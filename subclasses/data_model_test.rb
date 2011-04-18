require "data_model"
require "test/unit"

class DataModelTest < Test::Unit::TestCase

  def test_blah_is_subclass_of_data_model
    assert DataModel.subclasses.include?("Blah")
  end

  def test_bleh_is_not_subclass_of_data_model
    assert !DataModel.subclasses.include?("Bleh")
  end

end