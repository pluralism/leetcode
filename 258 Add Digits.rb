# @param {Integer} num
# @return {Integer}
def add_digits(num)
    num % 9 == 0 && num != 0 ? 9 : num % 9
end
