class Wilson
  def am_I_Wilson(p)
    my_fact = fact(p - 1) + 1
    my_div = p * p.to_f
    res = my_fact / my_div
    begin
      res == res.ceil
    rescue StandardError
      true
    end
  end

  def fact(n)
    n == 0 ? 1 : n * fact(n - 1)
  end
end
