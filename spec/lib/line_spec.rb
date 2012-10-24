require 'spec_helper'

describe Svg::Line do

  it "should be able to draw a line" do
    line_var = Line.new
    line_var.from = Point.new(0, 0)
    line_var.to = Point.new(200, 200)

    style_var = Style.new
    style_var.stroke = RGB.new(255, 0, 0)
    style_var.stroke_width = 2

    line_var.style = style_var

    line_var.to_svg.should eq "<line x1=\"0\" y1=\"0\" x2=\"200\" y2=\"200\" style=\"stroke:rgb(255,0,0); stroke-width:2\"/>"
  end

end