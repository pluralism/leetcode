def get_hint(secret, guess)
  secret = secret.split('').map(&:to_i)
  guess = guess.split('').map(&:to_i)
  bulls = cows = 0
  secret_buffer = Hash.new
  guess_buffer = Hash.new

  for i in 0...guess.length
    if secret[i] === guess[i]
      bulls += 1
    else
      if !secret_buffer[guess[i]].nil? and secret_buffer[guess[i]] > 0
        cows += 1
        secret_buffer[guess[i]] -= 1
        guess_buffer[guess[i]] = guess_buffer[guess[i]].to_i - 1
      end

      if !guess_buffer[secret[i]].nil? and guess_buffer[secret[i]] > 0
        cows += 1
        guess_buffer[secret[i]] -= 1
        secret_buffer[secret[i]] = secret_buffer[secret[i]].to_i - 1
      end
      secret_buffer[secret[i]] = secret_buffer[secret[i]].to_i + 1
      guess_buffer[guess[i]] = guess_buffer[guess[i]].to_i + 1
    end
  end
  bulls.to_s + "A" + cows.to_s + "B"
end
