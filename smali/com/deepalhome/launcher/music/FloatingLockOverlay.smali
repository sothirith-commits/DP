.class public final Lcom/deepalhome/launcher/music/FloatingLockOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final iconView:Landroid/widget/ImageView;

.field public isAdded:Z

.field public final onClick:Lkotlin/jvm/functions/Function0;

.field public final overlayView:Landroid/widget/FrameLayout;

.field public final touchTargetPx:I

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/deepalhome/launcher/music/FloatingLyricsWindow$lockOverlay$1;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->windowManager:Landroid/view/WindowManager;

    const/high16 p2, 0x42600000    # 56.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p2

    iput p2, p0, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->touchTargetPx:I

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p2

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const v1, 0x7f0800c4

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    iput-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->iconView:Landroid/widget/ImageView;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusable(Z)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->overlayView:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->isAdded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->overlayView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->isAdded:Z

    return-void
.end method
