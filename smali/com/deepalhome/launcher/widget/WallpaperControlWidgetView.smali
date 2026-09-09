.class public final Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;
.super Lcom/deepalhome/launcher/widget/BaseWidgetView;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/widget/BaseWidgetView<",
        "Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;",
        ">;",
        "Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final audioStateChangedListener:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$audioStateChangedListener$1;

.field public blurInitialized:Z

.field public isNightMode:Z

.field public isRuntimeListenersRegistered:Z

.field public final maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final nextAction$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final previousAction$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final randomAction$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final soundAction$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final wallpaperChangedListener:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$wallpaperChangedListener$1;

.field public widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$wallpaperChangedListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$wallpaperChangedListener$1;-><init>(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->wallpaperChangedListener:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$wallpaperChangedListener$1;

    new-instance p1, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$audioStateChangedListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$audioStateChangedListener$1;-><init>(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->audioStateChangedListener:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$audioStateChangedListener$1;

    new-instance p1, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;-><init>(I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    new-instance p1, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$maxBlurRadius$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$maxBlurRadius$2;-><init>(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$randomAction$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$randomAction$2;-><init>(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->randomAction$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$previousAction$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$previousAction$2;-><init>(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->previousAction$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$nextAction$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$nextAction$2;-><init>(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->nextAction$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$soundAction$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$soundAction$2;-><init>(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->soundAction$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method private final getMaxBlurRadius()F
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getNextAction()Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->nextAction$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;

    return-object p0
.end method

.method private final getPreviousAction()Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->previousAction$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;

    return-object p0
.end method

.method private final getRandomAction()Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->randomAction$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;

    return-object p0
.end method

.method private final getSoundAction()Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->soundAction$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;

    return-object p0
.end method


# virtual methods
.method public final applyBlurRadius$11()V
    .locals 5

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->blurInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v0, v0, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    const-string v1, "blurView"

    if-gtz v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    return-void

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptBlurRadius(IF)F

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2, v0}, Leightbitlab/com/blurview/BlurView;->setBlurRadius(F)V

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0c0018

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v3, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->scheduleFreeze(Leightbitlab/com/blurview/BlurView;J)V

    return-void
.end method

.method public final applyWidgetStyle(Lcom/deepalhome/launcher/widget/WidgetStyleConfig;)V
    .locals 2

    const-string v0, "style"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->sanitize()V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->isNightMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f06002b

    goto :goto_0

    :cond_0
    const v1, 0x7f060398

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v1, v1, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundOpacityPercent:I

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->overlayColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->applyBlurRadius$11()V

    return-void
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e0112

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->isRuntimeListenersRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->isRuntimeListenersRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->wallpaperChangedListener:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$wallpaperChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->addOnWallpaperChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "listener"

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->audioStateChangedListener:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$audioStateChangedListener$1;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->ensureMusicStateListenerRegistered()V

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->refreshActionStates()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->isRuntimeListenersRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->isRuntimeListenersRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->wallpaperChangedListener:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$wallpaperChangedListener$1;

    const-string v1, "listener"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->onWallpaperChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->audioStateChangedListener:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$audioStateChangedListener$1;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const-string v2, "blurView"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInit()V
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->randomItem:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->previousItem:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->nextItem:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v2, v0, v5}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->soundItem:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$$ExternalSyntheticLambda0;

    const/4 v6, 0x3

    invoke-direct {v2, v0, v6}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->randomItem:Landroid/widget/LinearLayout;

    const-string v2, "randomItem"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->previousItem:Landroid/widget/LinearLayout;

    const-string v7, "previousItem"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v7

    check-cast v7, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v7, v7, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->nextItem:Landroid/widget/LinearLayout;

    const-string v8, "nextItem"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v8

    check-cast v8, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v8, v8, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->soundItem:Landroid/widget/LinearLayout;

    const-string v9, "soundItem"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v9, 0x4

    new-array v10, v9, [Landroid/view/View;

    aput-object v1, v10, v3

    aput-object v2, v10, v4

    aput-object v7, v10, v5

    aput-object v8, v10, v6

    :goto_0
    if-ge v3, v9, :cond_0

    aget-object v1, v10, v3

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    new-instance v2, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v16, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$installActionGestureBridge$1$1;->INSTANCE:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$installActionGestureBridge$1$1;

    new-instance v5, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$installActionGestureBridge$1$2;

    invoke-direct {v5, v0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$installActionGestureBridge$1$2;-><init>(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;)V

    new-instance v6, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$installActionGestureBridge$1$3;

    invoke-direct {v6, v0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$installActionGestureBridge$1$3;-><init>(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;)V

    new-instance v7, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$installActionGestureBridge$1$4;

    invoke-direct {v7, v0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$installActionGestureBridge$1$4;-><init>(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;)V

    new-instance v8, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$installActionGestureBridge$1$5;

    invoke-direct {v8, v0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$installActionGestureBridge$1$5;-><init>(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;)V

    const/16 v20, 0x0

    const/16 v24, 0x386

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v11, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v23, v8

    invoke-direct/range {v11 .. v24}, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;-><init>(Landroid/content/Context;JFLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleClick$1;ZLkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->refreshActionStates()V

    return-void
.end method

.method public final refreshActionStates()V
    .locals 7

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperVideoAudioEnabled()Z

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_1
    sget-object v2, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->getWallpaper()Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getType()Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    move-result-object v2

    sget-object v4, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->VIDEO_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->getRandomAction()Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;

    move-result-object v4

    invoke-virtual {p0, v4, v3, v1}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->updateAction(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;ZZ)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->getPreviousAction()Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;

    move-result-object v4

    invoke-virtual {p0, v4, v3, v1}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->updateAction(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;ZZ)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->getNextAction()Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;

    move-result-object v4

    invoke-virtual {p0, v4, v3, v1}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->updateAction(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;ZZ)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->soundIconIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const v5, 0x7f080179

    goto :goto_3

    :cond_3
    const v5, 0x7f080178

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->soundLabelTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v0, :cond_4

    const v6, 0x7f1304c9

    goto :goto_4

    :cond_4
    const v6, 0x7f1304c8

    :goto_4
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->getSoundAction()Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;

    move-result-object v4

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    move v1, v3

    :cond_5
    invoke-virtual {p0, v4, v2, v1}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->updateAction(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;ZZ)V

    return-void
.end method

.method public setBlurEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    const-string v0, "blurView"

    if-eqz p1, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->scheduleFreeze(Leightbitlab/com/blurview/BlurView;J)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    :goto_0
    return-void
.end method

.method public setBlurRootView(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "rootView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setBlurRootView(Landroid/view/ViewGroup;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptSetupBlurRadius(IF)F

    move-result v2

    :goto_0
    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v1, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v1}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v2, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v1, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v2, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->blurInitialized:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperControlWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->applyBlurRadius$11()V

    return-void
.end method

.method public final updateAction(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;ZZ)V
    .locals 2

    iget-object v0, p1, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;->container:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p1, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;->container:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setSelected(Z)V

    if-eqz p2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3ee66666    # 0.45f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    if-eqz p3, :cond_1

    const v1, 0x7f0800bc

    goto :goto_1

    :cond_1
    const v1, 0x7f0800bd

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p3, :cond_2

    const p0, 0x7f060397

    goto :goto_2

    :cond_2
    if-nez p2, :cond_4

    iget-boolean p0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->isNightMode:Z

    if-eqz p0, :cond_3

    const p0, 0x7f06038a

    goto :goto_2

    :cond_3
    const p0, 0x7f060389

    goto :goto_2

    :cond_4
    iget-boolean p0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->isNightMode:Z

    if-eqz p0, :cond_5

    const p0, 0x7f06038c

    goto :goto_2

    :cond_5
    const p0, 0x7f06038b

    :goto_2
    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    iget-object p2, p1, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$ActionViews;->label:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->isNightMode:Z

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->applyWidgetStyle(Lcom/deepalhome/launcher/widget/WidgetStyleConfig;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->refreshActionStates()V

    return-void
.end method
