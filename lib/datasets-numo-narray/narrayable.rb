require "numo/narray"

module DatasetsNumoNArray
  module DatasetNArrayable
    def to_narray(*keys)
      if keys.empty?
        array = collect do |record|
          record.values
        end
      else
        array = collect do |record|
          keys.collect do |key|
            record[key]
          end
        end
      end
      Numo::NArray[*array]
    end
  end

  module TableNArrayable
    def to_narray(*keys)
      if keys.empty?
        array = collect {|_key, values| values}.transpose
      else
        array = fetch_values(*keys).transpose
      end
      Numo::NArray[*array]
    end
  end
end
