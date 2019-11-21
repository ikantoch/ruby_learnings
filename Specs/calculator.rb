# Usage:
#
# irb> calculate('1+2')
# => 3.0
# irb> calculate('1-2')
# => -1.0
# irb> calculate('1*2')
# => 2.0
# irb> calculate('1/2')
# => 0.5
# irb> calculate('1+1-1')
# => 1.0
#
def calculate(equation)
  [:+, :-, :*, :/].each do |op|
    factors = equation.split(op.to_s)
    factors.push('1') if factors.size > 3
    return factors.map { |factor| calculate(factor) }.inject(op) if factors.size > 1
  end
  equation.to_f
end
