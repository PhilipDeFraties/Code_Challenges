def find_it(seq)
  seq.detect { |n| seq.count(n).odd? }
end
