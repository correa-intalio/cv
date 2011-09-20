/*!


http://www.w3schools.com/html/html_colors.asp

http://www.computerhope.com/htmcolor.htm

*/

@implementation DCColor : CPObject
{
}

- (id)init
{
    self = [super init];

    if (self)
    {

    }

    return self;
}

+ (CPColor)goldenColor
{
    return [CPColor colorWithCalibratedRed:234 / 255 green:193 / 255 blue:23 / 255 alpha:1];
}
@end
