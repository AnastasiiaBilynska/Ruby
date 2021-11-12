class Benefactor
  def new_avg(arr, newavg)
    a = newavg * (arr.size + 1) - arr.sum
    a > 0 ? a.ceil : raise
  end
end
