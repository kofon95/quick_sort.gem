require 'spec_helper'
require 'quick_sort'

describe "A Quick sort" do
  describe "having small arrays," do
    it 'should sorts array' do
      a = [3, 6, 1]
      expect(a.quick_sort).to eq [1, 3, 6]
    end

    it 'should not change sorted array' do
      a = (0..10).to_a
      expect(a.clone).to eq a.quick_sort
    end
  end
end
