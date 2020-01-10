# Even file name and module name are broken.
class SomeClass

  def indentation_broken
      "Too many"
  end

  def has_unreachable_code
    return "last reachable line"
    raise
  end

  # Performance/Detect
  def performance_cops
    # Use `sort_by(&:foo)` instead of `sort { |a, b| a.foo <=> b.foo }`.'

    # bad
    %w[A b C].sort { |a, b| a.downcase <=> b.downcase }
  
    # good
    %w[A b C].sort_by(&:downcase)
  end

  def spacing_broken

    "above line is unnecessary"
  end
end
