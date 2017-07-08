module Enumerable

  def quick_sort s = 0, e = nil
    s0, e0 = s, e
    if e.nil?
      e = size-1
    elsif e < 0
      e = size+e
    end
    s = size+s if s < 0

    raise IndexError.new("the first argument out of range: #{s0}") if s >= size or s < 0
    raise IndexError.new("the second argument out of range: #{e0}") if e >= size or e < 0

    _quick_sort s, e, self
    self
  end

  private
  def _quick_sort s, e, buf
    return if e-s < 1
    pivot = buf[(s+e) / 2]
    s0, e0 = s, e

    while s <= e
      s += 1 while buf[s] < pivot
      e -= 1 while buf[e] > pivot

      if s <= e
        buf[s], buf[e] = buf[e], buf[s]
        s += 1
        e -= 1
      end
    end

    _quick_sort(s0, e, buf)
    _quick_sort(s, e0, buf)
  end
end
