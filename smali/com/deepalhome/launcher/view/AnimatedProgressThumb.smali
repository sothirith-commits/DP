.class public final Lcom/deepalhome/launcher/view/AnimatedProgressThumb;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final BREATHING_DURATION_MS:J = 0x640L

.field public static final Companion:Lcom/deepalhome/launcher/view/AnimatedProgressThumb$Companion;

.field private static final DRAG_ANIMATION_DURATION_MS:J = 0x96L

.field private static final DRAG_SCALE:F = 1.35f

.field private static final HEARTBEAT_DURATION_MS:J = 0x3e8L

.field private static final NEON_DURATION_MS:J = 0x708L

.field private static final ORBIT_DURATION_MS:J = 0x7d0L

.field private static final PLASMA_DURATION_MS:J = 0x960L

.field private static final POSITION_ANIMATION_DURATION_MS:J = 0xf0L

.field private static final POSITION_DELTA_EPSILON_PX:F = 0.5f

.field private static final POSITION_MIN_ANIMATION_DURATION_MS:J = 0x78L

.field private static final POSITION_REFERENCE_DISTANCE_PX:F = 72.0f

.field private static final RIPPLE_DURATION_MS:J = 0x4b0L

.field public static final STYLE_BREATHING:I = 0x0

.field public static final STYLE_CUSTOM:I = 0x6

.field public static final STYLE_HEARTBEAT:I = 0x3

.field public static final STYLE_NEON:I = 0x4

.field public static final STYLE_NONE:I = -0x1

.field public static final STYLE_ORBIT:I = 0x2

.field public static final STYLE_PLASMA:I = 0x5

.field public static final STYLE_RIPPLE:I = 0x1


# instance fields
.field private animatorFraction:F

.field private final coreGlowPaint:Landroid/graphics/Paint;

.field private final corePaint:Landroid/graphics/Paint;

.field private final coreRadius:F

.field private currentStyle:I

.field private currentTranslationX:F

.field private customBitmap:Landroid/graphics/Bitmap;

.field private customBitmapDrawSize:F

.field private customDrawable:Landroid/graphics/drawable/Drawable;

.field private final effectAnimator:Landroid/animation/ValueAnimator;

.field private final effectPaint:Landroid/graphics/Paint;

.field private final haloBaseRadius:F

.field private final innerHighlightPaint:Landroid/graphics/Paint;

.field private isAnimating:Z

.field private isDragging:Z

.field private final neonMaxRadius:F

.field private final neonPaint:Landroid/graphics/Paint;

.field private final neonRingCount:I

.field private final orbitDotCount:I

.field private final orbitDotRadius:F

.field private final orbitPaint:Landroid/graphics/Paint;

.field private final orbitRadius:F

.field private final outerGlowPaint:Landroid/graphics/Paint;

.field private ownsScaledCustomBitmap:Z

.field private final plasmaArcCount:I

.field private final plasmaMaxRadius:F

.field private final plasmaPaint:Landroid/graphics/Paint;

.field private final plasmaParticleCount:I

.field private positionAnimator:Landroid/animation/ValueAnimator;

.field private final positionInterpolator:Landroid/view/animation/LinearInterpolator;

.field private final rippleMaxRadius:F

.field private final ripplePaint:Landroid/graphics/Paint;

.field private final rippleStrokeWidth:F

.field private scaleAnimator:Landroid/animation/ValueAnimator;

.field private scaledCustomBitmap:Landroid/graphics/Bitmap;

.field private targetTranslationX:F

.field private final tempHsv:[F

.field private final tempRectF:Landroid/graphics/RectF;

.field private thumbColor:I


# direct methods
.method public static synthetic $r8$lambda$0MxevKeotwOHDhkxKlnZJXx9X1I(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectAnimator$lambda$10$lambda$9(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7Oa6xOg3jH_ARH69hIYCQJDfjrU(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->animateToPredictedPosition$lambda$14$lambda$13(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EwjSyjxh7gd2eJZxu3i_JWPhob4(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setDragging$lambda$12$lambda$11(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a1Omz76B9UZM4nXzhh_d6EI7c28(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->startPositionAnimation$lambda$17$lambda$16(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->Companion:Lcom/deepalhome/launcher/view/AnimatedProgressThumb$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x40900000    # 4.5f

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->coreRadius:F

    const/high16 p1, 0x41000000    # 8.0f

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->haloBaseRadius:F

    const/high16 p1, 0x41500000    # 13.0f

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->rippleMaxRadius:F

    const p1, 0x3fcccccd    # 1.6f

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->rippleStrokeWidth:F

    const/high16 p2, 0x41200000    # 10.0f

    invoke-direct {p0, p2}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result p2

    iput p2, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitRadius:F

    const/high16 p2, 0x40000000    # 2.0f

    invoke-direct {p0, p2}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result p2

    iput p2, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitDotRadius:F

    const/4 p2, 0x3

    iput p2, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitDotCount:I

    iput p2, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->neonRingCount:I

    const/high16 p3, 0x41600000    # 14.0f

    invoke-direct {p0, p3}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result p3

    iput p3, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->neonMaxRadius:F

    const/4 p3, 0x4

    iput p3, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->plasmaArcCount:I

    const/high16 p3, 0x41400000    # 12.0f

    invoke-direct {p0, p3}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result p3

    iput p3, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->plasmaMaxRadius:F

    const/4 p3, 0x6

    iput p3, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->plasmaParticleCount:I

    new-instance p3, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->corePaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->innerHighlightPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object p3, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->ripplePaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->coreGlowPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->outerGlowPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p3, 0x3fc00000    # 1.5f

    invoke-direct {p0, p3}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->neonPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->plasmaPaint:Landroid/graphics/Paint;

    const/4 p1, -0x1

    iput p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentStyle:I

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->resolveDefaultColor()I

    move-result p3

    iput p3, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->thumbColor:I

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->tempRectF:Landroid/graphics/RectF;

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->tempHsv:[F

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->positionInterpolator:Landroid/view/animation/LinearInterpolator;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/deepalhome/launcher/view/AnimatedProgressThumb$$ExternalSyntheticLambda0;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;I)V

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectAnimator:Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic animateToPosition$default(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;FZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->animateToPosition(FZ)V

    return-void
.end method

.method private static final animateToPredictedPosition$lambda$14$lambda$13(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "valueAnimator"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    iput p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentTranslationX:F

    return-void
.end method

.method private final calculatePositionAnimationDuration(F)J
    .locals 2

    const/high16 p0, 0x42900000    # 72.0f

    div-float/2addr p1, p0

    const p0, 0x3eb33333    # 0.35f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p0, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p0

    const-wide/16 v0, 0xf0

    long-to-float p1, v0

    mul-float/2addr p1, p0

    float-to-long p0, p1

    const-wide/16 v0, 0x78

    invoke-static {p0, p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private final dpToPx(F)F
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    return p1
.end method

.method private final drawBreathingEffect(Landroid/graphics/Canvas;FF)V
    .locals 6

    iget-boolean v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->animatorFraction:F

    float-to-double v2, v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const/4 v0, 0x2

    int-to-double v4, v0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    add-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    const/16 v2, 0x3c

    int-to-float v2, v2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v1, v0, v3, v2}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v1

    iget-object v2, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->thumbColor:I

    invoke-static {v3, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->haloBaseRadius:F

    const/high16 v2, 0x40800000    # 4.0f

    invoke-direct {p0, v2}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    iget-object p0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawCoreCircle(Landroid/graphics/Canvas;FF)V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->corePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->thumbColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->coreRadius:F

    iget-object v1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->corePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->innerHighlightPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->thumbColor:I

    const/4 v2, -0x1

    const v3, 0x3eb33333    # 0.35f

    invoke-static {v1, v3, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IFI)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->coreRadius:F

    const v1, 0x3f0f5c29    # 0.56f

    mul-float/2addr v0, v1

    iget-object p0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->innerHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawCustomEffect(Landroid/graphics/Canvas;FF)V
    .locals 10

    iget-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->customDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f266666    # 0.65f

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    invoke-static {v6, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-lez v7, :cond_2

    goto :goto_2

    :cond_2
    move-object v6, v4

    :goto_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    goto :goto_3

    :cond_3
    move v6, v1

    :goto_3
    div-float v7, v1, v2

    div-float/2addr v1, v6

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v2, v1

    float-to-int v2, v2

    if-ge v2, v5, :cond_4

    move v2, v5

    :cond_4
    mul-float/2addr v6, v1

    float-to-int v1, v6

    if-ge v1, v5, :cond_5

    goto :goto_4

    :cond_5
    move v5, v1

    :goto_4
    int-to-float v1, v2

    div-float/2addr v1, v3

    sub-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float v1, v5

    div-float/2addr v1, v3

    sub-float/2addr p3, v1

    float-to-int p3, p3

    add-int/2addr v2, p2

    add-int/2addr v5, p3

    invoke-virtual {v0, p2, p3, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    instance-of p2, v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz p2, :cond_6

    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/AnimatedImageDrawable;

    :cond_6
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedImageDrawable;->getRepeatCount()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_7

    invoke-virtual {v4, p3}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    :cond_7
    iget-boolean p0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    if-eqz p0, :cond_8

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedImageDrawable;->isRunning()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    :cond_8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_9
    iget-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->customBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_a

    goto/16 :goto_7

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    invoke-static {v6, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result v1

    iget-object v2, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->scaledCustomBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_b

    iget v6, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->customBitmapDrawSize:F

    cmpg-float v6, v6, v1

    if-nez v6, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v8, v1, v6

    div-float v9, v1, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v6, v6

    if-ge v6, v5, :cond_c

    move v6, v5

    :cond_c
    mul-float/2addr v7, v8

    float-to-int v7, v7

    if-ge v7, v5, :cond_d

    move v7, v5

    :cond_d
    if-eqz v2, :cond_e

    if-eq v2, v0, :cond_e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_e
    invoke-static {v0, v6, v7, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->scaledCustomBitmap:Landroid/graphics/Bitmap;

    if-eq v2, v0, :cond_f

    goto :goto_5

    :cond_f
    const/4 v5, 0x0

    :goto_5
    iput-boolean v5, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->ownsScaledCustomBitmap:Z

    iput v1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->customBitmapDrawSize:F

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    sub-float/2addr p2, p0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    sub-float/2addr p3, p0

    invoke-virtual {p1, v2, p2, p3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    :cond_10
    :goto_7
    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->drawBreathingEffect(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method private final drawHeartbeatEffect(Landroid/graphics/Canvas;FF)V
    .locals 12

    iget-boolean v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->animatorFraction:F

    const v3, 0x3e19999a    # 0.15f

    cmpg-float v4, v0, v3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    if-gez v4, :cond_0

    div-float/2addr v0, v3

    float-to-double v3, v0

    mul-double/2addr v3, v7

    int-to-double v6, v6

    div-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v0, v3

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3e800000    # 0.25f

    cmpg-float v9, v0, v4

    const v10, 0x3dcccccd    # 0.1f

    if-gez v9, :cond_1

    sub-float/2addr v0, v3

    div-float/2addr v0, v10

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    goto :goto_0

    :cond_1
    const v9, 0x3eb33333    # 0.35f

    cmpg-float v11, v0, v9

    if-gez v11, :cond_2

    sub-float/2addr v0, v4

    div-float/2addr v0, v10

    float-to-double v3, v0

    mul-double/2addr v3, v7

    int-to-double v6, v6

    div-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v0, v3

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v3

    const v3, 0x3ecccccd    # 0.4f

    add-float/2addr v0, v3

    goto :goto_0

    :cond_2
    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    sub-float/2addr v0, v9

    div-float/2addr v0, v3

    const v3, 0x3f99999a    # 1.2f

    sub-float v0, v2, v0

    mul-float/2addr v0, v3

    goto :goto_0

    :cond_3
    move v0, v5

    :goto_0
    invoke-static {v0, v5, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    iget v3, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->coreRadius:F

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-direct {p0, v4}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v3

    const/16 v3, 0xc8

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/4 v5, 0x0

    const/16 v6, 0xff

    invoke-static {v3, v5, v6}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v3

    iget-object v7, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectPaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->thumbColor:I

    invoke-static {v8, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v4, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    iget v1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->coreRadius:F

    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {p0, v3}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v1

    sub-float/2addr v2, v0

    const/16 v0, 0x78

    int-to-float v0, v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    invoke-static {v0, v5, v6}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->thumbColor:I

    invoke-static {v2, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method private final drawNeonEffect(Landroid/graphics/Canvas;FF)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget v4, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->thumbColor:I

    iget-object v5, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->tempHsv:[F

    invoke-static {v4, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    iget-object v4, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->tempHsv:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iget v6, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->neonRingCount:I

    move v7, v5

    :goto_0
    const/high16 v8, 0x3fc00000    # 1.5f

    const/high16 v9, 0x3f000000    # 0.5f

    if-ge v7, v6, :cond_3

    iget-boolean v12, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v12, :cond_0

    iget v9, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->animatorFraction:F

    int-to-float v12, v7

    iget v14, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->neonRingCount:I

    int-to-float v14, v14

    div-float/2addr v12, v14

    add-float/2addr v12, v9

    rem-float/2addr v12, v13

    goto :goto_1

    :cond_0
    int-to-float v12, v7

    iget v14, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->neonRingCount:I

    int-to-float v14, v14

    div-float/2addr v12, v14

    mul-float/2addr v12, v9

    :goto_1
    int-to-float v9, v7

    const/high16 v14, 0x41f00000    # 30.0f

    mul-float/2addr v14, v9

    add-float/2addr v14, v4

    const/high16 v15, 0x43b40000    # 360.0f

    rem-float/2addr v14, v15

    iget-object v15, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->tempHsv:[F

    aput v14, v15, v5

    const v14, 0x3f4ccccd    # 0.8f

    const/16 v16, 0x1

    aput v14, v15, v16

    const/4 v14, 0x2

    aput v13, v15, v14

    invoke-static {v15}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v15

    iget v5, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->coreRadius:F

    const/high16 v14, 0x40400000    # 3.0f

    invoke-direct {v0, v14}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result v17

    add-float v5, v5, v17

    iget v10, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->neonMaxRadius:F

    iget v11, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->coreRadius:F

    sub-float/2addr v10, v11

    invoke-direct {v0, v14}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result v11

    sub-float/2addr v10, v11

    add-float/2addr v9, v13

    mul-float/2addr v9, v10

    iget v10, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->neonRingCount:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    add-float/2addr v9, v5

    iget-boolean v5, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    if-eqz v5, :cond_1

    invoke-direct {v0, v8}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result v5

    float-to-double v10, v12

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    mul-double v10, v10, v17

    move v13, v15

    const/4 v8, 0x2

    int-to-double v14, v8

    mul-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v8, v10

    mul-float/2addr v5, v8

    add-float/2addr v9, v5

    goto :goto_2

    :cond_1
    move v13, v15

    :goto_2
    iget-boolean v5, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    const/16 v8, 0x78

    if-eqz v5, :cond_2

    float-to-double v10, v12

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v14

    const/4 v5, 0x4

    int-to-double v14, v5

    mul-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v5, v10

    int-to-float v8, v8

    const/16 v10, 0x50

    int-to-float v10, v10

    mul-float/2addr v10, v5

    add-float/2addr v10, v8

    float-to-int v5, v10

    const/16 v8, 0x3c

    const/16 v10, 0xdc

    invoke-static {v5, v8, v10}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v8

    :cond_2
    iget-object v5, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->neonPaint:Landroid/graphics/Paint;

    move v10, v13

    invoke-static {v10, v8}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->neonPaint:Landroid/graphics/Paint;

    iget v11, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->neonRingCount:I

    sub-int/2addr v11, v7

    int-to-float v11, v11

    const v12, 0x3e99999a    # 0.3f

    mul-float/2addr v11, v12

    const v12, 0x3f99999a    # 1.2f

    add-float/2addr v11, v12

    invoke-direct {v0, v11}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->neonPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v9, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v5, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->neonPaint:Landroid/graphics/Paint;

    div-int/lit8 v8, v8, 0x3

    invoke-static {v10, v8}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->neonPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x40400000    # 3.0f

    invoke-direct {v0, v8}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->neonPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v9, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_3
    iget-boolean v4, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    const/16 v5, 0xb4

    if-eqz v4, :cond_4

    int-to-double v4, v5

    const/16 v6, 0x4b

    int-to-double v6, v6

    iget v10, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->animatorFraction:F

    float-to-double v10, v10

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const/4 v12, 0x6

    int-to-double v12, v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v6

    add-double/2addr v10, v4

    double-to-int v4, v10

    const/16 v5, 0x96

    const/16 v6, 0xff

    invoke-static {v4, v5, v6}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v5

    :cond_4
    iget-object v4, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->coreGlowPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->thumbColor:I

    const/4 v7, -0x1

    invoke-static {v6, v9, v7}, Landroidx/core/graphics/ColorUtils;->blendARGB(IFI)I

    move-result v6

    invoke-static {v6, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->coreRadius:F

    invoke-direct {v0, v8}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result v5

    add-float/2addr v4, v5

    iget-object v0, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->coreGlowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawOrbitEffect(Landroid/graphics/Canvas;FF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-boolean v4, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    if-eqz v4, :cond_0

    const/16 v4, 0x3c

    goto :goto_0

    :cond_0
    const/16 v4, 0x28

    :goto_0
    iget-object v5, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->thumbColor:I

    invoke-static {v6, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitPaint:Landroid/graphics/Paint;

    const v5, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v5}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v4, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitRadius:F

    iget-object v5, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v4, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v4, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitDotCount:I

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    iget v6, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitDotCount:I

    int-to-double v6, v6

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v8, v6

    int-to-double v6, v5

    mul-double/2addr v8, v6

    iget-boolean v6, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    const/4 v7, 0x2

    if-eqz v6, :cond_1

    iget v6, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->animatorFraction:F

    int-to-float v12, v7

    mul-float/2addr v6, v12

    float-to-double v12, v6

    mul-double/2addr v12, v10

    add-double/2addr v8, v12

    :cond_1
    iget v6, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitRadius:F

    float-to-double v12, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v12

    double-to-float v6, v14

    add-float/2addr v6, v2

    iget v12, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitRadius:F

    float-to-double v12, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v12

    double-to-float v8, v8

    add-float/2addr v8, v3

    iget-boolean v9, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    if-eqz v9, :cond_2

    iget v9, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->animatorFraction:F

    int-to-float v12, v5

    iget v13, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitDotCount:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    add-float/2addr v12, v9

    const/high16 v9, 0x3f800000    # 1.0f

    rem-float/2addr v12, v9

    const/16 v9, 0xb4

    int-to-double v13, v9

    const/16 v9, 0x4b

    move/from16 v16, v8

    int-to-double v7, v9

    float-to-double v2, v12

    mul-double/2addr v2, v10

    const/4 v9, 0x2

    int-to-double v9, v9

    mul-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v7

    add-double/2addr v2, v13

    double-to-int v2, v2

    const/16 v3, 0x64

    const/16 v7, 0xff

    invoke-static {v2, v3, v7}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v2

    goto :goto_2

    :cond_2
    move/from16 v16, v8

    const/16 v2, 0x96

    :goto_2
    iget-object v3, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitPaint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->thumbColor:I

    invoke-static {v7, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitDotRadius:F

    iget-object v7, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitPaint:Landroid/graphics/Paint;

    move/from16 v8, v16

    invoke-virtual {v1, v6, v8, v3, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v3, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitPaint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->thumbColor:I

    div-int/lit8 v2, v2, 0x3

    invoke-static {v7, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitDotRadius:F

    const v3, 0x3fe66666    # 1.8f

    mul-float/2addr v2, v3

    iget-object v3, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->orbitPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v8, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    move/from16 v2, p2

    move/from16 v3, p3

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method private final drawPlasmaEffect(Landroid/graphics/Canvas;FF)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    iget-boolean v1, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    const/4 v10, 0x2

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->animatorFraction:F

    int-to-float v2, v10

    mul-float/2addr v1, v2

    float-to-double v1, v1

    mul-double/2addr v1, v11

    :goto_0
    move-wide v13, v1

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0

    :goto_1
    iget v15, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->plasmaArcCount:I

    const/16 v16, 0x0

    move/from16 v6, v16

    :goto_2
    const v4, 0x3e99999a    # 0.3f

    const-wide v17, 0x401921fb54442d18L    # 6.283185307179586

    const/high16 v19, 0x3f800000    # 1.0f

    if-ge v6, v15, :cond_3

    iget v5, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->plasmaArcCount:I

    int-to-double v1, v5

    div-double v17, v17, v1

    int-to-double v1, v6

    mul-double v17, v17, v1

    iget v5, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->coreRadius:F

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v0, v3}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result v20

    add-float v5, v5, v20

    iget v10, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->plasmaMaxRadius:F

    iget v11, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->coreRadius:F

    sub-float/2addr v10, v11

    invoke-direct {v0, v3}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result v3

    sub-float/2addr v10, v3

    int-to-float v3, v6

    add-float v11, v3, v19

    mul-float/2addr v11, v10

    iget v10, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->plasmaArcCount:I

    int-to-float v10, v10

    div-float/2addr v11, v10

    add-float/2addr v11, v5

    rem-int/lit8 v5, v6, 0x2

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_3

    :cond_1
    const/4 v5, -0x1

    :goto_3
    mul-float/2addr v3, v4

    add-float v3, v3, v19

    float-to-double v3, v3

    mul-double/2addr v3, v13

    move v12, v11

    int-to-double v10, v5

    mul-double/2addr v3, v10

    add-double v3, v3, v17

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v10, v3

    iget v3, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->animatorFraction:F

    float-to-double v3, v3

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    mul-double v3, v3, v17

    move-wide/from16 v21, v13

    const/4 v5, 0x2

    int-to-double v13, v5

    mul-double/2addr v3, v13

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x42700000    # 60.0f

    add-float v11, v3, v4

    iget-boolean v3, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->animatorFraction:F

    float-to-double v3, v3

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    mul-double v3, v3, v17

    move/from16 v17, v10

    move/from16 v18, v11

    const/4 v5, 0x3

    int-to-double v10, v5

    mul-double/2addr v3, v10

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v10

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    const/4 v3, 0x1

    int-to-double v3, v3

    add-double/2addr v1, v3

    div-double/2addr v1, v13

    const/16 v3, 0x78

    int-to-double v3, v3

    const/16 v5, 0x64

    int-to-double v10, v5

    mul-double/2addr v10, v1

    add-double/2addr v10, v3

    double-to-int v1, v10

    const/16 v2, 0xdc

    const/16 v3, 0x50

    invoke-static {v1, v3, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v1

    :goto_4
    move v10, v1

    goto :goto_5

    :cond_2
    move/from16 v17, v10

    move/from16 v18, v11

    const/16 v1, 0x8c

    goto :goto_4

    :goto_5
    iget v1, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->plasmaArcCount:I

    sub-int v2, v1, v6

    int-to-float v2, v2

    mul-float v2, v2, v19

    int-to-float v1, v1

    div-float/2addr v2, v1

    const/high16 v5, 0x40000000    # 2.0f

    add-float/2addr v2, v5

    invoke-direct {v0, v2}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result v11

    iget-object v1, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->plasmaPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->plasmaPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->thumbColor:I

    invoke-static {v2, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->tempRectF:Landroid/graphics/RectF;

    sub-float v2, v8, v12

    sub-float v3, v9, v12

    add-float v4, v8, v12

    add-float/2addr v12, v9

    invoke-virtual {v1, v2, v3, v4, v12}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->tempRectF:Landroid/graphics/RectF;

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->plasmaPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v17

    move/from16 v4, v18

    move v14, v5

    move v5, v12

    move v12, v6

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->plasmaPaint:Landroid/graphics/Paint;

    mul-float/2addr v11, v14

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->plasmaPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->thumbColor:I

    const/4 v3, 0x4

    div-int/2addr v10, v3

    invoke-static {v2, v10}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->tempRectF:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->plasmaPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v6, v12, 0x1

    move-wide/from16 v13, v21

    const/4 v10, 0x2

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    goto/16 :goto_2

    :cond_3
    move-wide/from16 v21, v13

    const/high16 v14, 0x40000000    # 2.0f

    iget v1, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->plasmaParticleCount:I

    move/from16 v2, v16

    :goto_6
    const/16 v3, 0x96

    if-ge v2, v1, :cond_5

    iget v5, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->animatorFraction:F

    int-to-float v6, v2

    iget v10, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->plasmaParticleCount:I

    int-to-float v11, v10

    div-float/2addr v6, v11

    add-float/2addr v6, v5

    rem-float v6, v6, v19

    const-wide/high16 v11, 0x3ff8000000000000L    # 1.5

    mul-double v11, v11, v21

    int-to-double v4, v10

    div-double v4, v17, v4

    int-to-double v13, v2

    mul-double/2addr v4, v13

    add-double/2addr v4, v11

    float-to-double v11, v6

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v11, v13

    const/4 v6, 0x2

    int-to-double v13, v6

    mul-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    iget v14, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->coreRadius:F

    const/high16 v15, 0x40a00000    # 5.0f

    invoke-direct {v0, v15}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result v15

    add-float/2addr v14, v15

    const/high16 v15, 0x40c00000    # 6.0f

    invoke-direct {v0, v15}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result v15

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v13, v13, v16

    add-float v13, v13, v16

    mul-float/2addr v13, v15

    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v6, v15, v13

    double-to-float v6, v6

    add-float/2addr v6, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v13

    double-to-float v4, v4

    add-float/2addr v4, v9

    iget-boolean v5, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    if-eqz v5, :cond_4

    const/16 v3, 0xb4

    int-to-double v13, v3

    const/16 v3, 0x4b

    int-to-double v7, v3

    const/4 v3, 0x4

    int-to-double v9, v3

    mul-double/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v9, v7

    add-double/2addr v9, v13

    double-to-int v3, v9

    const/16 v7, 0xff

    const/16 v8, 0x64

    invoke-static {v3, v8, v7}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v3

    goto :goto_7

    :cond_4
    const/16 v8, 0x64

    :goto_7
    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-direct {v0, v7}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result v7

    iget-object v9, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectPaint:Landroid/graphics/Paint;

    iget v10, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->thumbColor:I

    invoke-static {v10, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v9, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual {v10, v6, v4, v7, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v9, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectPaint:Landroid/graphics/Paint;

    iget v11, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->thumbColor:I

    const/4 v12, 0x3

    div-int/2addr v3, v12

    invoke-static {v11, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x40200000    # 2.5f

    mul-float/2addr v7, v3

    iget-object v3, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v6, v4, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object v7, v10

    const v4, 0x3e99999a    # 0.3f

    const/high16 v14, 0x40000000    # 2.0f

    goto/16 :goto_6

    :cond_5
    move-object v10, v7

    iget-boolean v1, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    if-eqz v1, :cond_6

    iget v1, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->animatorFraction:F

    float-to-double v1, v1

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v1, v6

    const/4 v4, 0x4

    int-to-double v6, v4

    mul-double/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    add-float v1, v1, v19

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v4

    const v4, 0x3f19999a    # 0.6f

    add-float/2addr v1, v4

    goto :goto_8

    :cond_6
    const/high16 v2, 0x40000000    # 2.0f

    const v1, 0x3f333333    # 0.7f

    :goto_8
    iget v4, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->coreRadius:F

    invoke-direct {v0, v2}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->dpToPx(F)F

    move-result v2

    mul-float/2addr v2, v1

    add-float/2addr v2, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    const/16 v3, 0xc8

    const/16 v4, 0x50

    invoke-static {v1, v4, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v1

    iget-object v3, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->thumbColor:I

    const v5, 0x3e99999a    # 0.3f

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroidx/core/graphics/ColorUtils;->blendARGB(IFI)I

    move-result v4

    invoke-static {v4, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectPaint:Landroid/graphics/Paint;

    move/from16 v1, p2

    move/from16 v3, p3

    invoke-virtual {v10, v1, v3, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawRippleEffect(Landroid/graphics/Canvas;FF)V
    .locals 10

    iget-boolean v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v4, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->animatorFraction:F

    aput v4, v0, v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    rem-float/2addr v4, v1

    aput v4, v0, v2

    goto :goto_0

    :cond_0
    new-array v0, v2, [F

    const v2, 0x3e4ccccd    # 0.2f

    aput v2, v0, v3

    :goto_0
    array-length v2, v0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget v5, v0, v4

    iget v6, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->haloBaseRadius:F

    iget v7, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->rippleMaxRadius:F

    invoke-static {v7, v6, v5, v6}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(FFFF)F

    move-result v6

    iget-boolean v7, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    if-eqz v7, :cond_1

    sub-float v5, v1, v5

    const/high16 v7, 0x43340000    # 180.0f

    mul-float/2addr v5, v7

    float-to-int v5, v5

    goto :goto_2

    :cond_1
    const/16 v5, 0x5a

    :goto_2
    iget-object v7, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->ripplePaint:Landroid/graphics/Paint;

    iget v8, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->thumbColor:I

    const/16 v9, 0xff

    invoke-static {v5, v3, v9}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v5

    invoke-static {v8, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->ripplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v6, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static final effectAnimator$lambda$10$lambda$9(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "animator"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->animatorFraction:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final hasValidCustomResource()Z
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->customDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->customBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final isSameDirection(FFF)Z
    .locals 1

    sub-float/2addr p2, p1

    sub-float/2addr p3, p1

    const/4 p0, 0x0

    cmpg-float p1, p2, p0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float p1, p3, p0

    if-nez p1, :cond_1

    :goto_0
    return v0

    :cond_1
    cmpl-float p1, p2, p0

    const/4 p2, 0x0

    if-lez p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, p2

    :goto_1
    cmpl-float p0, p3, p0

    if-lez p0, :cond_3

    move p0, v0

    goto :goto_2

    :cond_3
    move p0, p2

    :goto_2
    if-ne p1, p0, :cond_4

    goto :goto_3

    :cond_4
    move v0, p2

    :goto_3
    return v0
.end method

.method private final recycleScaledCustomBitmap()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->scaledCustomBitmap:Landroid/graphics/Bitmap;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->ownsScaledCustomBitmap:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->scaledCustomBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->ownsScaledCustomBitmap:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->customBitmapDrawSize:F

    return-void
.end method

.method private final resolveDefaultColor()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const v0, 0x7f060099

    goto :goto_0

    :cond_0
    const v0, 0x7f060098

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method private final restartAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->hasValidCustomResource()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->updateAnimatorDuration()V

    iget-object p0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static final setDragging$lambda$12$lambda$11(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "animator"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private final startPositionAnimation(FF)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->positionAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iget-object v2, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->positionInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/deepalhome/launcher/view/AnimatedProgressThumb$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->positionAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    aput p2, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->calculatePositionAnimationDuration(F)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static final startPositionAnimation$lambda$17$lambda$16(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "valueAnimator"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    iput p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentTranslationX:F

    return-void
.end method

.method private final updateAnimatorDuration()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectAnimator:Landroid/animation/ValueAnimator;

    iget p0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentStyle:I

    const-wide/16 v1, 0x640

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide/16 v1, 0x960

    goto :goto_0

    :pswitch_1
    const-wide/16 v1, 0x708

    goto :goto_0

    :pswitch_2
    const-wide/16 v1, 0x3e8

    goto :goto_0

    :pswitch_3
    const-wide/16 v1, 0x7d0

    goto :goto_0

    :pswitch_4
    const-wide/16 v1, 0x4b0

    :goto_0
    :pswitch_5
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private final updateGlowShader()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final animateToPosition(FZ)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setPositionImmediate(F)V

    return-void

    :cond_0
    iget p2, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentTranslationX:F

    sub-float p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float p2, p2, v1

    if-gez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    iput p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentTranslationX:F

    iput p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->targetTranslationX:F

    return-void

    :cond_1
    iget-object p2, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->positionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-ne v1, v0, :cond_4

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_2

    check-cast v1, Ljava/lang/Float;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentTranslationX:F

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationX(F)V

    iput v1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentTranslationX:F

    iget v2, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->targetTranslationX:F

    iput p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->targetTranslationX:F

    invoke-direct {p0, v1, v2, p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isSameDirection(FFF)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    aput p1, v2, v0

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->calculatePositionAnimationDuration(F)J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 p0, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_4
    iput p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->targetTranslationX:F

    iget p2, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentTranslationX:F

    invoke-direct {p0, p2, p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->startPositionAnimation(FF)V

    return-void
.end method

.method public final animateToPredictedPosition(FFJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->positionAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    new-instance v1, Lcom/deepalhome/launcher/view/AnimatedProgressThumb$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->positionAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    iput p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentTranslationX:F

    iput p2, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->targetTranslationX:F

    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v1, 0x0

    aput p1, p0, v1

    const/4 p1, 0x1

    aput p2, p0, p1

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setPositionImmediate(F)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->restartAnimation()V

    iget v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentStyle:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->customDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->positionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->scaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->customDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->stop()V

    :cond_3
    invoke-direct {p0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->recycleScaledCustomBitmap()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const-string v0, "canvas"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentStyle:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, v0, v2}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->drawCustomEffect(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, v0, v2}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->drawPlasmaEffect(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, v0, v2}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->drawNeonEffect(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, v0, v2}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->drawHeartbeatEffect(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, v0, v2}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->drawOrbitEffect(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, v0, v2}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->drawRippleEffect(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1, v0, v2}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->drawBreathingEffect(Landroid/graphics/Canvas;FF)V

    :goto_0
    iget-object v1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->customDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    move v1, v3

    :goto_1
    iget-object v5, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->customBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    :cond_1
    iget v4, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentStyle:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    if-nez v1, :cond_3

    if-nez v3, :cond_3

    :cond_2
    invoke-direct {p0, p1, v0, v2}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->drawCoreCircle(Landroid/graphics/Canvas;FF)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    int-to-float p1, p2

    div-float/2addr p1, p3

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->updateGlowShader()V

    return-void
.end method

.method public final setCustomBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->recycleScaledCustomBitmap()V

    iput-object p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->customBitmap:Landroid/graphics/Bitmap;

    iget-boolean p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentStyle:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->restartAnimation()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCustomDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->customDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    instance-of v2, v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/AnimatedImageDrawable;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedImageDrawable;->stop()V

    :cond_2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_3
    iput-object p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->customDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_4
    iget-boolean v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentStyle:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->restartAnimation()V

    instance-of v0, p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_5

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/AnimatedImageDrawable;

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setDragging(Z)V
    .locals 4

    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isDragging:Z

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isDragging:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setPositionImmediate(F)V

    :cond_1
    iget-object v1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->scaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    const p1, 0x3faccccd    # 1.35f

    goto :goto_0

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/View;->setPivotY(F)V

    new-array v2, v0, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput p1, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/deepalhome/launcher/view/AnimatedProgressThumb$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/view/AnimatedProgressThumb;I)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->scaleAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final setPositionImmediate(F)V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->positionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    iput p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentTranslationX:F

    iput p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->targetTranslationX:F

    return-void
.end method

.method public final setThumbColor(I)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->thumbColor:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->thumbColor:I

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->updateGlowShader()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setThumbStyle(I)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iget v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentStyle:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentStyle:I

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->updateAnimatorDuration()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->updateGlowShader()V

    iget-boolean v2, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    if-eq p1, v1, :cond_2

    iget-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->customDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->stop()V

    :cond_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->restartAnimation()V

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->customDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/AnimatedImageDrawable;

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final startAnimation()V
    .locals 2

    iget-boolean v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentStyle:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->restartAnimation()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->currentStyle:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->customDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    :cond_3
    return-void
.end method

.method public final stopAnimation()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->isAnimating:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->animatorFraction:F

    iget-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->effectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->customDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->stop()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    const-string v0, "who"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->customDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
