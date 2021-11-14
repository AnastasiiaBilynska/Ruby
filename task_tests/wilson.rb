require 'prime'

class Wilson
  def am_I_Wilson(n)
    return false unless n.prime?

    (facto(n - 1) + 1) % (n**2) == 0
  end

  def facto(n)
    n == 0 ? 1 : n * facto(n - 1)
  end
end
