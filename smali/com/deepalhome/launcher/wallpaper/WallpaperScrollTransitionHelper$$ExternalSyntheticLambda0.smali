.class public final synthetic Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/widget/ImageView;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/widget/ImageView;

.field public final synthetic f$5:Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;


# direct methods
.method public synthetic constructor <init>(ZILandroid/widget/ImageView;ILandroid/widget/ImageView;Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper$$ExternalSyntheticLambda0;->f$0:Z

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper$$ExternalSyntheticLambda0;->f$2:Landroid/widget/ImageView;

    iput p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper$$ExternalSyntheticLambda0;->f$4:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper$$ExternalSyntheticLambda0;->f$5:Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "$incoming"

    iget-object v2, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper$$ExternalSyntheticLambda0;->f$2:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "$outgoing"

    iget-object v3, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper$$ExternalSyntheticLambda0;->f$4:Landroid/widget/ImageView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "this$0"

    iget-object v4, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper$$ExternalSyntheticLambda0;->f$5:Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "animation"

    move-object/from16 v5, p1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    const-string v5, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3f866666    # 1.05f

    mul-float/2addr v6, v7

    const v7, 0x3f1eb852    # 0.62f

    sub-float v6, v7, v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v6

    iget-boolean v7, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper$$ExternalSyntheticLambda0;->f$0:Z

    iget v8, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper$$ExternalSyntheticLambda0;->f$1:I

    iget v0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper$$ExternalSyntheticLambda0;->f$3:I

    const/high16 v9, 0x40000000    # 2.0f

    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3f70a3d7    # 0.94f

    const v12, 0x3cf5c28f    # 0.03f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    iget-object v4, v4, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;->shadowView:Landroid/view/View;

    if-eqz v7, :cond_0

    int-to-float v7, v8

    sub-float v5, v13, v5

    mul-float v15, v7, v5

    float-to-int v15, v15

    invoke-static {v15, v14, v8}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v15

    mul-float/2addr v11, v1

    sub-float v11, v13, v11

    mul-float/2addr v11, v7

    float-to-int v11, v11

    invoke-static {v11, v14, v8}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v11

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v15, v14, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v13}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v14, v14, v11, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v13}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    mul-float/2addr v7, v10

    mul-float/2addr v7, v5

    invoke-virtual {v2, v7}, Landroid/view/View;->setTranslationX(F)V

    neg-int v0, v8

    int-to-float v0, v0

    mul-float/2addr v0, v12

    mul-float/2addr v0, v1

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v0, v15

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v9

    sub-float/2addr v0, v5

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    int-to-float v7, v8

    mul-float v13, v7, v5

    float-to-int v13, v13

    invoke-static {v13, v14, v8}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v13

    mul-float v15, v7, v1

    mul-float/2addr v15, v11

    float-to-int v11, v15

    invoke-static {v11, v14, v8}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v11

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v14, v14, v13, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v15}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v11, v14, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v15}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    neg-int v0, v8

    int-to-float v0, v0

    mul-float/2addr v0, v10

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v5, v8, v5

    mul-float/2addr v5, v0

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    mul-float/2addr v7, v12

    mul-float/2addr v7, v1

    invoke-virtual {v3, v7}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v0, v13

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v9

    sub-float/2addr v0, v5

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    const v0, 0x3f83d70a    # 1.03f

    mul-float/2addr v12, v1

    sub-float/2addr v0, v12

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleY(F)V

    const v0, 0x3ca3d70a    # 0.02f

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v13, v0, v1

    invoke-virtual {v3, v13}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, v13}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
