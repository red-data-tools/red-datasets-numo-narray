require "datasets"

require "datasets-numo-narray/version"

require "datasets-numo-narray/narrayable"

module Datasets
  class Dataset
    include DatasetsNumoNArray::DatasetNArrayable
  end

  class Table
    include DatasetsNumoNArray::TableNArrayable
  end
end
