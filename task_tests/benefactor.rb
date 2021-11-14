class Benefactor
  def new_avg(arr, newavg)
    a = newavg * (arr.count + 1) - arr.sum
    if a.negative?
      raise 'ERROR'
    else
      a.ceil
    end
  end
end
