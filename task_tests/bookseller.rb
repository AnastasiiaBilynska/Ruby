class Bookseller
  def stockList(b, c)
    return '' if b == []

    booktotal = Hash.new { |value, key| value[key] = 0 }
    b.each do |x|
      category, quantity = x.split(' ')
      booktotal[category[0]] += quantity.to_i
    end
    results = []
    c.each do |x|
      results << "(#{x} : #{booktotal[x]})"
    end
    results.join(' - ')
  end
end
