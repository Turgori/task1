class Sequence
  def self.generate_by_number(seq_number)
    seq_number = seq_number.to_i
    raise ArgumentError.new('Number of sequence should be greater than zero') if seq_number < 1

    element = ''
    seq_number.times { element = generate(element) }
    element
  end

  private

  def self.generate(element)
    return '1' if element.empty?

    count = 1
    result = ''

    until element.empty?
      if element[0] == element[1]
        count += 1
      else
        result += count.to_s + element[0]
        count = 1
      end

      element = element[1..-1]
    end

    result
  end
end