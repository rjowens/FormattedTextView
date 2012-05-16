class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(RootViewController.new)
    @window.rootViewController.navigationBarHidden = true
    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible    
    true
  end
end
