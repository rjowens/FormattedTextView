class RootViewController < UIViewController

  def viewDidLoad
    self.view.backgroundColor = ColorHelper::rgbaStringToUIColor("rgba(213,222,217,1)")
    self.tabBarItem = UITabBarItem.alloc.initWithTitle("Method 1", image:nil, tag:0)

    self.view.addSubview begin
      @ftv = FormattedTextView.alloc.initWithFrame([[10, 20], [self.view.bounds.size.width - 20, self.view.size.height - 20]])
      @ftv.layer.cornerRadius = 2
		  @ftv.backgroundColor = UIColor.whiteColor
		  @ftv.padding= [10,10,10,10]
		  @ftv.formattedText = "{@AmericanTypewriter:16:rgba(0,0,0,1.0)}Lorem ipsum dolor sit amet, consectetur adipiscing elit."
		  @ftv.frame = [@ftv.frame.origin, [@ftv.frame.size.width, @ftv.textHeight]]
      @ftv.layer.borderColor = ColorHelper::rgbaStringToUIColor("rgba(124,106,81,1)").CGColor
      @ftv.layer.borderWidth = 1.0
      @ftv
    end

    self.view.addSubview begin
      @ftv2 = FormattedTextView.alloc.initWithFrame([[10, @ftv.frame.origin.y + @ftv.frame.size.height + 15], [self.view.bounds.size.width - 20, self.view.size.height - 20]])
      @ftv2.layer.cornerRadius = 2
      @ftv2.backgroundColor = UIColor.whiteColor
      @ftv2.padding= [10,10,10,10]
      @ftv2.formattedText = "{@AmericanTypewriter:16:rgba(128,0,0,1.0)}Lorem ipsum{@AmericanTypewriter:16:rgba(0,0,0,1.0)} dolor sit amet, {@AmericanTypewriter-Bold:16:rgba(0,0,0,1.0)}consectetur{@AmericanTypewriter:16:rgba(0,0,0,1.0)} adipiscing elit."
      @ftv2.frame = [@ftv2.frame.origin, [@ftv2.frame.size.width, @ftv2.textHeight]]
      @ftv2.layer.borderColor = ColorHelper::rgbaStringToUIColor("rgba(124,106,81,1)").CGColor
      @ftv2.layer.borderWidth = 1.0      
      @ftv2
    end

    self.view.addSubview begin
      @ftv3 = FormattedTextView.alloc.initWithFrame([[10, @ftv2.frame.origin.y + @ftv2.frame.size.height + 15],
                                                                [self.view.bounds.size.width - 20, 280]])
      @ftv3.layer.cornerRadius = 2
      @ftv3.backgroundColor = UIColor.whiteColor
      @ftv3.padding= [10,10,10,10]
      @ftv3.formattedText = <<-eos
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
      @ftv3.layer.borderColor = ColorHelper::rgbaStringToUIColor("rgba(124,106,81,1)").CGColor
      @ftv3.layer.borderWidth = 1.0
      @ftv3
    end
  end
end