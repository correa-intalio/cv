/*
 * AppController.j
 * cv
 *
 * Created by You on September 18, 2011.
 * Copyright 2011, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>
@import "DCColor.j"
@import "URLTextField.j"
@import "LPAnchorButton.j"


/*!

Courier
Arial
Times New Roman
Courier New
Verdana
Helvetica
Trebuchet MS
Tahoma
Comic Sans MS
Lucida console
*/


@implementation AppController : CPObject
{
    CPView backgroundView;
    CPView contentView;
    CPScrollView scrollView;
    CGRect bounds;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask];

    contentView = [theWindow contentView];
    bounds = [contentView bounds];
    bounds.size.height -= 10.0;

    scrollView = [[CPScrollView alloc] initWithFrame:bounds];
    [contentView addSubview:scrollView];
    [scrollView setAutoresizingMask:CPViewWidthSizable | CPViewHeightSizable];
    [scrollView setAutohidesScrollers:YES];

    [self addBackgroundImageView];
    [self addMyPictureViewImage];
    //[self addBubleViewWithFrame:CGRectMake(300, 200, 200, 400)];
    //[self addBluredViewWithFrame:CGRectMake(550, 200, 200, 400)];
    [self addDetailView:CGRectMake(300, 200, 650, 600)];

    [self addLabel:"Maestría en Explotación de Datos y Descubrimiento del Conocimiento - U.B.A."
            origin:CGPointMake(310, 210)
            color:[CPColor colorWithCalibratedRed:255 / 255 green:158 / 255 blue:53 / 255 alpha:1]
            font:[CPFont boldSystemFontOfSize:16.0]];

    [self addLabel:"Primer año completo. 6 materias aprobadas. \nMaestría en Explotación de Datos (+)"
            origin:CGPointMake(310, 240)
            color:[CPColor grayColor]
            font:[CPFont boldFontWithName:@"Courier New" size:16.0]];


    [self addLabel:"Licenciatura en Analisís de Sistema - U.B.A."
            origin:CGPointMake(310, 280)
            color:[CPColor colorWithCalibratedRed:255 / 255 green:158 / 255 blue:53 / 255 alpha:1]
            font:[CPFont boldSystemFontOfSize:16.0]];

    [self addLabel:"Título de Lic. en Análisis de Sistema.(+) \nen la Facultad de Ingeniería de la Universidad de Buenos Aires."
            origin:CGPointMake(310, 300)
            color:[CPColor whiteColor]
            font:[CPFont boldFontWithName:@"Courier New" size:16.0]];


    [self addLabel:"Neque quisquam est qui dolorem ipsum quia dolor sit amet, consectetur"
            origin:CGPointMake(310, 400)
            color:[DCColor goldenColor]
            font:[CPFont boldSystemFontOfSize:16.0]];

    [self addLabel:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. \nVivamus tristique rhoncus dignissim. Aliquam erat volutpat. \nNullam tempus, nunc in auctor sagittis, neque urna molestie leo, \nac vehicula enim felis at tortor. Nulla facilisi. \nMaecenas adipiscing hendrerit quam, quis sollicitudin felis \ncondimentum nec. Phasellus blandit felis ac nunc vulputate eget \npretium metus cursus. Pellentesque et neque sit amet eros \ncongue tempus nec vitae leo."
            origin:CGPointMake(310, 430)
            color:[CPColor whiteColor]
            font:[CPFont boldFontWithName:@"Courier New" size:16.0]];


    [self addLabel:"Diego Martín Correa"
            origin:CGPointMake(10, 10)
            color:[DCColor goldenColor]
            font:[CPFont boldSystemFontOfSize:48.0]];

    [self addLabel:"Software Developer, Technologist and Web Junkie"
            origin:CGPointMake(15, 60)
            color:[CPColor whiteColor]
            font:[CPFont boldSystemFontOfSize:24.0]];

    [self addLabel:"education"
            origin:CGPointMake(20, 300)
            color:[DCColor goldenColor]
            font:[CPFont boldSystemFontOfSize:48.0]];

    [self addLabel:"intership"
            origin:CGPointMake(20, 500)
            color:[DCColor goldenColor]
            font:[CPFont boldSystemFontOfSize:48.0]];

    [self addLabel:"personal \n      skills"
            origin:CGPointMake(20, 800)
            color:[DCColor goldenColor]
            font:[CPFont boldSystemFontOfSize:48.0]];



    [self addLabel:"How You Can Reach Me:"
            origin:CGPointMake(15, 950)
            color:[CPColor whiteColor]
            font:[CPFont boldFontWithName:@"Courier New" size:20.0]];

    [self addLabel:" | "
            origin:CGPointMake(320, 950)
            color:[CPColor whiteColor]
            font:[CPFont boldFontWithName:@"Courier New" size:20.0]];

    var emailLabel = [LPAnchorButton buttonWithTitle:@"Email"];
    [emailLabel setFrame:CGRectMake(270,952,150,35)];
    // We want to the underline only when hovering
    [emailLabel setUnderlineMask:LPAnchorButtonHoverUnderline];

    // Set the colors
    [emailLabel setTextColor:[CPColor whiteColor]];
    [emailLabel setTextHoverColor:[CPColor colorWithHexString:@"aaa"]];
    [emailLabel setFont:[CPFont boldFontWithName:@"Courier New" size:20.0]];
    // Set the target & action just like a CPButton
    [emailLabel setTarget:self];
    [emailLabel setAction:@selector(didClickEmailMe:)];


    var linkedinLabel = [LPAnchorButton buttonWithTitle:@"LinkedIn"];
    [linkedinLabel setFrame:CGRectMake(350,952,150,35)];
    // We want to the underline only when hovering
    [linkedinLabel setUnderlineMask:LPAnchorButtonHoverUnderline];

    // Set the colors
    [linkedinLabel setTextColor:[CPColor whiteColor]];
    [linkedinLabel setTextHoverColor:[CPColor colorWithHexString:@"aaa"]];
    [linkedinLabel setFont:[CPFont boldFontWithName:@"Courier New" size:20.0]];
    // Set the target & action just like a CPButton
    [linkedinLabel setTarget:self];
    [linkedinLabel setAction:@selector(didClickLinkedIn:)];


    [backgroundView addSubview:emailLabel];
    [backgroundView addSubview:linkedinLabel];


    [theWindow orderFront:self];
}

- (void)didClickEmailMe:(id)aSender
{
    window.open ("mailto:diegomartincorrea@gmail.com?cc=a_e_r_e_a@yahoo.com.ar&subject=Job offer","email");
}

- (void)didClickLinkedIn:(id)aSender
{
    window.open ("http://www.linkedin.com/pub/diego-mart%C3%ADn-correa/13/b8b/9b","linkedin");
}

- (void)addBackgroundImageView
{
    backgroundView = [[CPView alloc] initWithFrame:CGRectMake(100, 0, 1000, 1000)];

    // [backgroundView setFrameSize:CGSizeMake(800,1000)];
    [backgroundView setAutoresizingMask:CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin];
    var anImage = [[CPImage alloc]
                initWithContentsOfFile:"Resources/bleh.jpg"
                                  size:CGSizeMake(1000, 200)];

    [backgroundView setBackgroundColor:[CPColor colorWithPatternImage:anImage]];

    var aShadowView = [CPShadowView shadowViewEnclosingView:backgroundView withWeight:CPLightShadow];

    [scrollView setDocumentView:aShadowView];

    //[backgroundView setCenter:[contentView center]];
    //[aShadowView setCenter:[contentView center]];
    // [aShadowView setFrameOrigin:CGPointMake(100, 10)];
}

- (void)addMyPictureViewImage
{
    var mainBundle = [CPBundle mainBundle],
        path = [mainBundle pathForResource:@"my.jpg"],
        image = [[CPImage alloc] initWithContentsOfFile:path size:CGSizeMake(490, 337)],
        imageView = [[CPImageView alloc] initWithFrame:CGRectMake(700, 0, 200, 200)];

    [imageView setHasShadow:NO];
    [imageView setImageScaling:CPScaleProportionally];
    //var imageSize = [image size];
    //[imageView setFrameSize:CGSizeMake(200, 200)];
    [imageView setImage:image];
    [backgroundView addSubview:imageView];
}

- (void)addDetailView:(CGRect)aFrame
{
    var mainBundle = [CPBundle mainBundle],
        path = [mainBundle pathForResource:@"bleh-simpleblur.jpg"],
        image = [[CPImage alloc] initWithContentsOfFile:path size:CGSizeMake(1000, 200)],
        imageView = [[CPImageView alloc] initWithFrame:aFrame];


    [imageView setBackgroundColor:[CPColor colorWithPatternImage:image]];
    [backgroundView addSubview:imageView];
}

- (void)addBubleViewWithFrame:(CGRect)aFrame
{
    var calcView = [[CPBox alloc] initWithFrame:aFrame];
    [calcView setFillColor:[CPColor colorWithCalibratedRed:255 / 255 green:255 / 255 blue:255 / 255 alpha:0.7]];
    [calcView setBorderType:CPLineBorder];
    [calcView setBorderColor:[calcView fillColor]];
    [calcView setBorderWidth:0.0];
    [calcView setCornerRadius:20.0];

    [backgroundView addSubview:calcView];
}

- (void)addBluredViewWithFrame:(CGRect)aFrame
{
    // var aView = [[CPView alloc] initWithFrame:aFrame],
    //     backgroundLayer = [CALayer layer];

    // [aView setLayer:backgroundLayer];
    // [aView setWantsLayer:YES];

    // [backgroundView addSubview:aView];

}

- (void)addLabel:(CPString)aLabelString origin:(CGPoint)aFrameOrigin color:(CPColor)aColor font:(CPFont)aFont
{

    var label = [[CPTextField alloc] initWithFrame:CGRectMakeZero()];

    [label setStringValue:aLabelString];
    [label setFont:aFont];
    [label setTextColor:aColor];
    [label sizeToFit];

    [label setFrameOrigin:aFrameOrigin];
    [label setAutoresizingMask:CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin];
    [backgroundView addSubview:label];
}


@end
