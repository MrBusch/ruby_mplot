require 'gnuplot'
require 'ruby_mplot/plotter'

class RubyMplot
  def self.plotter
  	RubyMplot::Plotter.new
  end
end