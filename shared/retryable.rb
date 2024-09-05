module Retryable
  def with_retry(max_retries: 5)
    attempts = 0
    begin
      attempts += 1
      yield
    rescue => e
      puts "Error: #{e.message}. Attempt #{attempts} of #{max_retries}"
      retry if attempts < max_retries
      puts "Failed after #{max_retries} attempts."
    end
  end
end
