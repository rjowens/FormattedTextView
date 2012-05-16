class RootViewController < UIViewController

	def viewDidLoad
		self.view.backgroundColor = ColorHelper::rgbaStringToUIColor("rgba(213,222,217,1)")
		self.tabBarItem = UITabBarItem.alloc.initWithTitle("Method 1", image:nil, tag:0)

		formattedTextView = FormattedTextView.alloc.initWithFrame([[10, 20], [self.view.bounds.size.width - 20, self.view.size.height - 20]])
    formattedTextView.layer.cornerRadius = 2
		formattedTextView.backgroundColor = UIColor.whiteColor
		formattedTextView.padding= [10,10,10,10]
		formattedTextView.formattedText = "{@AmericanTypewriter:16:rgba(0,0,0,1.0)}Lorem ipsum dolor sit amet, consectetur adipiscing elit."
		formattedTextView.frame = [formattedTextView.frame.origin, [formattedTextView.frame.size.width, formattedTextView.textHeight]]
    formattedTextView.layer.borderColor = ColorHelper::rgbaStringToUIColor("rgba(124,106,81,1)").CGColor
    formattedTextView.layer.borderWidth = 1.0
		self.view.addSubview(formattedTextView)

    formattedTextView2 = FormattedTextView.alloc.initWithFrame([[10, formattedTextView.frame.origin.y + formattedTextView.frame.size.height + 15], [self.view.bounds.size.width - 20, self.view.size.height - 20]])
    formattedTextView2.layer.cornerRadius = 2
    formattedTextView2.backgroundColor = UIColor.whiteColor
    formattedTextView2.padding= [10,10,10,10]
    formattedTextView2.formattedText = "{@AmericanTypewriter:16:rgba(128,0,0,1.0)}Lorem ipsum{@AmericanTypewriter:16:rgba(0,0,0,1.0)} dolor sit amet, {@AmericanTypewriter-Bold:16:rgba(0,0,0,1.0)}consectetur{@AmericanTypewriter:16:rgba(0,0,0,1.0)} adipiscing elit."
    formattedTextView2.frame = [formattedTextView2.frame.origin, [formattedTextView2.frame.size.width, formattedTextView2.textHeight]]
    formattedTextView2.layer.borderColor = ColorHelper::rgbaStringToUIColor("rgba(124,106,81,1)").CGColor
    formattedTextView2.layer.borderWidth = 1.0
    self.view.addSubview(formattedTextView2)

    formattedTextView3 = FormattedTextView.alloc.initWithFrame([[10, formattedTextView2.frame.origin.y + formattedTextView2.frame.size.height + 15],
                                                                [self.view.bounds.size.width - 20, 280]])
    formattedTextView3.layer.cornerRadius = 2
    formattedTextView3.backgroundColor = UIColor.whiteColor
    formattedTextView3.padding= [10,10,10,10]
    formattedTextView3.formattedText = <<-eos
    {@AmericanTypewriter:16:rgba(128,0,0,1.0)}Lorem ipsum{@AmericanTypewriter:16:rgba(0,0,0,1.0)}
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor \
incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \
exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute \
irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \ 
pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia \
deserunt mollit anim id est laborum.

{@AmericanTypewriter-Bold:16:rgba(0,0,0,1.0)}Lorem ipsum{@AmericanTypewriter:16:rgba(0,0,0,1.0)} dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor \
incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \
exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute \
irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \ 
pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia \
deserunt mollit anim id est laborum.
  eos
    formattedTextView3.layer.borderColor = ColorHelper::rgbaStringToUIColor("rgba(124,106,81,1)").CGColor
    formattedTextView3.layer.borderWidth = 1.0
    self.view.addSubview(formattedTextView3)

  end
end