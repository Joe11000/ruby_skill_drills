#!/usr/bin/env ruby

class Person1
  def species
    "Type A"
  end
end

class Person2; end;
Person2.class_eval do
  def species
    "Type A"
  end
end
