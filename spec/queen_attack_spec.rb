require('rspec')
require('queen_attack')

describe('Array#queen_attack') do
  it('Queen can not attack if coordinates are not horizontally, vertically or diagonally in line with each other') do
    expect([1,1].queen_attack([2, 3])).to(eq(false))
  end

  it('Queen can attack vertically when the first coordinate of each pair is equal') do
    expect([1,1].queen_attack([1,7])).to(eq(true))
  end

  it('Queen can attack horizontally when the second coordinate of each pair is equal') do
    expect([1,1].queen_attack([7,1])).to(eq(true))
  end

  it('Queen can attach diagonally when the absolute value difference of each pairs first coordinate is equal to the absolute value difference of each pairs second coordinate') do
    expect([5,3].queen_attack([3,1])).to(eq(true))
  end
end
