# README

## Name

Red Datasets Numo::NArray

## Description

Red Datasets Numo::NArray adds [Numo::NArray](https://github.com/ruby-numo/numo-narray) object export feature to Red Datasets.

Red Datasets Numo::NArray adds `#to_narray` method to each dataset and its table in Red Datasets. You can get data as Numo::NArray's numeric subclass object.

## Install

```console
% gem install red-datasets-numo-narray
```

## Usage

Here is an example to export iris data as Numo::NArray's numeric subclass objects by `Datasets::Dataset#to_narray` and `Datasets::Table#to_narray`:

```ruby
require "datasets-numo-narray"

iris = Datasets::Iris.new
puts iris.to_narray(:sepal_length,
                    :sepal_width,
                    :petal_length,
                    :petal_width)

iris_table = iris.to_table
puts iris_table.to_narray(:sepal_length,
                          :sepal_width,
                          :petal_length,
                          :petal_width)
```

## License

The MIT license. See `LICENSE.txt` for details.
