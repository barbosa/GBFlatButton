# GBFlatButton
<!---
[![Version](http://cocoapod-badges.herokuapp.com/v/GBFlatButton/badge.png)](http://cocoadocs.org/docsets/GBFlatButton)
[![Platform](http://cocoapod-badges.herokuapp.com/p/GBFlatButton/badge.png)](http://cocoadocs.org/docsets/GBFlatButton)
-->

## Installation

GBFlatButton is available through [CocoaPods](http://cocoapods.org), to install
it simply add the following line to your Podfile:

```ruby
pod "GBFlatButton"
```

But if you don't use CocoaPods, you can just copy the `Classes` folder into your project.

## Usage

To create a flat button programmatically, just instantiate a new `GBFlatButton` with a frame and add it to some view, for example:

```objc
GBFlatButton *button = [[GBFlatButton alloc] initWithFrame:CGRectMake(originX, originY, width, height)];
button.buttonColor = [UIColor orangeColor]; // or import UIColor+GBFlatButton.h and use our cool colors
[button setTitle:@"An orange button" forState:UIControlStateNormal];
[self.view addSubview:button];
```

But you can also create a `GBFlatButton` via Interface Builder. To do it, drag a `UIButton` and drop it onto your view, change its custom class to `GBFlatButton` and customize it inside its File's Owner. For example:

```objc
@implementation MyViewController ()
@property (weak, nonatomic) IBOutlet GBFlatButton *flatButton;
@end

@implementation MyViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    _flatButton.buttonColor = [UIColor orangeColor];
}
@end
```

## Screenshots

![Buttons example](https://raw.githubusercontent.com/barbosa/GBFlatButton/master/screenshot.png)

## Author

Gustavo Barbosa [@gustavocsb](http://twitter.com/gustavocsb)

## License

Copyright (c) 2014 Gustavo Barbosa

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
