.class public final Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public activeState:Z

.field public final argbEvaluator:Landroid/animation/ArgbEvaluator;

.field public colorAnimator:Landroid/animation/ValueAnimator;

.field public currentFillColor:I

.field public currentStrokeColor:I

.field public editModeEnabled:Z

.field public onDeleteRequested:Lkotlin/jvm/functions/Function1;

.field public final popupBackground:Landroid/graphics/drawable/GradientDrawable;

.field public final popupView:Landroid/widget/FrameLayout;

.field public popupVisible:Z


# direct methods
.method public static $r8$lambda$22ViP8gJrHEsUT2v7WA4TewE2RI(Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;Landroid/view/DragEvent;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->reset()V

    goto :goto_3

    :cond_1
    iget-boolean v3, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->editModeEnabled:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;->getItem()Lcom/deepalhome/launcher/navigation/model/GridItem;

    move-result-object v3

    iget-boolean v3, v3, Lcom/deepalhome/launcher/navigation/model/GridItem;->removable:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Existing;->getSource()Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;

    move-result-object v3

    sget-object v4, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;->NAV_BAR:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$ExistingSource;

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->setActive(Z)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->hidePopup()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->isPointInsidePopup(FF)Z

    move-result p1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->hidePopup()V

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->onDeleteRequested:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_3

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->showPopup()V

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->isPointInsidePopup(FF)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->setActive(Z)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->showPopup()V

    invoke-direct {p0, v2}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->setActive(Z)V

    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->reset()V

    :cond_5
    :goto_3
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070376

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->popupBackground:Landroid/graphics/drawable/GradientDrawable;

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/16 v6, 0x31

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x3f6b851f    # 0.92f

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->popupView:Landroid/widget/FrameLayout;

    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700b8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/16 v5, 0x11

    invoke-direct {p1, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x7f080133

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    const/4 p1, -0x1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusable(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->applyColors(ZZ)V

    new-instance p1, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/deepalhome/launcher/navigation/view/BottomNavGridHostView$$ExternalSyntheticLambda0;-><init>(Landroid/widget/FrameLayout;I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public static colorWithAlpha(IF)I
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p1

    const/16 v0, 0xff

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private final setActive(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->activeState:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->activeState:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->applyColors(ZZ)V

    return-void
.end method


# virtual methods
.method public final applyColors(ZZ)V
    .locals 9

    const v0, 0x7f060049

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const v2, 0x3f3851ec    # 0.72f

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->colorWithAlpha(IF)I

    move-result v1

    :goto_0
    move v5, v1

    goto :goto_2

    :cond_0
    sget-object v1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060028

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06002b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :goto_1
    const v2, 0x3f147ae1    # 0.58f

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->colorWithAlpha(IF)I

    move-result v1

    goto :goto_0

    :goto_2
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1, v1}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->colorWithAlpha(IF)I

    move-result p1

    :goto_3
    move v7, p1

    goto :goto_4

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060397

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const v0, 0x3e851eb8    # 0.26f

    invoke-static {p1, v0}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->colorWithAlpha(IF)I

    move-result p1

    goto :goto_3

    :goto_4
    iget v4, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->currentFillColor:I

    iget v6, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->currentStrokeColor:I

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->colorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    if-eqz p2, :cond_4

    iput v5, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->currentFillColor:I

    iput v7, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->currentStrokeColor:I

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->popupBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0700a2

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    return-void

    :cond_4
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda20;

    const/4 v8, 0x1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda20;-><init>(Landroid/widget/FrameLayout;IIIII)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->colorAnimator:Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final getEditModeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->editModeEnabled:Z

    return p0
.end method

.method public final getOnDeleteRequested()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->onDeleteRequested:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final hidePopup()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->popupVisible:Z

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->popupView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->reset()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->popupVisible:Z

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->setActive(Z)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f75c28f    # 0.96f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 v2, 0x18

    invoke-direct {v1, v2, p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final isPointInsidePopup(FF)Z
    .locals 2

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->popupVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->popupView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-gtz p2, :cond_0

    goto :goto_3

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->popupView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p3, p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_0

    :cond_1
    move-object p1, p4

    :goto_0
    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-lez p3, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, p4

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-lez p3, :cond_5

    move-object p4, v0

    :cond_5
    if-eqz p4, :cond_7

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :goto_2
    const/16 p4, 0x31

    iput p4, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    int-to-float p2, p2

    const/high16 p4, 0x40400000    # 3.0f

    mul-float/2addr p2, p4

    const/high16 p4, 0x40a00000    # 5.0f

    div-float/2addr p2, p4

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    sub-float/2addr p2, p3

    invoke-static {p2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p2

    if-gez p2, :cond_6

    const/4 p2, 0x0

    :cond_6
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final reset()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->colorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->popupView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->popupVisible:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->activeState:Z

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    const v2, 0x3f6b851f    # 0.92f

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->applyColors(ZZ)V

    return-void
.end method

.method public final setEditModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->editModeEnabled:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->reset()V

    :cond_0
    return-void
.end method

.method public final setOnDeleteRequested(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->onDeleteRequested:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final showPopup()V
    .locals 2

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->popupVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->popupVisible:Z

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->popupView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x3f6b851f    # 0.92f

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xdc

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
