.class public Lcom/luck/picture/lib/magical/MagicalView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final appInScreenHeight:I

.field public final backgroundView:Landroid/view/View;

.field public final contentLayout:Landroid/widget/FrameLayout;

.field public isAnimating:Z

.field public final isPreviewFullScreenMode:Z

.field public mAlpha:F

.field public mOriginHeight:I

.field public mOriginLeft:I

.field public mOriginTop:I

.field public mOriginWidth:I

.field public final magicalWrapper:Landroidx/cardview/widget/CardView$1;

.field public onMagicalViewCallback:Lcom/luck/picture/lib/magical/OnMagicalViewCallback;

.field public realHeight:I

.field public realWidth:I

.field public screenHeight:I

.field public screenWidth:I

.field public final selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

.field public startX:I

.field public startY:I

.field public targetEndLeft:I

.field public targetImageHeight:I

.field public targetImageTop:I

.field public targetImageWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/luck/picture/lib/magical/MagicalView;->mAlpha:F

    iput-boolean v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->isAnimating:Z

    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object p2

    invoke-virtual {p2}, Lcom/luck/picture/lib/config/SelectorProviders;->getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/luck/picture/lib/magical/MagicalView;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    iput-boolean p2, p0, Lcom/luck/picture/lib/magical/MagicalView;->isPreviewFullScreenMode:Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/luck/picture/lib/utils/DensityUtil;->getRealScreenHeight(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/luck/picture/lib/magical/MagicalView;->appInScreenHeight:I

    invoke-direct {p0}, Lcom/luck/picture/lib/magical/MagicalView;->getScreenSize()V

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/luck/picture/lib/magical/MagicalView;->backgroundView:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->mAlpha:F

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/luck/picture/lib/magical/MagicalView;->contentLayout:Landroid/widget/FrameLayout;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Landroidx/cardview/widget/CardView$1;

    invoke-direct {p1, p2}, Landroidx/cardview/widget/CardView$1;-><init>(Landroid/widget/FrameLayout;)V

    iput-object p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->magicalWrapper:Landroidx/cardview/widget/CardView$1;

    return-void
.end method

.method private getScreenSize()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/DensityUtil;->getRealScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->screenWidth:I

    iget-boolean v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->isPreviewFullScreenMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/DensityUtil;->getRealScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->screenHeight:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->screenHeight:I

    :goto_0
    return-void
.end method


# virtual methods
.method public final backToMin()V
    .locals 6

    iget-boolean v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->isAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginWidth:I

    iget-object v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->contentLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginHeight:I

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->onMagicalViewCallback:Lcom/luck/picture/lib/magical/OnMagicalViewCallback;

    if-eqz v0, :cond_4

    check-cast v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object v2, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    iget-object v0, v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->getCurrentHolder(I)Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    instance-of v2, v0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    iget-object v0, v0, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->ivPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_0
    new-instance v0, Lme/wcy/lrcview/LrcView$5;

    const/4 v2, 0x4

    invoke-direct {v0, v2, p0}, Lme/wcy/lrcview/LrcView$5;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_5
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v4, Lcom/luck/picture/lib/magical/MagicalView$2;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/luck/picture/lib/magical/MagicalView$2;-><init>(Lcom/luck/picture/lib/magical/MagicalView;I)V

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p0, p0, Lcom/luck/picture/lib/magical/MagicalView;->backgroundView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final changeBackgroundViewAlpha(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    iget v3, p0, Lcom/luck/picture/lib/magical/MagicalView;->mAlpha:F

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v3, v4, v1

    aput v2, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/luck/picture/lib/magical/MagicalView$1;

    invoke-direct {v3, p0, v0}, Lcom/luck/picture/lib/magical/MagicalView$1;-><init>(Lcom/luck/picture/lib/magical/MagicalView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/luck/picture/lib/magical/MagicalView$6;

    invoke-direct {v0, p1, v1, p0}, Lcom/luck/picture/lib/magical/MagicalView$6;-><init>(ZILjava/lang/Object;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p0, 0xfa

    invoke-virtual {v2, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final changeRealScreenHeight(IIZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->isPreviewFullScreenMode:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->screenWidth:I

    iget v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->screenHeight:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, v0

    div-float p1, p2, p1

    float-to-int p1, p1

    if-le p1, v1, :cond_1

    iget p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->appInScreenHeight:I

    iput p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->screenHeight:I

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->magicalWrapper:Landroidx/cardview/widget/CardView$1;

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView$1;->setWidth(F)V

    iget p0, p0, Lcom/luck/picture/lib/magical/MagicalView;->screenHeight:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroidx/cardview/widget/CardView$1;->setHeight(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->contentLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/luck/picture/lib/magical/MagicalView;->startX:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, p0, Lcom/luck/picture/lib/magical/MagicalView;->startY:I

    sub-int v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v1, v4, :cond_2

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_5

    iget v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->startY:I

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->startX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->startY:I

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final resetStart()V
    .locals 1

    invoke-direct {p0}, Lcom/luck/picture/lib/magical/MagicalView;->getScreenSize()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/magical/MagicalView;->start(Z)V

    return-void
.end method

.method public final resetStartNormal(II)V
    .locals 0

    invoke-direct {p0}, Lcom/luck/picture/lib/magical/MagicalView;->getScreenSize()V

    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/magical/MagicalView;->startNormal(II)V

    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->mAlpha:F

    iget-object p0, p0, Lcom/luck/picture/lib/magical/MagicalView;->backgroundView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/magical/MagicalView;->backgroundView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setMagicalContent(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/magical/MagicalView;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setOnMojitoViewCallback(Lcom/luck/picture/lib/magical/OnMagicalViewCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->onMagicalViewCallback:Lcom/luck/picture/lib/magical/OnMagicalViewCallback;

    return-void
.end method

.method public final setOriginParams()V
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v2, p0, Lcom/luck/picture/lib/magical/MagicalView;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->targetEndLeft:I

    iget v2, p0, Lcom/luck/picture/lib/magical/MagicalView;->screenWidth:I

    int-to-float v3, v2

    iget v4, p0, Lcom/luck/picture/lib/magical/MagicalView;->screenHeight:I

    int-to-float v5, v4

    div-float v6, v3, v5

    iget v7, p0, Lcom/luck/picture/lib/magical/MagicalView;->realWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcom/luck/picture/lib/magical/MagicalView;->realHeight:I

    int-to-float v8, v8

    div-float v9, v7, v8

    cmpg-float v6, v6, v9

    if-gez v6, :cond_0

    iput v2, p0, Lcom/luck/picture/lib/magical/MagicalView;->targetImageWidth:I

    div-float/2addr v8, v7

    mul-float/2addr v8, v3

    float-to-int v1, v8

    iput v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->targetImageHeight:I

    sub-int/2addr v4, v1

    div-int/2addr v4, v0

    iput v4, p0, Lcom/luck/picture/lib/magical/MagicalView;->targetImageTop:I

    goto :goto_0

    :cond_0
    iput v4, p0, Lcom/luck/picture/lib/magical/MagicalView;->targetImageHeight:I

    mul-float/2addr v9, v5

    float-to-int v3, v9

    iput v3, p0, Lcom/luck/picture/lib/magical/MagicalView;->targetImageWidth:I

    iput v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->targetImageTop:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v0

    iput v2, p0, Lcom/luck/picture/lib/magical/MagicalView;->targetEndLeft:I

    :goto_0
    iget v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->magicalWrapper:Landroidx/cardview/widget/CardView$1;

    invoke-virtual {v1, v0}, Landroidx/cardview/widget/CardView$1;->setWidth(F)V

    iget v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginHeight:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroidx/cardview/widget/CardView$1;->setHeight(F)V

    iget v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginLeft:I

    iget-object v2, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v0, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p0, p0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginTop:I

    iput p0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setShowEndParams()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->isAnimating:Z

    iget v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->screenHeight:I

    iput v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->targetImageHeight:I

    iget v2, p0, Lcom/luck/picture/lib/magical/MagicalView;->screenWidth:I

    iput v2, p0, Lcom/luck/picture/lib/magical/MagicalView;->targetImageWidth:I

    iput v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->targetImageTop:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/luck/picture/lib/magical/MagicalView;->magicalWrapper:Landroidx/cardview/widget/CardView$1;

    invoke-virtual {v2, v1}, Landroidx/cardview/widget/CardView$1;->setHeight(F)V

    iget v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->screenWidth:I

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroidx/cardview/widget/CardView$1;->setWidth(F)V

    iget-object v1, v2, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, v2, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/luck/picture/lib/magical/MagicalView;->onMagicalViewCallback:Lcom/luck/picture/lib/magical/OnMagicalViewCallback;

    if-eqz p0, :cond_4

    check-cast p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->getCurrentHolder(I)Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/luck/picture/lib/entity/LocalMedia;->cropImageWidth:I

    if-lez v3, :cond_1

    iget v4, v2, Lcom/luck/picture/lib/entity/LocalMedia;->cropImageHeight:I

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v2, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    iget v4, v2, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    :goto_0
    invoke-static {v3, v4}, Lcom/luck/picture/lib/utils/MediaUtils;->isLongImage(II)Z

    move-result v2

    iget-object v3, v1, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    if-eqz v2, :cond_2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v2}, Lcom/luck/picture/lib/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v2}, Lcom/luck/picture/lib/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_1
    instance-of v2, v1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->ivPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->getCurrentHolder(I)Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->isPlaying$1()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final setViewParams(IIIIII)V
    .locals 0

    iput p5, p0, Lcom/luck/picture/lib/magical/MagicalView;->realWidth:I

    iput p6, p0, Lcom/luck/picture/lib/magical/MagicalView;->realHeight:I

    iput p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginLeft:I

    iput p2, p0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginTop:I

    iput p3, p0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginWidth:I

    iput p4, p0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginHeight:I

    return-void
.end method

.method public final showNormalMin(ZFFFFFFFFF)V
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/magical/MagicalView;->magicalWrapper:Landroidx/cardview/widget/CardView$1;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p8}, Landroidx/cardview/widget/CardView$1;->setWidth(F)V

    invoke-virtual {p0, p10}, Landroidx/cardview/widget/CardView$1;->setHeight(F)V

    float-to-int p1, p6

    iget-object p2, p0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object p0, p0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    float-to-int p1, p4

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    sub-float/2addr p6, p5

    mul-float/2addr p6, p2

    sub-float/2addr p8, p7

    mul-float/2addr p8, p2

    sub-float/2addr p10, p9

    mul-float/2addr p10, p2

    sub-float/2addr p4, p3

    mul-float/2addr p4, p2

    add-float/2addr p7, p8

    invoke-virtual {p0, p7}, Landroidx/cardview/widget/CardView$1;->setWidth(F)V

    add-float/2addr p9, p10

    invoke-virtual {p0, p9}, Landroidx/cardview/widget/CardView$1;->setHeight(F)V

    add-float/2addr p5, p6

    float-to-int p1, p5

    iget-object p2, p0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object p0, p0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-float/2addr p3, p4

    float-to-int p1, p3

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public final start(Z)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    iput v2, p0, Lcom/luck/picture/lib/magical/MagicalView;->mAlpha:F

    move v1, v2

    :cond_0
    iput v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->mAlpha:F

    iget-object v3, p0, Lcom/luck/picture/lib/magical/MagicalView;->backgroundView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/luck/picture/lib/magical/MagicalView;->setOriginParams()V

    if-eqz p1, :cond_1

    iput v2, p0, Lcom/luck/picture/lib/magical/MagicalView;->mAlpha:F

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    iget p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->targetImageTop:I

    int-to-float v4, p1

    iget p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->targetEndLeft:I

    int-to-float v6, p1

    iget p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->targetImageWidth:I

    int-to-float v8, p1

    iget p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->targetImageHeight:I

    int-to-float v10, p1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/luck/picture/lib/magical/MagicalView;->showNormalMin(ZFFFFFFFFF)V

    invoke-virtual {p0}, Lcom/luck/picture/lib/magical/MagicalView;->setShowEndParams()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v1, Lcom/luck/picture/lib/magical/MagicalView$1;

    invoke-direct {v1, p0, v0}, Lcom/luck/picture/lib/magical/MagicalView$1;-><init>(Lcom/luck/picture/lib/magical/MagicalView;I)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/luck/picture/lib/magical/MagicalView$2;

    invoke-direct {v1, p0, v0}, Lcom/luck/picture/lib/magical/MagicalView$2;-><init>(Lcom/luck/picture/lib/magical/MagicalView;I)V

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/luck/picture/lib/magical/MagicalView;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/magical/MagicalView;->changeBackgroundViewAlpha(Z)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final startNormal(II)V
    .locals 11

    iput p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->realWidth:I

    iput p2, p0, Lcom/luck/picture/lib/magical/MagicalView;->realHeight:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginLeft:I

    iput p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginTop:I

    iput p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginWidth:I

    iput p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->mOriginHeight:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/luck/picture/lib/magical/MagicalView;->setOriginParams()V

    iget p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->targetImageTop:I

    int-to-float v4, p1

    iget p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->targetEndLeft:I

    int-to-float v6, p1

    iget p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->targetImageWidth:I

    int-to-float v8, p1

    iget p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->targetImageHeight:I

    int-to-float v10, p1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/luck/picture/lib/magical/MagicalView;->showNormalMin(ZFFFFFFFFF)V

    iget-object p1, p0, Lcom/luck/picture/lib/magical/MagicalView;->backgroundView:Landroid/view/View;

    const/4 p2, 0x0

    iput p2, p0, Lcom/luck/picture/lib/magical/MagicalView;->mAlpha:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/luck/picture/lib/magical/MagicalView;->contentLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v1, 0xfa

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Lcom/luck/picture/lib/magical/MagicalView;->setShowEndParams()V

    return-void
.end method
