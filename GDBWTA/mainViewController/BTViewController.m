//
//  BTViewController.m
//  Created by http://github.com/iosdeveloper
//

#import "BTViewController.h"
#import "BTCocktailViewController.h"

@implementation BTViewController

@synthesize tabBar;

// UI
@synthesize dLabel;
@synthesize fLabel;

- (void)initWithData
{
    
}

- (void)initWithControl
{
    UIImageView *backgoundView = [[UIImageView alloc]initWithFrame:CGRectMake(0.0f, 0.0f, IPHONE_WIDTH, IPHONE_HEIGHT - 49.0f)];
    [backgoundView setImage:[UIImage imageNamed:@"mainBackgound.png"]];
    [self.view addSubview:backgoundView];
    [self setNewItems];

//    // Items
//	UITabBarItem *favorites = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@""] tag:1];
//	UITabBarItem *topRated = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@""] tag:2];	UITabBarItem *featured = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@""] tag:0];
//	UITabBarItem *recents = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@""] tag:3];
//	UITabBarItem *contacts = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@""] tag:4];
//	UITabBarItem *history = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@""] tag:5];
//	UITabBarItem *bookmarks = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@""] tag:6];
//	UITabBarItem *search = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@""] tag:7];
//	UITabBarItem *downloads = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@""] tag:8];
//	UITabBarItem *mostRecent = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@""] tag:9];
//	UITabBarItem *mostViewed = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@""] tag:10];
//	
//	// Tab bar
//	self.tabBar = [[InfiniTabBar alloc] initWithItems:[NSArray arrayWithObjects:favorites,
//													   topRated,
//													   featured,
//													   recents,
//													   contacts,
//													   history,
//													   bookmarks,
//													   search,
//													   downloads,
//													   mostRecent,
//													   mostViewed, nil]];
//	
//	[favorites release];
//	[topRated release];
//	[featured release];
//	[recents release];
//	[contacts release];
//	[history release];
//	[bookmarks release];
//	[search release];
//	[downloads release];
//	[mostRecent release];
//	[mostViewed release];
//	
//	// Don't show scroll indicator
//	self.tabBar.showsHorizontalScrollIndicator = NO;
//	self.tabBar.infiniTabBarDelegate = self;
//	self.tabBar.bounces = NO;
//	
//	[self.view addSubview:self.tabBar];
	
// UI
//    //回弹效果
//	UILabel *aLabel = [[UILabel alloc] initWithFrame:CGRectMake(20.0, 23.0, 178.0, 21.0)];
//	aLabel.text = @"Bounces";
//
//	[self.view addSubview:aLabel];
//
//	[aLabel release];
//
//	UISwitch *aSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(206.0, 20.0, 94.0, 27.0)];
//	[aSwitch addTarget:self action:@selector(bounces:) forControlEvents:UIControlEventValueChanged];
//
//	[self.view addSubview:aSwitch];
//
//	[aSwitch release];
//	//滚动指示器
//	UILabel *bLabel = [[UILabel alloc] initWithFrame:CGRectMake(20.0, 58.0, 178.0, 21.0)];
//	bLabel.text = @"Shows scroll indicator";
//
//	[self.view addSubview:bLabel];
//
//	[bLabel release];
//
//	UISwitch *bSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(206.0, 55.0, 94.0, 27.0)];
//	[bSwitch addTarget:self action:@selector(showsScrollIndicator:) forControlEvents:UIControlEventValueChanged];
//
//	[self.view addSubview:bSwitch];
//
//	[bSwitch release];
//	//按钮不动
//	UIButton *aButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//	[aButton addTarget:self action:@selector(setNewItems) forControlEvents:UIControlEventTouchUpInside];
//	aButton.frame = CGRectMake(20.0, 90.0, 280.0, 37.0);
//	[aButton setTitle:@"Set new items" forState:UIControlStateNormal];
//
//	[self.view addSubview:aButton];
//	//设置按钮的动画效果
//	UIButton *bButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//	[bButton addTarget:self action:@selector(setOldItemsAnimated) forControlEvents:UIControlEventTouchUpInside];
//	bButton.frame = CGRectMake(20.0, 135.0, 280.0, 37.0);
//	[bButton setTitle:@"Set old items animated" forState:UIControlStateNormal];
//
//	[self.view addSubview:bButton];
//	//滚动到第3个页面
//	UIButton *cButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//	[cButton addTarget:self action:@selector(scrollToTabBar3) forControlEvents:UIControlEventTouchUpInside];
//	cButton.frame = CGRectMake(20.0, 180.0, 280.0, 37.0);
//	[cButton setTitle:@"Scroll to tab bar 3" forState:UIControlStateNormal];
//
//	[self.view addSubview:cButton];
//	滚动到第一个页
//	UIButton *dButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//	[dButton addTarget:self action:@selector(scrollAnimatedToTabBar1) forControlEvents:UIControlEventTouchUpInside];
//	dButton.frame = CGRectMake(20.0, 225.0, 280.0, 37.0);
//	[dButton setTitle:@"Scroll animated to tab bar 1" forState:UIControlStateNormal];
//
//	[self.view addSubview:dButton];
//	//选择第8个按钮
//	UIButton *eButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//	[eButton addTarget:self action:@selector(selectItem8) forControlEvents:UIControlEventTouchUpInside];
//	eButton.frame = CGRectMake(20.0, 270.0, 280.0, 37.0);
//	[eButton setTitle:@"Select item 8" forState:UIControlStateNormal];
//
//	[self.view addSubview:eButton];
//	//当前选择页
//	UILabel *cLabel = [[UILabel alloc] initWithFrame:CGRectMake(20.0, 315.0, 230.0, 21.0)];
//	cLabel.text = @"Current tab bar:";
//
//	[self.view addSubview:cLabel];
//
//	[cLabel release];
//
//	self.dLabel = [[UILabel alloc] initWithFrame:CGRectMake(258.0, 315.0, 42.0, 21.0)];
//	self.dLabel.text = @"1";
//	self.dLabel.textAlignment = UITextAlignmentRight;
//
//	[self.view addSubview:self.dLabel];
//	//当前选择label
//	UILabel *eLabel = [[UILabel alloc] initWithFrame:CGRectMake(20.0, 344.0, 230.0, 21.0)];
//	eLabel.text = @"Selected item:";
//
//	[self.view addSubview:eLabel];
//
//	[eLabel release];
//
//	self.fLabel = [[UILabel alloc] initWithFrame:CGRectMake(258.0, 344.0, 42.0, 21.0)];
//	self.fLabel.textAlignment = UITextAlignmentRight;
//
//	[self.view addSubview:self.fLabel];
//	// 滚到上一页（下一页）
//	UIButton *fButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
//	[fButton addTarget:self action:@selector(scrollToPreviousTabBar) forControlEvents:UIControlEventTouchUpInside];
//	fButton.transform = CGAffineTransformMakeRotation(M_PI);
//	fButton.frame = CGRectMake(17.0, 364.0, 29.0, 31.0);
//	
//	[self.view addSubview:fButton];
//	
//	UIButton *gButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
//	[gButton addTarget:self action:@selector(scrollToNextTabBar) forControlEvents:UIControlEventTouchUpInside];
//	gButton.frame = CGRectMake(274.0, 364.0, 29.0, 31.0);
//	
//	[self.view addSubview:gButton];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self initWithControl];
    [self initWithData];
}

- (void)bounces:(UISwitch *)sender {
	self.tabBar.bounces = sender.on;
}

- (void)showsScrollIndicator:(UISwitch *)sender {
	self.tabBar.showsHorizontalScrollIndicator = sender.on;
}

- (void)setNewItems {
	UITabBarItem *featured = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@""] tag:0];
	UITabBarItem *mostViewed = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@""] tag:1];
	UITabBarItem *search = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@""] tag:2];

	UITabBarItem *favorites = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@""] tag:3];

	UITabBarItem *someThing = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@""] tag:4];
    UITabBarItem *more = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@""] tag:5];

	self.tabBar = [[InfiniTabBar alloc] initWithItems:[NSArray arrayWithObject:featured]];
    [self.tabBar setScrollEnabled:NO];
	[self.tabBar setItems:[NSArray arrayWithObjects:featured,
						   mostViewed,
						   search,
                           favorites,
                           someThing,
						   more, nil] animated:NO];
	
	[featured release];
	[mostViewed release];
	[search release];
	[favorites release];
    [someThing release];
	[more release];
    
    self.tabBar.showsHorizontalScrollIndicator = NO;
	self.tabBar.infiniTabBarDelegate = self;
	self.tabBar.bounces = NO;
	
	[self.view addSubview:self.tabBar];
}

- (void)setOldItemsAnimated {
	UITabBarItem *favorites = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:0];
	UITabBarItem *topRated = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemTopRated tag:1];
	UITabBarItem *featured = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:2];
	UITabBarItem *recents = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemRecents tag:3];
	UITabBarItem *contacts = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:4];
	UITabBarItem *history = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemHistory tag:5];
	UITabBarItem *bookmarks = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:6];
	UITabBarItem *search = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemSearch tag:7];
	UITabBarItem *downloads = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:8]; downloads.badgeValue = @"2";
	UITabBarItem *mostRecent = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMostRecent tag:9];
	UITabBarItem *mostViewed = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMostViewed tag:10];
	
	[self.tabBar setItems:[NSArray arrayWithObjects:favorites,
						   topRated,
						   featured,
						   recents,
						   contacts,
						   history,
						   bookmarks,
						   search,
						   downloads,
						   mostRecent,
						   mostViewed, nil] animated:YES];
	
	[favorites release];
	[topRated release];
	[featured release];
	[recents release];
	[contacts release];
	[history release];
	[bookmarks release];
	[search release];
	[downloads release];
	[mostRecent release];
	[mostViewed release];
}

- (void)scrollToTabBar3 {
	[self.tabBar scrollToTabBarWithTag:2 animated:NO];
}

- (void)scrollAnimatedToTabBar1 {
	[self.tabBar scrollToTabBarWithTag:0 animated:YES];    
}

- (void)selectItem8 {
	[self.tabBar selectItemWithTag:7];
}

- (void)scrollToPreviousTabBar {
	[self.tabBar scrollToTabBarWithTag:self.tabBar.currentTabBarTag - 1 animated:YES];
}

- (void)scrollToNextTabBar {
	[self.tabBar scrollToTabBarWithTag:self.tabBar.currentTabBarTag + 1 animated:YES];
}

- (void)infiniTabBar:(InfiniTabBar *)tabBar didScrollToTabBarWithTag:(int)tag {
	self.dLabel.text = [NSString stringWithFormat:@"%d", tag + 1];
}

- (void)infiniTabBar:(InfiniTabBar *)tabBar didSelectItemWithTag:(int)tag {
    switch (tag) {
        case 0:
        {
            BTCocktailViewController *btCocktailViewController = [[BTCocktailViewController alloc]init];
            [self.navigationController pushViewController:btCocktailViewController animated:YES];
        }
            break;
        case 1:
            
            break;
        case 2:
            
            break;
        case 3:
            
            break;
        case 4:
            
            break;
        case 5:
            
            break;
        default:
            break;
    }
}

- (void)dealloc {
	// UI
	[fLabel release];
	[dLabel release];
	
	[tabBar release];
	
    [super dealloc];
}

@end