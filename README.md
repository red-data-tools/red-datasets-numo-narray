# README

## Name

Red Datasets Numo::NArray

## Description

Red Datasets Numo::NArray adds [Numo::NArray](https://github.com/ruby-numo/numo-narray) object export feature to Red Datasets.

Red Datasets Numo::NArray adds `#to_narray` method to each dataset in Red Datasets. You can get dataset as Numo::NArray's numeric subclass object.

## Install

```console
% gem install red-datasets-numo-narray
```

## Usage

Here is an example to access iris dataset by `#to_narray`:

```ruby
require "datasets"

iris = Datasets::Iris.new
puts iris.to_narray
```

## License

The MIT license. See `LICENSE.txt` for details.
