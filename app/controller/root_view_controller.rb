class RootViewController < UIViewController

	def viewDidLoad
		self.view.backgroundColor = UIColor.grayColor
		self.tabBarItem = UITabBarItem.alloc.initWithTitle("Method 1", image:nil, tag:0)

		# Method 1
		formattedTextView = FormattedTextView.alloc.initWithFrame([[10, 10], [self.view.bounds.size.width - 20, self.view.size.height - 20]])
		formattedTextView.backgroundColor = UIColor.whiteColor
		formattedTextView.setPadding([10,10,10,10])
		formattedTextView.formattedText = "{@AmericanTypewriter-Bold:16:rgba(128,0,0,1.0)}Lorem ipsum{@AmericanTypewriter:16:rgba(0,0,0,1.0)} dolor sit amet, consectetur adipiscing elit."
		formattedTextView.frame = [formattedTextView.frame.origin, [formattedTextView.frame.size.width, formattedTextView.textHeight]]
		self.view.addSubview(formattedTextView)

		# Method 2 - TBD
		# formattedTextView = FormattedTextView.alloc.initWithFrame([[10, formattedTextView.frame.origin.y + formattedTextView.frame.size.height + 10], [self.view.bounds.size.width - 20, self.view.size.height - 20]])
		# formattedTextView.backgroundColor = UIColor.whiteColor
		# formattedTextView.setPadding([10,10,10,10])
		# formattedTextView.setFormattedText do |ns|
		# 	ns << [font: :AmericanTypewriter-Bold, size:16, rgba:"rgba(128,0,0,1.0"]
		# 	ns << "Lorem ipsum"
		# 	ns << [font: :AmericanTypewriter, size:16, rgba:"rgba(0,0,0,1.0"]
		# 	ns << " dolor sit amet, consectetur adipiscing elit."
		# end
		# formattedTextView.frame = [formattedTextView.frame.origin, [formattedTextView.frame.size.width, formattedTextView.textHeight]]
		# self.view.addSubview(formattedTextView)

	end
end