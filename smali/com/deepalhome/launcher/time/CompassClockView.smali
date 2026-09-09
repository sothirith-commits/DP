.class public final Lcom/deepalhome/launcher/time/CompassClockView;
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

.field public currentDay:I

.field public currentHour:I

.field public currentMinute:I

.field public currentSecond:I

.field public isRefreshing:Z

.field public isTimeTickReceiverRegistered:Z

.field public isUIModeListenerRegistered:Z

.field public millisFraction:F

.field public final onUIModeChangedListener:Lcom/deepalhome/launcher/time/CompassClockView$onUIModeChangedListener$1;

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

.field public subTextColor:I

.field public final subTextPaint:Landroid/graphics/Paint;

.field public temperatureText:Ljava/lang/String;

.field public tickLength:F

.field public tickMarkColor:I

.field public final tickMarkPaint:Landroid/graphics/Paint;

.field public tickMarkWidth:F

.field public final timeTickReceiver:Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

.field public weatherIconResId:I

.field public weatherText:Ljava/lang/String;

.field public weekday:Ljava/lang/String;

.field public yearMonth:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "#B0B0B0"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->ringTextColor:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->activeTextColor:I

    iput p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->centerTextColor:I

    const-string p2, "#A0A0A0"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->subTextColor:I

    const-string p2, "#40FFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->ringLineColor:I

    const-string p2, "#80FFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->activeArcColor:I

    const-string p2, "#30FFFFFF"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->tickMarkColor:I

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->centerTextPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->subTextPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->ringTextPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput-object p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->activeTextPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->ringLinePaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->activeArcPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->tickMarkPaint:Landroid/graphics/Paint;

    const-string p2, ""

    iput-object p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->yearMonth:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->weekday:Ljava/lang/String;

    iput v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->currentDay:I

    iput-object p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->weatherText:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->temperatureText:Ljava/lang/String;

    iput p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->prevSecond:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->secondFadeProgress:F

    const/high16 p1, 0x43960000    # 300.0f

    iput p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->SECOND_FADE_DURATION_MS:F

    new-instance p1, Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->timeTickReceiver:Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

    const-wide/16 p1, 0x32

    iput-wide p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->REFRESH_INTERVAL_MS:J

    new-instance p1, Landroidx/appcompat/widget/Toolbar$2;

    const/16 p2, 0x13

    invoke-direct {p1, p2, p0}, Landroidx/appcompat/widget/Toolbar$2;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->refreshRunnable:Landroidx/appcompat/widget/Toolbar$2;

    new-instance p1, Lcom/deepalhome/launcher/time/CompassClockView$onUIModeChangedListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/time/CompassClockView$onUIModeChangedListener$1;-><init>(Lcom/deepalhome/launcher/time/CompassClockView;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->onUIModeChangedListener:Lcom/deepalhome/launcher/time/CompassClockView$onUIModeChangedListener$1;

    sget-object p1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/time/CompassClockView;->applyUIMode(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/time/CompassClockView;->updateTime()V

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


# virtual methods
.method public final applyUIMode(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "#B0B0B0"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->ringTextColor:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->activeTextColor:I

    iput p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->centerTextColor:I

    const-string p1, "#A0A0A0"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->subTextColor:I

    const-string p1, "#40FFFFFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->ringLineColor:I

    const-string p1, "#80FFFFFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->activeArcColor:I

    const-string p1, "#30FFFFFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->tickMarkColor:I

    goto :goto_0

    :cond_0
    const-string p1, "#808080"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->ringTextColor:I

    const-string v0, "#323232"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->activeTextColor:I

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->centerTextColor:I

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->subTextColor:I

    const-string p1, "#40000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->ringLineColor:I

    const-string p1, "#80000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->activeArcColor:I

    const-string p1, "#30000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->tickMarkColor:I

    :goto_0
    return-void
.end method

.method public final drawRing(Landroid/graphics/Canvas;FFFIIFZFIF)V
    .locals 26

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

    new-instance v5, Landroid/graphics/RectF;

    sub-float v1, v8, v10

    sub-float v2, v9, v10

    add-float v3, v8, v10

    add-float v4, v9, v10

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move/from16 v1, p7

    invoke-virtual {v7, v1, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v1, v0, Lcom/deepalhome/launcher/time/CompassClockView;->ringLinePaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/deepalhome/launcher/time/CompassClockView;->ringLineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v8, v9, v10, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/deepalhome/launcher/time/CompassClockView;->tickMarkPaint:Landroid/graphics/Paint;

    iget v1, v0, Lcom/deepalhome/launcher/time/CompassClockView;->tickMarkColor:I

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, v0, Lcom/deepalhome/launcher/time/CompassClockView;->tickLength:F

    sub-float v16, v10, v1

    add-float v17, v10, v1

    const/16 v18, 0x0

    move/from16 v3, v18

    :goto_0
    const/high16 v2, 0x43b40000    # 360.0f

    if-ge v3, v11, :cond_0

    int-to-float v6, v3

    int-to-float v1, v11

    div-float/2addr v6, v1

    mul-float/2addr v6, v2

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v6, v1

    float-to-double v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v1, v1

    move/from16 p7, v3

    move-object v6, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v16

    add-float/2addr v3, v8

    move-object/from16 v20, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v16

    add-float/2addr v4, v9

    move-object/from16 v21, v6

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

    move/from16 v22, p7

    move v3, v4

    move v4, v5

    move v5, v6

    const/4 v13, 0x1

    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v22, 0x1

    move/from16 v13, p9

    move-object/from16 v5, v20

    move-object/from16 v4, v21

    goto :goto_0

    :cond_0
    move-object/from16 v20, v5

    const/4 v13, 0x1

    move/from16 v1, v18

    :goto_1
    iget-object v6, v0, Lcom/deepalhome/launcher/time/CompassClockView;->activeTextPaint:Landroid/graphics/Paint;

    const-string v16, "%02d"

    const-string v17, "%d"

    const/high16 v19, 0x40000000    # 2.0f

    if-ge v1, v11, :cond_8

    if-eqz p8, :cond_1

    add-int/lit8 v21, v1, 0x1

    move/from16 v4, v21

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    if-ne v4, v12, :cond_2

    move/from16 v22, v13

    goto :goto_3

    :cond_2
    move/from16 v22, v18

    :goto_3
    if-ne v4, v14, :cond_3

    if-ltz v14, :cond_3

    move/from16 v23, v13

    goto :goto_4

    :cond_3
    move/from16 v23, v18

    :goto_4
    if-nez v22, :cond_7

    int-to-float v13, v1

    int-to-float v5, v11

    div-float/2addr v13, v5

    mul-float/2addr v13, v2

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v13, v5

    float-to-double v2, v13

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v2, v2

    move-object/from16 v24, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v5, v10

    add-float/2addr v5, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v10

    add-float/2addr v2, v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v7, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v13, v2

    invoke-virtual {v7, v13}, Landroid/graphics/Canvas;->rotate(F)V

    if-eqz v23, :cond_5

    iget v3, v0, Lcom/deepalhome/launcher/time/CompassClockView;->activeTextColor:I

    iget v5, v0, Lcom/deepalhome/launcher/time/CompassClockView;->ringTextColor:I

    invoke-static {v3, v15, v5}, Lcom/deepalhome/launcher/time/CompassClockView;->blendColor(IFI)I

    move-result v3

    move-object/from16 v6, v24

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0xff

    int-to-float v5, v3

    mul-float/2addr v5, v15

    float-to-int v3, v5

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v5, v3

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    if-eqz p8, :cond_4

    const/16 v13, 0xa

    if-ge v4, v13, :cond_4

    move-object/from16 v13, v17

    goto :goto_5

    :cond_4
    move-object/from16 v13, v16

    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v2, 0x1

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v13, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    neg-float v3, v5

    div-float v3, v3, v19

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v7, v2, v4, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/16 v2, 0xff

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_7

    :cond_5
    iget-object v2, v0, Lcom/deepalhome/launcher/time/CompassClockView;->ringTextPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/deepalhome/launcher/time/CompassClockView;->ringTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v5, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v5, v3

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    if-eqz p8, :cond_6

    const/16 v13, 0xa

    if-ge v4, v13, :cond_6

    move-object/from16 v6, v17

    goto :goto_6

    :cond_6
    move-object/from16 v6, v16

    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v13, 0x1

    invoke-static {v4, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    neg-float v4, v5

    div-float v4, v4, v19

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v7, v3, v5, v4, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/4 v2, 0x1

    goto :goto_8

    :cond_7
    move v2, v13

    :goto_8
    add-int/2addr v1, v2

    move v13, v2

    const/high16 v2, 0x43b40000    # 360.0f

    goto/16 :goto_1

    :cond_8
    move v2, v13

    const/4 v5, 0x0

    const/16 v13, 0xa

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    int-to-float v1, v11

    const/high16 v3, 0x43b40000    # 360.0f

    div-float v1, v3, v1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v4, v1, v3

    iget-object v11, v0, Lcom/deepalhome/launcher/time/CompassClockView;->activeArcPaint:Landroid/graphics/Paint;

    iget v1, v0, Lcom/deepalhome/launcher/time/CompassClockView;->activeArcColor:I

    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0xff

    int-to-float v1, v3

    move/from16 v14, p9

    move v15, v2

    mul-float/2addr v1, v14

    float-to-int v2, v1

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v1, -0x3d4c0000    # -90.0f

    div-float v18, v4, v19

    sub-float v18, v1, v18

    const/16 v21, 0x0

    move-object/from16 v1, p1

    move v13, v2

    move-object/from16 v2, v20

    move v15, v3

    move/from16 v3, v18

    move/from16 v5, v21

    move-object/from16 v25, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {v11, v15}, Landroid/graphics/Paint;->setAlpha(I)V

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

    iget v2, v0, Lcom/deepalhome/launcher/time/CompassClockView;->ringTextColor:I

    iget v0, v0, Lcom/deepalhome/launcher/time/CompassClockView;->activeTextColor:I

    invoke-static {v2, v14, v0}, Lcom/deepalhome/launcher/time/CompassClockView;->blendColor(IFI)I

    move-result v0

    move-object/from16 v2, v25

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v0

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    if-eqz p8, :cond_9

    const/16 v4, 0xa

    if-ge v12, v4, :cond_9

    move-object/from16 v4, v17

    goto :goto_9

    :cond_9
    move-object/from16 v4, v16

    :goto_9
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    neg-float v3, v3

    div-float v3, v3, v19

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v3, v4

    invoke-virtual {v7, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/time/CompassClockView;->updateTime()V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->isTimeTickReceiverRegistered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->isTimeTickReceiverRegistered:Z

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/time/CompassClockView;->timeTickReceiver:Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-boolean v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->isUIModeListenerRegistered:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->isUIModeListenerRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->onUIModeChangedListener:Lcom/deepalhome/launcher/time/CompassClockView$onUIModeChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/theme/UIModeManager;->addOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    :cond_1
    iget-boolean v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->isRefreshing:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->isRefreshing:Z

    iget-object v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->refreshRunnable:Landroidx/appcompat/widget/Toolbar$2;

    iget-wide v1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->REFRESH_INTERVAL_MS:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->isRefreshing:Z

    iget-object v1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->refreshRunnable:Landroidx/appcompat/widget/Toolbar$2;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-boolean v1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->isTimeTickReceiverRegistered:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->isTimeTickReceiverRegistered:Z

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->timeTickReceiver:Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-boolean v1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->isUIModeListenerRegistered:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->isUIModeListenerRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->onUIModeChangedListener:Lcom/deepalhome/launcher/time/CompassClockView$onUIModeChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/theme/UIModeManager;->removeOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    const-string v0, "canvas"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/time/CompassClockView;->updateTime()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v14, v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v15, v0, v1

    iget-object v0, v12, Lcom/deepalhome/launcher/time/CompassClockView;->centerTextPaint:Landroid/graphics/Paint;

    iget v2, v12, Lcom/deepalhome/launcher/time/CompassClockView;->centerTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, v12, Lcom/deepalhome/launcher/time/CompassClockView;->subTextPaint:Landroid/graphics/Paint;

    iget v4, v12, Lcom/deepalhome/launcher/time/CompassClockView;->subTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v3, v12, Lcom/deepalhome/launcher/time/CompassClockView;->centerTextSize:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v5, v3, v4

    const/4 v6, 0x3

    int-to-float v6, v6

    mul-float/2addr v6, v3

    const/4 v7, 0x2

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float/2addr v7, v6

    div-float/2addr v7, v1

    sub-float v6, v15, v7

    add-float/2addr v6, v3

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    div-float/2addr v3, v1

    sub-float/2addr v6, v3

    iget-object v3, v12, Lcom/deepalhome/launcher/time/CompassClockView;->yearMonth:Ljava/lang/String;

    invoke-virtual {v13, v3, v14, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float/2addr v6, v5

    iget v3, v12, Lcom/deepalhome/launcher/time/CompassClockView;->centerTextSize:F

    add-float/2addr v6, v3

    iget-object v3, v12, Lcom/deepalhome/launcher/time/CompassClockView;->weekday:Ljava/lang/String;

    invoke-virtual {v13, v3, v14, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v3, v12, Lcom/deepalhome/launcher/time/CompassClockView;->weatherText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v12, Lcom/deepalhome/launcher/time/CompassClockView;->temperatureText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    :goto_0
    add-float/2addr v6, v5

    iget v3, v12, Lcom/deepalhome/launcher/time/CompassClockView;->centerTextSize:F

    add-float/2addr v6, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v2, v12, Lcom/deepalhome/launcher/time/CompassClockView;->centerTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v2, v12, Lcom/deepalhome/launcher/time/CompassClockView;->weatherText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, v12, Lcom/deepalhome/launcher/time/CompassClockView;->weatherText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v5, v12, Lcom/deepalhome/launcher/time/CompassClockView;->temperatureText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, v12, Lcom/deepalhome/launcher/time/CompassClockView;->temperatureText:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    iget v7, v12, Lcom/deepalhome/launcher/time/CompassClockView;->centerTextSize:F

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v8, v7

    const v9, 0x3e99999a    # 0.3f

    mul-float/2addr v7, v9

    iget v9, v12, Lcom/deepalhome/launcher/time/CompassClockView;->weatherIconResId:I

    if-eqz v9, :cond_3

    add-float v9, v8, v7

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    add-float/2addr v9, v2

    add-float/2addr v9, v5

    div-float/2addr v9, v1

    sub-float v5, v14, v9

    iget-object v9, v12, Lcom/deepalhome/launcher/time/CompassClockView;->weatherText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    iget-object v9, v12, Lcom/deepalhome/launcher/time/CompassClockView;->weatherText:Ljava/lang/String;

    invoke-virtual {v13, v9, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    iget v9, v12, Lcom/deepalhome/launcher/time/CompassClockView;->weatherIconResId:I

    if-eqz v9, :cond_5

    add-float v9, v5, v2

    div-float v10, v7, v1

    add-float/2addr v10, v9

    iget v9, v12, Lcom/deepalhome/launcher/time/CompassClockView;->centerTextSize:F

    sub-float v9, v6, v9

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

    iget v11, v12, Lcom/deepalhome/launcher/time/CompassClockView;->weatherIconResId:I

    invoke-virtual {v9, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_5

    float-to-int v11, v10

    float-to-int v3, v1

    add-float/2addr v10, v8

    float-to-int v10, v10

    add-float/2addr v1, v8

    float-to-int v1, v1

    invoke-virtual {v9, v11, v3, v10, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v9, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    iget-object v1, v12, Lcom/deepalhome/launcher/time/CompassClockView;->temperatureText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    add-float/2addr v5, v2

    iget v1, v12, Lcom/deepalhome/launcher/time/CompassClockView;->weatherIconResId:I

    if-eqz v1, :cond_6

    add-float v3, v8, v7

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    add-float/2addr v5, v3

    iget-object v1, v12, Lcom/deepalhome/launcher/time/CompassClockView;->temperatureText:Ljava/lang/String;

    invoke-virtual {v13, v1, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_8
    iget v0, v12, Lcom/deepalhome/launcher/time/CompassClockView;->centerRadius:F

    iget v1, v12, Lcom/deepalhome/launcher/time/CompassClockView;->ringSpacing:F

    mul-float/2addr v4, v1

    add-float/2addr v4, v0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v1

    add-float v16, v2, v0

    const/high16 v2, 0x40200000    # 2.5f

    mul-float/2addr v2, v1

    add-float v17, v2, v0

    const/high16 v2, 0x40600000    # 3.5f

    mul-float/2addr v1, v2

    add-float v18, v1, v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    iget v6, v12, Lcom/deepalhome/launcher/time/CompassClockView;->currentDay:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iget v1, v12, Lcom/deepalhome/launcher/time/CompassClockView;->currentDay:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    neg-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v19, 0x43b40000    # 360.0f

    mul-float v7, v1, v19

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v15

    invoke-virtual/range {v0 .. v11}, Lcom/deepalhome/launcher/time/CompassClockView;->drawRing(Landroid/graphics/Canvas;FFFIIFZFIF)V

    iget v6, v12, Lcom/deepalhome/launcher/time/CompassClockView;->currentHour:I

    int-to-float v0, v6

    neg-float v0, v0

    const/high16 v1, 0x41c00000    # 24.0f

    div-float/2addr v0, v1

    mul-float v7, v0, v19

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v5, 0x18

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v11}, Lcom/deepalhome/launcher/time/CompassClockView;->drawRing(Landroid/graphics/Canvas;FFFIIFZFIF)V

    iget v6, v12, Lcom/deepalhome/launcher/time/CompassClockView;->currentMinute:I

    int-to-float v0, v6

    neg-float v0, v0

    const/high16 v16, 0x42700000    # 60.0f

    div-float v0, v0, v16

    mul-float v7, v0, v19

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v5, 0x3c

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v15

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v11}, Lcom/deepalhome/launcher/time/CompassClockView;->drawRing(Landroid/graphics/Canvas;FFFIIFZFIF)V

    iget v6, v12, Lcom/deepalhome/launcher/time/CompassClockView;->currentSecond:I

    int-to-float v0, v6

    iget v1, v12, Lcom/deepalhome/launcher/time/CompassClockView;->millisFraction:F

    add-float/2addr v0, v1

    neg-float v0, v0

    div-float v0, v0, v16

    mul-float v7, v0, v19

    iget v9, v12, Lcom/deepalhome/launcher/time/CompassClockView;->secondFadeProgress:F

    iget v10, v12, Lcom/deepalhome/launcher/time/CompassClockView;->prevSecond:I

    iget v11, v12, Lcom/deepalhome/launcher/time/CompassClockView;->prevSecondFadeProgress:F

    const/16 v5, 0x3c

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v15

    move/from16 v4, v18

    invoke-virtual/range {v0 .. v11}, Lcom/deepalhome/launcher/time/CompassClockView;->drawRing(Landroid/graphics/Canvas;FFFIIFZFIF)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

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

    mul-float p4, p2, p3

    sub-float/2addr p1, p4

    const/high16 p4, 0x42400000    # 48.0f

    mul-float/2addr p4, p2

    iput p4, p0, Lcom/deepalhome/launcher/time/CompassClockView;->centerRadius:F

    sub-float/2addr p1, p4

    div-float/2addr p1, p3

    iput p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->ringSpacing:F

    const/high16 p3, 0x41600000    # 14.0f

    mul-float/2addr p3, p2

    iput p3, p0, Lcom/deepalhome/launcher/time/CompassClockView;->centerTextSize:F

    const/high16 p4, 0x41100000    # 9.0f

    mul-float/2addr p4, p2

    iput p4, p0, Lcom/deepalhome/launcher/time/CompassClockView;->ringTextSize:F

    const/high16 p4, 0x41300000    # 11.0f

    mul-float/2addr p4, p2

    iput p4, p0, Lcom/deepalhome/launcher/time/CompassClockView;->activeTextSize:F

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float/2addr p4, p2

    iput p4, p0, Lcom/deepalhome/launcher/time/CompassClockView;->ringLineWidth:F

    const/high16 p4, 0x40200000    # 2.5f

    mul-float/2addr p4, p2

    iput p4, p0, Lcom/deepalhome/launcher/time/CompassClockView;->activeArcWidth:F

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float/2addr p2, p4

    iput p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->tickMarkWidth:F

    const/high16 p2, 0x3e800000    # 0.25f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->tickLength:F

    iget-object p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->centerTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->ringTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->ringTextSize:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->activeTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->activeTextSize:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->ringLinePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->ringLineWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->activeArcPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->activeArcWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->tickMarkPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->tickMarkWidth:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->refreshRunnable:Landroidx/appcompat/widget/Toolbar$2;

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->isRefreshing:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->isRefreshing:Z

    iget-wide v1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->REFRESH_INTERVAL_MS:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->isRefreshing:Z

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateTime()V
    .locals 13

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->currentDay:I

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->currentHour:I

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->currentMinute:I

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/deepalhome/launcher/time/CompassClockView;->millisFraction:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%02d"

    invoke-static {v0, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->yearMonth:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string v11, "Friday"
    
    const-string v12, "Saturday"
    
    const-string v6, "Sunday"
    
    const-string v7, "Monday"
    
    const-string v8, "Tuesday"
    
    const-string v9, "Wednesday"
    
    const-string v10, "Thursday"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v1

    sub-int/2addr v0, v5

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->weekday:Ljava/lang/String;

    iget v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->prevSecond:I

    const/4 v1, 0x0

    if-eq v2, v0, :cond_0

    iget v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->secondFadeProgress:F

    iput v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->prevSecondFadeProgress:F

    iget v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->currentSecond:I

    iput v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->prevSecond:I

    iput v1, p0, Lcom/deepalhome/launcher/time/CompassClockView;->secondFadeProgress:F

    iput v2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->currentSecond:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->millisFraction:F

    mul-float/2addr v0, v4

    iget v2, p0, Lcom/deepalhome/launcher/time/CompassClockView;->SECOND_FADE_DURATION_MS:F

    div-float v3, v0, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/deepalhome/launcher/time/CompassClockView;->secondFadeProgress:F

    div-float/2addr v0, v2

    sub-float/2addr v4, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/time/CompassClockView;->prevSecondFadeProgress:F

    :goto_0
    return-void
.end method
