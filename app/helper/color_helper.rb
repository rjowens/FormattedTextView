module ColorHelper

  def self.rgbaStringToUIColor(color)
    if m = /rgba\((.*),(.*),(.*),(.*)\)/.match(color)
      red, green, blue, alpha = m.values_at(1,2,3,4)
      UIColor.colorWithRed(red.to_f/255.0, green:green.to_f/255.0, blue:blue.to_f/255.0, alpha:alpha.to_f)
    else
      $stderr.puts "Error when parsing color data: #{color}" 
      UIColor.blackColor
    end
  end
  
end
