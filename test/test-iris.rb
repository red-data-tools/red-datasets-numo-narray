class IrisTest < Test::Unit::TestCase
  def setup
    @dataset = Datasets::Iris.new
    @table = @dataset.to_table
  end

  sub_test_case("Dataset") do
    test("no keys") do
      narray = @dataset.to_narray
      assert_equal([
                     [150, 5],
                     [5.1, 3.5, 1.4, 0.2, "Iris-setosa"],
                   ],
                   [
                     narray.shape,
                     narray[0, nil].to_a,
                   ])
    end

    test("keys") do
      narray = @dataset.to_narray(:sepal_length,
                                  :sepal_width,
                                  :petal_length,
                                  :petal_width)
      assert_equal([
                     [150, 4],
                     [5.1, 3.5, 1.4, 0.2],
                   ],
                   [
                     narray.shape,
                     narray[0, nil].to_a,
                   ])
    end
  end

  sub_test_case("Table") do
    test("no keys") do
      narray = @table.to_narray
      assert_equal([
                     [150, 5],
                     [5.1, 3.5, 1.4, 0.2, "Iris-setosa"],
                   ],
                   [
                     narray.shape,
                     narray[0, nil].to_a,
                   ])
    end

    test("keys") do
      narray = @table.to_narray(:sepal_length,
                                :sepal_width,
                                :petal_length,
                                :petal_width)
      assert_equal([
                     [150, 4],
                     [5.1, 3.5, 1.4, 0.2],
                   ],
                   [
                     narray.shape,
                     narray[0, nil].to_a,
                   ])
    end
  end
end
