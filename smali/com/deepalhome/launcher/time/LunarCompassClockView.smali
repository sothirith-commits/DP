.class public final Lcom/deepalhome/launcher/time/LunarCompassClockView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final REFRESH_INTERVAL_MS:J

.field public final SECOND_FADE_DURATION_MS:F

.field public activeArcColor:I

.field public final activeArcPaint:Landroid/graphics/Paint;

.field public activeArcWidth:F

.field public activeTextColor:I

.field public final activeTextPaint:Landroid/graphics/Paint;

.field public activeTextSize:F

.field public centerRadius:F

.field public centerTextColor:I

.field public final centerTextPaint:Landroid/graphics/Paint;

.field public centerTextSize:F

.field public final cnNumbers:[Ljava/lang/String;

.field public currentHour:I

.field public currentMinute:I

.field public currentSecond:I

.field public currentSolarDay:I

.field public currentSolarMonth:I

.field public final diZhi:[Ljava/lang/String;

.field public final hourLabelsBottom:[Ljava/lang/String;

.field public final hourLabelsTop:[Ljava/lang/String;

.field public isRefreshing:Z

.field public isTimeTickReceiverRegistered:Z

.field public isUIModeListenerRegistered:Z

.field public millisFraction:F

.field public final onUIModeChangedListener:Lcom/deepalhome/launcher/time/LunarCompassClockView$onUIModeChangedListener$1;

.field public prevSecond:I

.field public prevSecondFadeProgress:F

.field public final refreshRunnable:Landroidx/appcompat/widget/Toolbar$2;

.field public ringLineColor:I

.field public final ringLinePaint:Landroid/graphics/Paint;

.field public ringLineWidth:F

.field public ringSpacing:F

.field public ringTextColor:I

.field public final ringTextPaint:Landroid/graphics/Paint;

.field public ringTextSize:F

.field public secondFadeProgress:F

.field public final solarDayLabels:[Ljava/lang/String;

.field public final solarMonthLabels:[Ljava/lang/String;

.field public temperatureText:Ljava/lang/String;

.field public final tianGan:[Ljava/lang/String;

.field public tickLength:F

.field public tickMarkColor:I

.field public final tickMarkPaint:Landroid/graphics/Paint;

.field public tickMarkWidth:F

.field public final timeTickReceiver:Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

.field public weatherIconResId:I

.field public weatherText:Ljava/lang/String;

.field public weekday:Ljava/lang/String;

.field public yearText:Ljava/lang/String;

.field public zodiacGanZhi:Ljava/lang/String;

.field public final zodiacNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 62

    move-object/from16 v0, p0

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "#B0B0B0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringTextColor:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeTextColor:I

    iput v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->centerTextColor:I

    const-string v2, "#40FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringLineColor:I

    const-string v2, "#80FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeArcColor:I

    const-string v2, "#30FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->tickMarkColor:I

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput-object v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->centerTextPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iput-object v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringTextPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput-object v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeTextPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringLinePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iput-object v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeArcPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->tickMarkPaint:Landroid/graphics/Paint;

    const-string v2, ""

    iput-object v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->yearText:Ljava/lang/String;

    iput-object v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->weekday:Ljava/lang/String;

    iput-object v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->zodiacGanZhi:Ljava/lang/String;

    iput v3, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->currentSolarMonth:I

    iput v3, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->currentSolarDay:I

    iput-object v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->weatherText:Ljava/lang/String;

    iput-object v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->temperatureText:Ljava/lang/String;

    iput v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->prevSecond:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->secondFadeProgress:F

    const/high16 v1, 0x43960000    # 300.0f

    iput v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->SECOND_FADE_DURATION_MS:F

    const-string v58, "Fifty-Six"
    const-string v59, "Fifty-Seven"
    const-string v2, "Zero"
    const-string v3, "One"
    const-string v4, "Two"
    const-string v5, "Three"
    const-string v6, "Four"
    const-string v7, "Five"
    const-string v8, "Six"
    const-string v9, "Seven"
    const-string v10, "Eight"
    const-string v11, "Nine"
    const-string v12, "Ten"
    const-string v13, "Eleven"
    const-string v14, "Twelve"
    const-string v15, "Thirteen"
    const-string v16, "Fourteen"
    const-string v17, "Fifteen"
    const-string v18, "Sixteen"
    const-string v19, "Seventeen"
    const-string v20, "Eighteen"
    const-string v21, "Nineteen"
    const-string v22, "Twenty"
    const-string v23, "Twenty-One"
    const-string v24, "Twenty-Two"
    const-string v25, "Twenty-Three"
    const-string v26, "Twenty-Four"
    const-string v27, "Twenty-Five"
    const-string v28, "Twenty-Six"
    const-string v29, "Twenty-Seven"
    const-string v30, "Twenty-Eight"
    const-string v31, "Twenty-Nine"
    const-string v32, "Thirty"
    const-string v33, "Thirty-One"
    const-string v34, "Thirty-Two"
    const-string v35, "Thirty-Three"
    const-string v36, "Thirty-Four"
    const-string v37, "Thirty-Five"
    const-string v38, "Thirty-Six"
    const-string v39, "Thirty-Seven"
    const-string v40, "Thirty-Eight"
    const-string v41, "Thirty-Nine"
    const-string v42, "Forty"
    const-string v43, "Forty-One"
    const-string v44, "Forty-Two"
    const-string v45, "Forty-Three"
    const-string v46, "Forty-Four"
    const-string v47, "Forty-Five"
    const-string v48, "Forty-Six"
    const-string v49, "Forty-Seven"
    const-string v50, "Forty-Eight"
    const-string v51, "Forty-Nine"
    const-string v52, "Fifty"
    const-string v53, "Fifty-One"
    const-string v54, "Fifty-Two"
    const-string v55, "Fifty-Three"
    const-string v56, "Fifty-Four"
    const-string v57, "Fifty-Five"
    const-string v60, "Fifty-Eight"
    const-string v61, "Fifty-Nine"

    filled-new-array/range {v2 .. v61}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->cnNumbers:[Ljava/lang/String;

    const-string v22, "Twenty O\'Clock"
    const-string v23, "Twenty-One O\'Clock"
    const-string v2, "Zero O\'Clock"
    const-string v3, "One O\'Clock"
    const-string v4, "Two O\'Clock"
    const-string v5, "Three O\'Clock"
    const-string v6, "Four O\'Clock"
    const-string v7, "Five O\'Clock"
    const-string v8, "Six O\'Clock"
    const-string v9, "Seven O\'Clock"
    const-string v10, "Eight O\'Clock"
    const-string v11, "Nine O\'Clock"
    const-string v12, "Ten O\'Clock"
    const-string v13, "Eleven O\'Clock"
    const-string v14, "Twelve O\'Clock"
    const-string v15, "Thirteen O\'Clock"
    const-string v16, "Fourteen O\'Clock"
    const-string v17, "Fifteen O\'Clock"
    const-string v18, "Sixteen O\'Clock"
    const-string v19, "Seventeen O\'Clock"
    const-string v20, "Eighteen O\'Clock"
    const-string v21, "Nineteen O\'Clock"
    const-string v24, "Twenty-Two O\'Clock"
    const-string v25, "Twenty-Three O\'Clock"

    filled-new-array/range {v2 .. v25}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->hourLabelsTop:[Ljava/lang/String;

    const-string v22, "Shen (Monkey) Mid"
    const-string v23, "You (Rooster) Mid"
    const-string v2, "Zi (Rat) First"
    const-string v3, "Chou (Ox) First"
    const-string v4, "Yin (Tiger) First"
    const-string v5, "Mao (Rabbit) First"
    const-string v6, "Chen (Dragon) First"
    const-string v7, "Si (Snake) First"
    const-string v8, "Wu (Horse) First"
    const-string v9, "Wei (Goat) First"
    const-string v10, "Shen (Monkey) First"
    const-string v11, "You (Rooster) First"
    const-string v12, "Xu (Dog) First"
    const-string v13, "Hai (Pig) First"
    const-string v14, "Zi (Rat) Mid"
    const-string v15, "Chou (Ox) Mid"
    const-string v16, "Yin (Tiger) Mid"
    const-string v17, "Mao (Rabbit) Mid"
    const-string v18, "Chen (Dragon) Mid"
    const-string v19, "Si (Snake) Mid"
    const-string v20, "Wu (Horse) Mid"
    const-string v21, "Wei (Goat) Mid"
    const-string v24, "Xu (Dog) Mid"
    const-string v25, "Hai (Pig) Mid"

    filled-new-array/range {v2 .. v25}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->hourLabelsBottom:[Ljava/lang/String;

    const-string v10, "September"
    const-string v11, "October"
    const-string v2, "January"
    const-string v3, "February"
    const-string v4, "March"
    const-string v5, "April"
    const-string v6, "May"
    const-string v7, "June"
    const-string v8, "July"
    const-string v9, "August"
    const-string v12, "November"
    const-string v13, "December"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->solarMonthLabels:[Ljava/lang/String;

    const-string v29, "Twenty-Eighth"
    const-string v30, "Twenty-Ninth"
    const-string v2, "First"
    const-string v3, "Second"
    const-string v4, "Third"
    const-string v5, "Fourth"
    const-string v6, "Fifth"
    const-string v7, "Sixth"
    const-string v8, "Seventh"
    const-string v9, "Eighth"
    const-string v10, "Ninth"
    const-string v11, "Tenth"
    const-string v12, "Eleventh"
    const-string v13, "Twelfth"
    const-string v14, "Thirteenth"
    const-string v15, "Fourteenth"
    const-string v16, "Fifteenth"
    const-string v17, "Sixteenth"
    const-string v18, "Seventeenth"
    const-string v19, "Eighteenth"
    const-string v20, "Nineteenth"
    const-string v21, "Twentieth"
    const-string v22, "Twenty-First"
    const-string v23, "Twenty-Second"
    const-string v24, "Twenty-Third"
    const-string v25, "Twenty-Fourth"
    const-string v26, "Twenty-Fifth"
    const-string v27, "Twenty-Sixth"
    const-string v28, "Twenty-Seventh"
    const-string v31, "Thirtieth"
    const-string v32, "Thirty-First"

    filled-new-array/range {v2 .. v32}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->solarDayLabels:[Ljava/lang/String;

    const-string v10, "Monkey"
    const-string v11, "Rooster"
    const-string v2, "Rat"
    const-string v3, "Ox"
    const-string v4, "Tiger"
    const-string v5, "Rabbit"
    const-string v6, "Dragon"
    const-string v7, "Snake"
    const-string v8, "Horse"
    const-string v9, "Goat"
    const-string v12, "Dog"
    const-string v13, "Pig"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->zodiacNames:[Ljava/lang/String;

    const-string v8, "Geng (7th Heavenly Stem)"
    const-string v9, "Xin (8th Heavenly Stem)"
    const-string v2, "Jia (1st Heavenly Stem)"
    const-string v3, "Yi (2nd Heavenly Stem)"
    const-string v4, "Bing (3rd Heavenly Stem)"
    const-string v5, "Ding (4th Heavenly Stem)"
    const-string v6, "Wu (5th Heavenly Stem)"
    const-string v7, "Ji (6th Heavenly Stem)"
    const-string v10, "Ren (9th Heavenly Stem)"
    const-string v11, "Gui (10th Heavenly Stem)"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->tianGan:[Ljava/lang/String;

    const-string v10, "Shen (Monkey)"
    const-string v11, "You (Rooster)"
    const-string v2, "Zi (Rat)"
    const-string v3, "Chou (Ox)"
    const-string v4, "Yin (Tiger)"
    const-string v5, "Mao (Rabbit)"
    const-string v6, "Chen (Dragon)"
    const-string v7, "Si (Snake)"
    const-string v8, "Wu (Horse)"
    const-string v9, "Wei (Goat)"
    const-string v12, "Xu (Dog)"
    const-string v13, "Hai (Pig)"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->diZhi:[Ljava/lang/String;

    new-instance v1, Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->timeTickReceiver:Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

    const-wide/16 v1, 0x32

    iput-wide v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->REFRESH_INTERVAL_MS:J

    new-instance v1, Landroidx/appcompat/widget/Toolbar$2;

    const/16 v2, 0x14

    invoke-direct {v1, v2, v0}, Landroidx/appcompat/widget/Toolbar$2;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->refreshRunnable:Landroidx/appcompat/widget/Toolbar$2;

    new-instance v1, Lcom/deepalhome/launcher/time/LunarCompassClockView$onUIModeChangedListener$1;

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/time/LunarCompassClockView$onUIModeChangedListener$1;-><init>(Lcom/deepalhome/launcher/time/LunarCompassClockView;)V

    iput-object v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->onUIModeChangedListener:Lcom/deepalhome/launcher/time/LunarCompassClockView$onUIModeChangedListener$1;

    sget-object v1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/time/LunarCompassClockView;->applyUIMode(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/time/LunarCompassClockView;->updateTime()V

    return-void
.end method

.method public static blendColor(IFI)I
    .locals 7

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    int-to-float v6, v0

    sub-int/2addr v3, v0

    int-to-float v0, v3

    mul-float/2addr v0, p1

    add-float/2addr v0, v6

    float-to-int v0, v0

    int-to-float v3, v1

    sub-int/2addr v4, v1

    int-to-float v1, v4

    mul-float/2addr v1, p1

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v3, v2

    sub-int/2addr v5, v2

    int-to-float v2, v5

    mul-float/2addr v2, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, p0

    sub-int/2addr p2, p0

    int-to-float p0, p2

    mul-float/2addr p0, p1

    add-float/2addr p0, v3

    float-to-int p0, p0

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static drawRing$default(Lcom/deepalhome/launcher/time/LunarCompassClockView;Landroid/graphics/Canvas;FFFIIF[Ljava/lang/String;FIF[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v1, p14

    and-int/lit16 v2, v1, 0x1000

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object/from16 v6, p12

    :goto_0
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_1

    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object/from16 v5, p13

    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/graphics/RectF;

    sub-float v1, v8, v10

    sub-float v2, v9, v10

    add-float v3, v8, v10

    move-object/from16 p12, v5

    add-float v5, v9, v10

    invoke-direct {v4, v1, v2, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move/from16 v1, p7

    invoke-virtual {v7, v1, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringLinePaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringLineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v8, v9, v10, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v5, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->tickMarkPaint:Landroid/graphics/Paint;

    iget v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->tickMarkColor:I

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->tickLength:F

    sub-float v16, v10, v1

    add-float v17, v10, v1

    const/16 v18, 0x0

    move/from16 v3, v18

    :goto_2
    const/high16 v2, 0x43b40000    # 360.0f

    if-ge v3, v11, :cond_2

    int-to-float v1, v3

    move/from16 p13, v3

    int-to-float v3, v11

    div-float/2addr v1, v3

    mul-float/2addr v1, v2

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v1, v1

    move-object/from16 p14, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v16

    add-float/2addr v3, v8

    move-object/from16 p7, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v16

    add-float/2addr v4, v9

    move-object/from16 v19, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v17

    add-float/2addr v5, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, v17

    add-float v6, v1, v9

    move-object/from16 v1, p1

    move v2, v3

    move/from16 v20, p13

    move v3, v4

    move-object/from16 v21, p14

    move v4, v5

    move-object/from16 v22, p7

    move-object/from16 v13, p12

    move v5, v6

    move-object/from16 v15, v19

    move-object/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v20, 0x1

    move-object v6, v15

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move/from16 v13, p9

    move/from16 v15, p11

    goto :goto_2

    :cond_2
    move-object/from16 v13, p12

    move-object/from16 v21, v4

    move-object v15, v6

    const/16 v16, 0x1

    if-eqz v15, :cond_3

    if-eqz v13, :cond_3

    move/from16 v17, v16

    goto :goto_3

    :cond_3
    move/from16 v17, v18

    :goto_3
    iget v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringTextSize:F

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v3

    iget v4, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeTextSize:F

    mul-float v19, v4, v3

    move/from16 v3, v18

    :goto_4
    iget-object v6, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeTextPaint:Landroid/graphics/Paint;

    const/high16 v20, 0x40000000    # 2.0f

    if-ge v3, v11, :cond_a

    if-eq v3, v12, :cond_4

    move/from16 v22, v18

    goto :goto_5

    :cond_4
    move/from16 v22, v16

    :goto_5
    if-ne v3, v14, :cond_5

    if-ltz v14, :cond_5

    move/from16 v23, v16

    goto :goto_6

    :cond_5
    move/from16 v23, v18

    :goto_6
    if-nez v22, :cond_9

    int-to-float v5, v3

    int-to-float v4, v11

    div-float/2addr v5, v4

    mul-float/2addr v5, v2

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float/2addr v5, v4

    move/from16 v22, v3

    float-to-double v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v2, v2

    move/from16 v24, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v10

    add-float/2addr v4, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v10

    add-float/2addr v2, v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v7, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x42b40000    # 90.0f

    add-float v5, v24, v2

    invoke-virtual {v7, v5}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v3, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringTextPaint:Landroid/graphics/Paint;

    if-eqz v17, :cond_7

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v4, v15, v22

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-object v5, v13, v22

    if-eqz v23, :cond_6

    iget v3, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeTextColor:I

    iget v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringTextColor:I

    move-object/from16 v24, v15

    move/from16 v15, p11

    invoke-static {v3, v15, v2}, Lcom/deepalhome/launcher/time/LunarCompassClockView;->blendColor(IFI)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0xff

    int-to-float v3, v2

    mul-float/2addr v3, v15

    float-to-int v2, v3

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v2

    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float v2, v2, v19

    neg-float v2, v2

    div-float v2, v2, v20

    add-float/2addr v2, v3

    move-object/from16 v25, v13

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Paint$FontMetrics;->descent:F

    div-float v13, v13, v20

    sub-float v13, v2, v13

    const/4 v14, 0x0

    invoke-virtual {v7, v4, v14, v13, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float v2, v2, v19

    add-float/2addr v2, v3

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    div-float v3, v3, v20

    sub-float/2addr v2, v3

    invoke-virtual {v7, v5, v14, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v2, 0xff

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_7

    :cond_6
    move-object/from16 v25, v13

    move-object/from16 v24, v15

    move/from16 v15, p11

    iget v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringTextColor:I

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v6, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v6, v2

    const/4 v13, 0x2

    int-to-float v2, v13

    mul-float/2addr v2, v6

    add-float/2addr v2, v1

    neg-float v2, v2

    div-float v2, v2, v20

    add-float/2addr v2, v6

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Paint$FontMetrics;->descent:F

    div-float v13, v13, v20

    sub-float v13, v2, v13

    const/4 v14, 0x0

    invoke-virtual {v7, v4, v14, v13, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v2, v1

    add-float/2addr v2, v6

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    div-float v4, v4, v20

    sub-float/2addr v2, v4

    invoke-virtual {v7, v5, v14, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_7
    move-object/from16 v25, v13

    move-object/from16 v24, v15

    move/from16 v15, p11

    aget-object v2, p8, v22

    if-eqz v23, :cond_8

    iget v3, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeTextColor:I

    iget v4, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringTextColor:I

    invoke-static {v3, v15, v4}, Lcom/deepalhome/launcher/time/LunarCompassClockView;->blendColor(IFI)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0xff

    int-to-float v4, v3

    mul-float/2addr v4, v15

    float-to-int v3, v4

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v3

    neg-float v3, v4

    div-float v3, v3, v20

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v7, v2, v4, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v2, 0xff

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_7

    :cond_8
    iget v4, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v5, v4

    neg-float v4, v5

    div-float v4, v4, v20

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v7, v2, v5, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8

    :cond_9
    move/from16 v22, v3

    move-object/from16 v25, v13

    move-object/from16 v24, v15

    move/from16 v15, p11

    :goto_8
    add-int/lit8 v3, v22, 0x1

    move/from16 v14, p10

    move-object/from16 v15, v24

    move-object/from16 v13, v25

    const/high16 v2, 0x43b40000    # 360.0f

    goto/16 :goto_4

    :cond_a
    move-object/from16 v25, v13

    move-object/from16 v24, v15

    const/4 v5, 0x0

    const/4 v13, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    int-to-float v1, v11

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v2, v1

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v4, v2, v1

    iget-object v11, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeArcPaint:Landroid/graphics/Paint;

    iget v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeArcColor:I

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v14, 0xff

    int-to-float v1, v14

    move/from16 v15, p9

    move-object/from16 v3, v25

    mul-float/2addr v1, v15

    float-to-int v2, v1

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v1, -0x3d4c0000    # -90.0f

    div-float v18, v4, v20

    sub-float v18, v1, v18

    const/16 v22, 0x0

    move-object/from16 v1, p1

    move v13, v2

    move-object/from16 v2, v21

    move/from16 v3, v18

    move/from16 v5, v22

    move-object/from16 v26, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    const-wide v1, -0x3fa9800000000000L    # -90.0

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v10

    add-float/2addr v3, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, v10

    add-float/2addr v1, v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v7, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringTextColor:I

    iget v0, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeTextColor:I

    invoke-static {v2, v15, v0}, Lcom/deepalhome/launcher/time/LunarCompassClockView;->blendColor(IFI)I

    move-result v0

    move-object/from16 v2, v26

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v17, :cond_d

    invoke-static/range {v24 .. v24}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v3, v24

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    if-le v12, v0, :cond_b

    goto :goto_9

    :cond_b
    move v0, v12

    :goto_9
    aget-object v0, v3, v0

    invoke-static/range {v25 .. v25}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v3, v25

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-le v12, v4, :cond_c

    goto :goto_a

    :cond_c
    move v4, v12

    :goto_a
    aget-object v3, v3, v4

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v5, v4

    const/4 v4, 0x2

    int-to-float v4, v4

    mul-float/2addr v4, v5

    add-float v4, v4, v19

    neg-float v4, v4

    div-float v4, v4, v20

    add-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    div-float v6, v6, v20

    sub-float v6, v4, v6

    invoke-virtual {v7, v0, v1, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float v4, v4, v19

    add-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    div-float v0, v0, v20

    sub-float/2addr v4, v0

    invoke-virtual {v7, v3, v1, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_d
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v0

    aget-object v0, p8, v12

    neg-float v3, v3

    div-float v3, v3, v20

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v3, v4

    invoke-virtual {v7, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_b
    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public final applyUIMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "#B0B0B0"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringTextColor:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeTextColor:I

    iput p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->centerTextColor:I

    const-string p1, "#40FFFFFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringLineColor:I

    const-string p1, "#80FFFFFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeArcColor:I

    const-string p1, "#30FFFFFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->tickMarkColor:I

    goto :goto_0

    :cond_0
    const-string p1, "#808080"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringTextColor:I

    const-string p1, "#323232"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeTextColor:I

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->centerTextColor:I

    const-string p1, "#40000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringLineColor:I

    const-string p1, "#80000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeArcColor:I

    const-string p1, "#30000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->tickMarkColor:I

    :goto_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/time/LunarCompassClockView;->updateTime()V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->isTimeTickReceiverRegistered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->isTimeTickReceiverRegistered:Z

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->timeTickReceiver:Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-boolean v0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->isUIModeListenerRegistered:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->isUIModeListenerRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->onUIModeChangedListener:Lcom/deepalhome/launcher/time/LunarCompassClockView$onUIModeChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/theme/UIModeManager;->addOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    :cond_1
    iget-boolean v0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->isRefreshing:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->isRefreshing:Z

    iget-object v0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->refreshRunnable:Landroidx/appcompat/widget/Toolbar$2;

    iget-wide v1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->REFRESH_INTERVAL_MS:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->isRefreshing:Z

    iget-object v1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->refreshRunnable:Landroidx/appcompat/widget/Toolbar$2;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->isTimeTickReceiverRegistered:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->isTimeTickReceiverRegistered:Z

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->timeTickReceiver:Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-boolean v1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->isUIModeListenerRegistered:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->isUIModeListenerRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->onUIModeChangedListener:Lcom/deepalhome/launcher/time/LunarCompassClockView$onUIModeChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/theme/UIModeManager;->removeOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    const-string v0, "canvas"

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/time/LunarCompassClockView;->updateTime()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v13, v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v16, v0, v1

    iget-object v0, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->centerTextPaint:Landroid/graphics/Paint;

    iget v2, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->centerTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v3, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->centerTextSize:F

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v3

    const/4 v5, 0x4

    int-to-float v5, v5

    mul-float/2addr v5, v3

    const/4 v6, 0x3

    int-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v6, v5

    div-float/2addr v6, v1

    sub-float v5, v16, v6

    add-float/2addr v5, v3

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    div-float/2addr v3, v1

    sub-float/2addr v5, v3

    iget-object v3, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->yearText:Ljava/lang/String;

    invoke-virtual {v14, v3, v13, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v5, v4

    iget v3, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->centerTextSize:F

    add-float/2addr v5, v3

    iget-object v3, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->weekday:Ljava/lang/String;

    invoke-virtual {v14, v3, v13, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v5, v4

    iget v3, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->centerTextSize:F

    add-float/2addr v5, v3

    iget-object v3, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->zodiacGanZhi:Ljava/lang/String;

    invoke-virtual {v14, v3, v13, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v3, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->weatherText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->temperatureText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    :goto_0
    add-float/2addr v5, v4

    iget v3, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->centerTextSize:F

    add-float/2addr v5, v3

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v3, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->weatherText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    iget-object v3, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->weatherText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iget-object v6, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->temperatureText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->temperatureText:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    iget v7, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->centerTextSize:F

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v8, v7

    const v9, 0x3e99999a    # 0.3f

    mul-float/2addr v7, v9

    iget v9, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->weatherIconResId:I

    if-eqz v9, :cond_3

    add-float v9, v8, v7

    goto :goto_3

    :cond_3
    move v9, v4

    :goto_3
    add-float/2addr v9, v3

    add-float/2addr v9, v6

    div-float/2addr v9, v1

    sub-float v6, v13, v9

    iget-object v9, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->weatherText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    iget-object v9, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->weatherText:Ljava/lang/String;

    invoke-virtual {v14, v9, v6, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    iget v9, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->weatherIconResId:I

    if-eqz v9, :cond_5

    add-float v9, v6, v3

    div-float v10, v7, v1

    add-float/2addr v10, v9

    iget v9, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->centerTextSize:F

    sub-float v9, v5, v9

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Paint$FontMetrics;->descent:F

    div-float/2addr v11, v1

    add-float/2addr v11, v9

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v8

    add-float/2addr v1, v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget v11, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->weatherIconResId:I

    invoke-virtual {v9, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_5

    float-to-int v11, v10

    float-to-int v12, v1

    add-float/2addr v10, v8

    float-to-int v10, v10

    add-float/2addr v1, v8

    float-to-int v1, v1

    invoke-virtual {v9, v11, v12, v10, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    iget-object v1, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->temperatureText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    add-float/2addr v6, v3

    iget v1, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->weatherIconResId:I

    if-eqz v1, :cond_6

    add-float v4, v8, v7

    :cond_6
    add-float/2addr v6, v4

    iget-object v1, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->temperatureText:Ljava/lang/String;

    invoke-virtual {v14, v1, v6, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_8
    iget v0, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->centerRadius:F

    iget v1, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringSpacing:F

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    add-float v4, v2, v0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v1

    add-float v17, v2, v0

    const/high16 v2, 0x40200000    # 2.5f

    mul-float/2addr v2, v1

    add-float v18, v2, v0

    const/high16 v2, 0x40600000    # 3.5f

    mul-float/2addr v2, v1

    add-float v19, v2, v0

    const/high16 v2, 0x40900000    # 4.5f

    mul-float/2addr v1, v2

    add-float v20, v1, v0

    iget v0, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->currentSolarMonth:I

    add-int/lit8 v6, v0, -0x1

    int-to-float v0, v6

    neg-float v0, v0

    const/high16 v1, 0x41400000    # 12.0f

    div-float/2addr v0, v1

    const/high16 v21, 0x43b40000    # 360.0f

    mul-float v7, v0, v21

    const/4 v12, 0x0

    const/16 v22, 0x0

    const/16 v5, 0xc

    iget-object v8, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->solarMonthLabels:[Ljava/lang/String;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, -0x1

    const/4 v11, 0x0

    const v23, 0xf800

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v13

    move/from16 v3, v16

    move/from16 v24, v13

    move-object/from16 v13, v22

    move/from16 v14, v23

    invoke-static/range {v0 .. v14}, Lcom/deepalhome/launcher/time/LunarCompassClockView;->drawRing$default(Lcom/deepalhome/launcher/time/LunarCompassClockView;Landroid/graphics/Canvas;FFFIIF[Ljava/lang/String;FIF[Ljava/lang/String;[Ljava/lang/String;I)V

    iget v0, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->currentSolarDay:I

    add-int/lit8 v6, v0, -0x1

    int-to-float v0, v6

    neg-float v0, v0

    const/high16 v1, 0x41f80000    # 31.0f

    div-float/2addr v0, v1

    mul-float v7, v0, v21

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v5, 0x1f

    iget-object v8, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->solarDayLabels:[Ljava/lang/String;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, -0x1

    const/4 v11, 0x0

    const v14, 0xf800

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static/range {v0 .. v14}, Lcom/deepalhome/launcher/time/LunarCompassClockView;->drawRing$default(Lcom/deepalhome/launcher/time/LunarCompassClockView;Landroid/graphics/Canvas;FFFIIF[Ljava/lang/String;FIF[Ljava/lang/String;[Ljava/lang/String;I)V

    iget v6, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->currentHour:I

    int-to-float v0, v6

    neg-float v0, v0

    const/high16 v1, 0x41c00000    # 24.0f

    div-float/2addr v0, v1

    mul-float v7, v0, v21

    const/4 v11, 0x0

    iget-object v13, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->hourLabelsBottom:[Ljava/lang/String;

    const/16 v5, 0x18

    iget-object v12, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->hourLabelsTop:[Ljava/lang/String;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, -0x1

    const v14, 0xc800

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v16

    move/from16 v4, v18

    move-object v8, v12

    invoke-static/range {v0 .. v14}, Lcom/deepalhome/launcher/time/LunarCompassClockView;->drawRing$default(Lcom/deepalhome/launcher/time/LunarCompassClockView;Landroid/graphics/Canvas;FFFIIF[Ljava/lang/String;FIF[Ljava/lang/String;[Ljava/lang/String;I)V

    iget v6, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->currentMinute:I

    int-to-float v0, v6

    neg-float v0, v0

    const/high16 v17, 0x42700000    # 60.0f

    div-float v0, v0, v17

    mul-float v7, v0, v21

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v5, 0x3c

    iget-object v8, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->cnNumbers:[Ljava/lang/String;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, -0x1

    const/4 v11, 0x0

    const v14, 0xf800

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v16

    move/from16 v4, v19

    invoke-static/range {v0 .. v14}, Lcom/deepalhome/launcher/time/LunarCompassClockView;->drawRing$default(Lcom/deepalhome/launcher/time/LunarCompassClockView;Landroid/graphics/Canvas;FFFIIF[Ljava/lang/String;FIF[Ljava/lang/String;[Ljava/lang/String;I)V

    iget v6, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->currentSecond:I

    int-to-float v0, v6

    iget v1, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->millisFraction:F

    add-float/2addr v0, v1

    neg-float v0, v0

    div-float v0, v0, v17

    mul-float v7, v0, v21

    iget v9, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->secondFadeProgress:F

    iget v10, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->prevSecond:I

    iget v11, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->prevSecondFadeProgress:F

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v5, 0x3c

    iget-object v8, v15, Lcom/deepalhome/launcher/time/LunarCompassClockView;->cnNumbers:[Ljava/lang/String;

    const v14, 0xf800

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v16

    move/from16 v4, v20

    invoke-static/range {v0 .. v14}, Lcom/deepalhome/launcher/time/LunarCompassClockView;->drawRing$default(Lcom/deepalhome/launcher/time/LunarCompassClockView;Landroid/graphics/Canvas;FFFIIF[Ljava/lang/String;FIF[Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    const/high16 p3, 0x40800000    # 4.0f

    mul-float/2addr p3, p2

    sub-float/2addr p1, p3

    const/high16 p3, 0x42900000    # 72.0f

    mul-float/2addr p3, p2

    iput p3, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->centerRadius:F

    sub-float/2addr p1, p3

    const/high16 p3, 0x40a00000    # 5.0f

    div-float/2addr p1, p3

    iput p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringSpacing:F

    const/high16 p3, 0x41900000    # 18.0f

    mul-float/2addr p3, p2

    iput p3, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->centerTextSize:F

    const/high16 p4, 0x41200000    # 10.0f

    mul-float/2addr p4, p2

    iput p4, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringTextSize:F

    const/high16 p4, 0x41400000    # 12.0f

    mul-float/2addr p4, p2

    iput p4, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeTextSize:F

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float/2addr p4, p2

    iput p4, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringLineWidth:F

    const/high16 p4, 0x40200000    # 2.5f

    mul-float/2addr p4, p2

    iput p4, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeArcWidth:F

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float/2addr p2, p4

    iput p2, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->tickMarkWidth:F

    const p2, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->tickLength:F

    iget-object p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->centerTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringTextSize:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeTextSize:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringLinePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->ringLineWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeArcPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->activeArcWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->tickMarkPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->tickMarkWidth:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->refreshRunnable:Landroidx/appcompat/widget/Toolbar$2;

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->isRefreshing:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->isRefreshing:Z

    iget-wide v1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->REFRESH_INTERVAL_MS:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->isRefreshing:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateTime()V
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->currentMinute:I

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    iput v4, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->millisFraction:F

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Eight"
    const-string v17, "Nine"
    const-string v8, "Zero"
    const-string v9, "One"
    const-string v10, "Two"
    const-string v11, "Three"
    const-string v12, "Four"
    const-string v13, "Five"
    const-string v14, "Six"
    const-string v15, "Seven"

    filled-new-array/range {v8 .. v17}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_0

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/lit8 v12, v12, -0x30

    aget-object v12, v8, v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    const/16 v15, 0x3e

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x5e74

    invoke-static {v7, v8, v9}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->yearText:Ljava/lang/String;

    const/4 v7, 0x7

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const-string v13, "Wednesday"
    const-string v14, "Thursday"
    const-string v10, "Sunday"
    const-string v11, "Monday"
    const-string v12, "Tuesday"
    const-string v15, "Friday"
    const-string v16, "Saturday"

    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    move-result-object v8

    sub-int/2addr v7, v4

    aget-object v7, v8, v7

    iput-object v7, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->weekday:Ljava/lang/String;

    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->currentSolarDay:I

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v4

    iput v7, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->currentSolarMonth:I

    add-int/lit8 v6, v6, -0x4

    rem-int/lit8 v4, v6, 0xa

    rem-int/2addr v6, v2

    iget-object v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->zodiacNames:[Ljava/lang/String;

    aget-object v2, v2, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->tianGan:[Ljava/lang/String;

    aget-object v4, v8, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->diZhi:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->zodiacGanZhi:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->currentHour:I

    iget v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->prevSecond:I

    const/4 v2, 0x0

    if-eq v3, v1, :cond_1

    iget v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->secondFadeProgress:F

    iput v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->prevSecondFadeProgress:F

    iget v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->currentSecond:I

    iput v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->prevSecond:I

    iput v2, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->secondFadeProgress:F

    iput v3, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->currentSecond:I

    goto :goto_1

    :cond_1
    iget v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->millisFraction:F

    mul-float/2addr v1, v5

    iget v3, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->SECOND_FADE_DURATION_MS:F

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->secondFadeProgress:F

    sub-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/deepalhome/launcher/time/LunarCompassClockView;->prevSecondFadeProgress:F

    :goto_1
    return-void
.end method