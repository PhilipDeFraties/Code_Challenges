def best_match(goals1, goals2)
  ## best solution spread out, can be one line see README
  # spreads = goals1.zip(goals2)
  # spreads.each_with_index.min_by do |(a, b), i|
  #   [a-b, -b, i]
  # end.last
  best_loss = {
    goals: goals2[0],
    index: 0,
    spread: (goals1[0] - goals2[0])
  }
  goals1.each_with_index do |goals, index|
    spread = goals - goals2[index]
    if spread < best_loss[:spread]
      best_loss[:goals] = goals2[index]
      best_loss[:index] = index
      best_loss[:spread] = spread
    elsif spread == best_loss[:spread] && goals2[index] > best_loss[:goals]
      best_loss[:goals] = goals2[index]
      best_loss[:index] = index
      best_loss[:spread] = spread
    else
      next
    end
  end
  return best_loss[:index]
end
