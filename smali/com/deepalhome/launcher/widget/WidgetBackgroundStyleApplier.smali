.class public final Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;

    invoke-direct {v0}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->INSTANCE:Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blurRadius(IF)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {p0, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    return p1
.end method

.method public static final overlayColor(II)I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    mul-int/lit16 p1, p1, 0xff

    div-int/2addr p1, v1

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static final renderScriptBlurRadius(IF)F
    .locals 1

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result p0

    const/4 p1, 0x0

    cmpg-float v0, p0, p1

    if-gtz v0, :cond_0

    return p1

    :cond_0
    const/high16 p1, 0x41c80000    # 25.0f

    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    move p0, p1

    :cond_1
    return p0
.end method

.method public static final renderScriptSetupBlurRadius(IF)F
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptBlurRadius(IF)F

    move-result p0

    const/4 p1, 0x0

    cmpg-float p1, p0, p1

    if-gtz p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    :cond_0
    return p0
.end method
