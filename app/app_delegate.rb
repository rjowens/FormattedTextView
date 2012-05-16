class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @rootViewController = RootViewController.new
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(@rootViewController)
    @window.rootViewController.navigationBarHidden = true
    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible    
    true
  end
end
