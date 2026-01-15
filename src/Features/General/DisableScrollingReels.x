#import "../../InstagramHeaders.h"
#import "../../Manager.h"

%hook IGUnifiedVideoCollectionView
- (void)didMoveToWindow {
    %orig;

    // Hard-coded to always disable scrolling
    NSLog(@"[SCInsta] PERMANENTLY Disabling scrolling reels");
    self.scrollEnabled = false;
}

- (void)setScrollEnabled:(BOOL)arg1 {
    // Force the scroll enabled state to always be NO
    NSLog(@"[SCInsta] PERMANENTLY Overriding scroll state to NO");
    return %orig(NO);
}
%end