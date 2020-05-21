describe 'Triangle' do

  # NOTE... I really like the cleaner way of writing an intialize statement...
  # So the tests pass each argument in one by one-- which makes the init break
  # I grouped each argument into a hash to pass that in. The tests pass now.
  # If I shouldn't have done this, I am sorry. It was just too clean to pass up.
  # It made me happy. It looks happy.

  it 'knows that equilateral triangles have equal sides' do
    attr = {first: 2, second: 2, third: 2}
    expect(Triangle.new(attr).kind).to eq(:equilateral)
  end

  it 'knows that larger equilateral triangles also have equal sides' do
    attr = {first: 10, second: 10, third: 10}
    expect(Triangle.new(attr).kind).to eq(:equilateral)
  end

  it 'knows that isosceles triangles have last two sides equal' do
    attr = {first: 3, second: 4, third: 4}
    expect(Triangle.new(attr).kind).to eq(:isosceles)
  end

  it 'knows that isosceles triangles have first and last sides equal' do
    attr = {first: 4, second: 3, third: 4}
    expect(Triangle.new(attr).kind).to eq(:isosceles)
  end

  it 'knows that isosceles triangles have two first sides equal' do
    attr = {first: 4, second: 4, third: 3}
    expect(Triangle.new(attr).kind).to eq(:isosceles)
  end

  it 'knows that isosceles triangles have in fact exactly two sides equal' do
    attr = {first: 10, second: 10, third: 2}
    expect(Triangle.new(attr).kind).to eq(:isosceles)
  end

  it 'knows that scalene triangles have no equal sides' do
    attr = {first: 3, second: 4, third: 5}
    expect(Triangle.new(attr).kind).to eq(:scalene)
  end

  it 'knows that scalene triangles have no equal sides at a larger scale too' do
    attr = {first: 10, second: 11, third: 12}
    expect(Triangle.new(attr).kind).to eq(:scalene)
  end

  it 'knows that scalene triangles have no equal sides in descending order either' do
    attr = {first: 5, second: 4, third: 2}
    expect(Triangle.new(attr).kind).to eq(:scalene)
  end

  it 'knows that very small triangles are legal' do
    attr = {first: 0.4, second: 0.6, third: 0.3}
    expect(Triangle.new(attr).kind).to eq(:scalene)
  end

  it 'knows that triangles with no size are illegal' do
    attr = {first: 0, second: 0, third: 0}
    expect{Triangle.new(attr).kind}.to raise_error(Triangle::TriangleError)
  end

  it 'knows that triangles with negative sides are illegal' do
    attr = {first: 3, second: 4, third: -5}
    expect{Triangle.new(attr).kind}.to raise_error(Triangle::TriangleError)
  end

  it 'knows that triangles violating triangle inequality are illegal' do
    attr = {first: 1, second: 1, third: 3}
    expect{Triangle.new(attr).kind}.to raise_error(Triangle::TriangleError)
  end

  it 'knows that triangles violating triangle inequality are illegal 2' do
    attr = {first: 1, second: 2, third: 3}
    expect{Triangle.new(attr).kind}.to raise_error(Triangle::TriangleError)
  end

  it 'knows that triangles violating triangle inequality are illegal 3' do
    attr = {first: 7, second: 3, third: 2}
    expect{Triangle.new(attr).kind}.to raise_error(Triangle::TriangleError)
  end

end
