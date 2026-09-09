.class public final synthetic Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lme/wcy/lrcview/LrcView$OnLineRenderInfoListener;
.implements Lcom/deepalhome/launcher/music/ttml/OnTtmlLineRenderInfoListener;
.implements Lme/wcy/lrcview/BlurStrategy;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;
.implements Lcom/google/android/material/textfield/TextInputLayout$LengthCounter;
.implements Lcom/koushikdutta/async/future/ThenCallback;
.implements Lcom/openos/virtualcar/VirtualCarPropertyCallBack;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .locals 0

    sget p0, Lcom/google/android/material/carousel/MaskableFrameLayout;->$r8$clinit:I

    instance-of p0, p1, Lcom/google/android/material/shape/AbsoluteCornerSize;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/android/material/shape/AbsoluteCornerSize;

    new-instance p0, Lcom/google/android/material/shape/ClampedCornerSize;

    iget p1, p1, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ClampedCornerSize;-><init>(F)V

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method public calculateBlurRatio(FFIII)F
    .locals 0

    iget p0, p0, Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    add-int/lit8 p4, p4, 0x1

    const/4 p0, 0x3

    if-ge p4, p0, :cond_0

    move p4, p0

    :cond_0
    int-to-float p0, p5

    int-to-float p1, p4

    div-float/2addr p0, p1

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p0

    float-to-double p0, p0

    const-wide/high16 p2, 0x3ff8000000000000L    # 1.5

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    :pswitch_0
    int-to-float p0, p3

    sub-float/2addr p0, p2

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/4 p3, 0x0

    cmpg-float p4, p0, p3

    if-gtz p4, :cond_1

    goto :goto_0

    :cond_1
    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-double p0, p0

    const-wide p2, 0x3ff6666660000000L    # 1.399999976158142

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p3, p0

    :goto_0
    return p3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    sget p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserActivity;->$r8$clinit:I

    const-string p0, "view"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p0

    const-string v0, "getInsets(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method

.method public onLineRenderInfoChanged(Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;)V
    .locals 8

    sget-object p0, Lcom/deepalhome/launcher/hud/HudFloatManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudFloatManager;

    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentHeightPx:I

    iget v2, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentVisualLineCount:I

    iget v3, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->currentTwoVisualLinesHeightPx:I

    iget v4, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->nextHeightPx:I

    iget v5, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->nextSingleVisualLineHeightPx:I

    iget v6, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->dividerHeightPx:I

    iget v7, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;->oneLineSuggestedHeightPx:I

    invoke-static/range {v0 .. v7}, Lcom/deepalhome/launcher/hud/HudFloatManager;->updateHudHeight(Landroid/view/View;IIIIIII)V

    return-void
.end method

.method public onLineRenderInfoChanged(Lme/wcy/lrcview/LrcView$LineRenderInfo;)V
    .locals 8

    sget-object p0, Lcom/deepalhome/launcher/hud/HudFloatManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudFloatManager;

    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lrcView:Lme/wcy/lrcview/LrcView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, Lme/wcy/lrcview/LrcView$LineRenderInfo;->currentHeightPx:I

    iget v2, p1, Lme/wcy/lrcview/LrcView$LineRenderInfo;->currentVisualLineCount:I

    iget v3, p1, Lme/wcy/lrcview/LrcView$LineRenderInfo;->currentTwoVisualLinesHeightPx:I

    iget v4, p1, Lme/wcy/lrcview/LrcView$LineRenderInfo;->nextHeightPx:I

    iget v5, p1, Lme/wcy/lrcview/LrcView$LineRenderInfo;->nextSingleVisualLineHeightPx:I

    iget v6, p1, Lme/wcy/lrcview/LrcView$LineRenderInfo;->dividerHeightPx:I

    iget v7, p1, Lme/wcy/lrcview/LrcView$LineRenderInfo;->oneLineSuggestedHeightPx:I

    invoke-static/range {v0 .. v7}, Lcom/deepalhome/launcher/hud/HudFloatManager;->updateHudHeight(Landroid/view/View;IIIIIII)V

    return-void
.end method

.method public then(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lorg/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
