#!/usr/bin/env ruby

require 'pry'
require 'benchmark'

# 1. Proc
# 2. Lambda
pr = Proc.new { puts "Way #1" }
l = lambda { puts "Way #2" }

module Example1
  def self.function code
    code.call
  end
end

Benchmark.bm do |b|
  b.report {Example1.function pr}
  b.report {Example1.function l}
end




# 3. Block
module Example2
  def self.function
    yield
  end
end

Example2.function { "puts 'Way #3" }



# 4. Evaluate string
module Example3
  def self.function code_string
    eval(code_string)
  end
end

Example3 "puts 'Way #4'"


# 5 send a unbound method
class Class4; def class4_function;  puts 'Way #5'; end; end;
module Example4
  def self.function unbound_method
    unbound_method.bind(Class4.new)
  end
end

unbound_method = Class4.instance_method(:class4_function)
