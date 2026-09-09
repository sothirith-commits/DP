.class public final Landroidx/fragment/app/DefaultSpecialEffectsController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$animationInfo:Ljava/lang/Object;

.field public final synthetic val$container:Ljava/lang/Object;

.field public val$isHideOperation:Z

.field public final synthetic val$operation:Ljava/lang/Object;

.field public final synthetic val$viewToAnimate:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$container:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$viewToAnimate:Landroid/view/View;

    iput-boolean p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$isHideOperation:Z

    iput-object p4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$operation:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$animationInfo:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/deepalhome/launcher/wallpaper/WallpaperView$startScrollTransition$1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$container:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$viewToAnimate:Landroid/view/View;

    iput-object p3, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$operation:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$animationInfo:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$isHideOperation:Z

    iget-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$container:Ljava/lang/Object;

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$viewToAnimate:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;->reset(Landroid/widget/ImageView;)V

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$operation:Ljava/lang/Object;

    check-cast p0, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;->reset(Landroid/widget/ImageView;)V

    iget-object p0, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;->shadowView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$container:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;

    iput-object p1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;->animator:Landroid/animation/ValueAnimator;

    iget-boolean p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$isHideOperation:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$viewToAnimate:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;->reset(Landroid/widget/ImageView;)V

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$operation:Ljava/lang/Object;

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;->reset(Landroid/widget/ImageView;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;->shadowView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$animationInfo:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$container:Ljava/lang/Object;

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-boolean p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$isHideOperation:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$operation:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    iget p1, p1, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;->mFinalState:I

    invoke-static {v0, p1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->_applyState(Landroid/view/View;I)V

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$2;->val$animationInfo:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;->completeSpecialEffect()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
