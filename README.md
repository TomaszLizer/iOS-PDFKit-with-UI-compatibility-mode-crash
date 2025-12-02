# PDFKit / SwiftUI crash reproduction
This repo showcases minimum reproduction of issue in iOS 26+ with UI compatibility mode enabled (info.plist flag `UIDesignRequiresCompatibility` set to `YES`).
Issue manifest by deadlock (on simulators) or crash (on some physical devices) when navigating to SwiftUI View that contains navigation title and embedded PDFView (from PDFKit: See: PDFKitView).

Crash or hang is started by `Observation tracking feedback loop`:

```
Observation tracking feedback loop detected! Make a symbolic breakpoint at UIObservationTrackingFeedbackLoopDetected to catch this in the debugger. Refer to the console logs for details about recent invalidations; you can also make a symbolic breakpoint at UIObservationTrackingInvalidated to catch invalidations in the debugger. Object receiving repeated [layout] invalidations: <_TtCGC7SwiftUI32NavigationStackHostingControllerVS_7AnyView_P10$1d9759c5411HostingView: 0x105c188d0; frame = (0 0; 402 874); clipsToBounds = YES; gestureRecognizers = <NSArray: 0x6000000105e0>; backgroundColor = <UIDynamicSystemColor: 0x600001738400; name = systemBackgroundColor>; layer = <CALayer: 0x600000c45d40>>
```

Issue is not reproducible on OS versions older than 26.0 or with `UIDesignRequiresCompatibility` set to `NO` (or not set at all).

Example known reproduction:
- Build project with Xcode 26.1.1
- Run app on iPhone 17 simulator with iOS 26.1
- Click on link displayed on main screen to navigate to PDF view
    - EN: "Tap here to enter PDF view"
    - FR: "Appuyez ici pour ouvrir la vue PDF"
- App hangs indefinitely and Feedback loop logs appears in debugger
