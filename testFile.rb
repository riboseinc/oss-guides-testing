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
    # bad
    [].select { |item| true }.first
  
    # good
    [].detect { |item| true }
    [].reverse.detect { |item| true }
  end

  def spacing_broken

    "above line is unnecessary"
  end
end
