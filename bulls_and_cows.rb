def get_hint(secret, guess)
  bulls = cows = 0
  secret_occurrences = Hash.new
  indexes = []
  guess.split('').each.with_index { |n, i|
    if secret[i] === guess[i]
      bulls += 1
      indexes << i
    else
      secret_occurrences[secret[i]] = secret_occurrences[secret[i]].to_i + 1
    end
  }

  guess.split('').each.with_index { |n, i|
    if !indexes.include?(i) and secret_occurrences[guess[i]].to_i > 0
      cows += 1
      secret_occurrences[guess[i]] = secret_occurrences[guess[i]].to_i - 1
    end
  }
  bulls.to_s + "A" + cows.to_s + "B"
end
