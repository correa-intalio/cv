// Copyright (c) 2009 Geoffrey Foster
//
// Permission is hereby granted, free of charge, to any person
// obtaining a copy of this software and associated documentation
// files (the "Software"), to deal in the Software without
// restriction, including without limitation the rights to use,
// copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following
// conditions:
//
// The above copyright notice and this permission notice shall be
// included in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
// OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
// HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
// WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
// OTHER DEALINGS IN THE SOFTWARE.

@import <AppKit/CPTextField.j>

@implementation URLTextField : CPTextField
{
    CPString _link;
    DOMElement _DOMAnchorElement;
}

- (id)initWithFrame:(CGRect)aFrame
{
    return [self initWithFrame:aFrame link:@"" title:@""];
}

- (id)initWithFrame:(CGRect)aFrame url:(CPURL)anURL title:(CPString)aTitle
{
    if (self = [super initWithFrame:aFrame])
    {
        if (!_DOMAnchorElement)
            {
                _DOMAnchorElement = document.createElement("a");
                _DOMAnchorElement.target = @"_blank";
                _DOMAnchorElement.style.position = "absolute";
                _DOMAnchorElement.style.zIndex = "100";

                self._DOMElement.appendChild(_DOMAnchorElement)
            }

            _DOMAnchorElement.href = typeof anURL == 'string' ? anURL : [anURL absoluteString];

            var bounds = [self bounds];

            _DOMAnchorElement.style.width = CGRectGetWidth(bounds) + @"px";
            _DOMAnchorElement.style.height = CGRectGetHeight(bounds) + @"px";
            console.log(_DOMElement);

    }

    return self;
}

- (void)setLink:(CPString)link
{
    _link = link;
    //_DOMAnchorElement.href = _link;
}
- (CPString)getLink
{
    return _link;
}

- (void)setStringValue:(CPString)anObject
{
    [super setStringValue:anObject];
 //   _DOMAnchorElement.title = anObject;
    [super sizeToFit];
}

@end
