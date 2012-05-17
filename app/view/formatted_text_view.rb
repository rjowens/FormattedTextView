class FormattedTextView < UIScrollView

  attr_accessor :formattedText
  attr_reader :textHeight
  attr_accessor :padding
	
  def initWithFrame(frame)
    if super
      @padding = [0,0,0,0]
      @textLayer = CATextLayer.alloc.init
      @textLayer.contentsScale = UIScreen.mainScreen.scale
      @textLayer.backgroundColor = UIColor.clearColor.CGColor
      @textLayer.wrapped = true
      self.layer.addSublayer(@textLayer)
    end
    self
  end

  def formattedText=(formattedText)
    @formattedText = formattedText
    renderText
  end

  def padding=(padding)
    if @padding.kind_of?(Array) && @padding.count == 4
      @padding = padding
    else
	    $stderr.puts "Error, expected padding to be [top, right, bottom, left]" 
    end
    if @formattedText
      renderText
    end
  end
	  
  def renderText
    attrStr = FormattedTextHelper::createAttributedString(@formattedText)	
    framesetter = CTFramesetterCreateWithAttributedString(attrStr)
    widthConstraint = self.frame.size.width
    suggestedSize = CTFramesetterSuggestFrameSizeWithConstraints(framesetter,
    	[0, attrStr.length],
    	nil,
    	[frame.size.width - @padding[1] - @padding[3], 10000],
    	nil);
    @textLayer.string = attrStr
    @textLayer.frame = [[@padding[3],@padding[0]], [frame.size.width - @padding[1] - @padding[3], suggestedSize.height]]
    @textHeight = suggestedSize.height + @padding[0] + @padding[2]
    self.setContentSize([frame.size.width, suggestedSize.height + @padding[0] + @padding[2]])
  end
end