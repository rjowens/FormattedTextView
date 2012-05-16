module FormattedTextHelper

	def self.createAttributedString(formattedText)
		matchdata = []
		attrStr = NSMutableAttributedString.alloc.initWithString("")

		formattedText.gsub(/\{@(.*?):(.*?):(.*?)\}/) do |match|
			matchdata << [Regexp.last_match.values_at(1,2,3), Regexp.last_match.offset(0)]
		end

		matchdata.each_with_index do |match, index|
			font, size, color =  match[0]

	 	  ctFont = CTFontCreateWithName(font, size, nil);
			attributes = {
        KCTFontAttributeName => ctFont,
				KCTForegroundColorAttributeName => ColorHelper::rgbaStringToUIColor(color).CGColor
			} 		

			endPos = begin
				index == matchdata.count-1 ? formattedText.length : matchdata[index+1][1][0] - match[1][1] 
			end

			attrStr.appendAttributedString(NSMutableAttributedString.alloc.initWithString(formattedText[match[1][1], endPos], attributes:attributes))				
		end

		attrStr
	end

end