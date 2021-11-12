class Perimeter
  def perimeter(n)
    a = []
    a << 1
    a << 1
    (2..n + 1 - 1).each do |i|
      a.push(a[i - 1] + a[i - 2])
    end
    (4 * a.sum).to_i
  end
end
