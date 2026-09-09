.class public final Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;
.super Lcom/deepalhome/launcher/widget/BaseWidgetView;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/widget/BaseWidgetView<",
        "Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;",
        ">;",
        "Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final allAppsItemView$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final appsChangedListener:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$appsChangedListener$1;

.field public blurInitialized:Z

.field public isNightMode:Z

.field public isRuntimeListenersRegistered:Z

.field public final maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final recentAppsChangedListener:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentAppsChangedListener$1;

.field public final recentItemViews$delegate:Lkotlin/SynchronizedLazyImpl;

.field public widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentItemViews$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentItemViews$2;-><init>(Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->recentItemViews$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$allAppsItemView$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$allAppsItemView$2;-><init>(Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->allAppsItemView$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$appsChangedListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$appsChangedListener$1;-><init>(Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->appsChangedListener:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$appsChangedListener$1;

    new-instance p1, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentAppsChangedListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentAppsChangedListener$1;-><init>(Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->recentAppsChangedListener:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentAppsChangedListener$1;

    new-instance p1, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;-><init>(I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    new-instance p1, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$maxBlurRadius$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$maxBlurRadius$2;-><init>(Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method private final getAllAppsItemView()Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->allAppsItemView$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;

    return-object p0
.end method

.method private final getMaxBlurRadius()F
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getRecentItemViews()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->recentItemViews$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static synthetic refreshEntries$default(Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;)V
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->getCachedApps()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->refreshEntries(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final applyBlurRadius$9()V
    .locals 5

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->blurInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v0, v0, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    const-string v1, "blurView"

    if-gtz v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    return-void

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptBlurRadius(IF)F

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2, v0}, Leightbitlab/com/blurview/BlurView;->setBlurRadius(F)V

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->isNightMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f06002b

    goto :goto_0

    :cond_0
    const v1, 0x7f060398

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v1, v1, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundOpacityPercent:I

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->overlayColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->applyBlurRadius$9()V

    return-void
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e00e6

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->isRuntimeListenersRegistered:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->isRuntimeListenersRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->appsChangedListener:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$appsChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/AppUtil;->addOnAppsChangedListener(Lkotlin/jvm/functions/Function1;)V

    const-string v0, "listener"

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->recentAppsChangedListener:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentAppsChangedListener$1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->recentAppChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getRecentAppPackageNames()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentAppsChangedListener$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/deepalhome/launcher/util/AppUtil;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/ArrayList;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->refreshEntries$default(Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;)V

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    new-instance v1, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$onAttachedToWindow$1;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$onAttachedToWindow$1;-><init>(Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {v1, p0}, Lcom/deepalhome/launcher/util/AppUtil;->loadAppsAsync(Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->isRuntimeListenersRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->isRuntimeListenersRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->appsChangedListener:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$appsChangedListener$1;

    const-string v1, "listener"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/util/AppUtil;->appChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->recentAppsChangedListener:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$recentAppsChangedListener$1;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/util/AppUtil;->recentAppChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const-string v2, "blurView"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInit()V
    .locals 22

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct/range {p0 .. p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->getRecentItemViews()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;

    iget-object v4, v4, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;->container:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    new-array v4, v2, [Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    array-length v4, v3

    if-lez v4, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    array-length v5, v3

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-static {v1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->getAllAppsItemView()Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;

    move-result-object v3

    iget-object v3, v3, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;->container:Landroid/view/View;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/View;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/View;

    array-length v3, v1

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v15, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v11, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$installActionGestureBridge$1$1;->INSTANCE:Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$installActionGestureBridge$1$1;

    new-instance v12, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$installActionGestureBridge$1$2;

    invoke-direct {v12, v0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$installActionGestureBridge$1$2;-><init>(Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;)V

    new-instance v13, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$installActionGestureBridge$1$3;

    invoke-direct {v13, v0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$installActionGestureBridge$1$3;-><init>(Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;)V

    new-instance v14, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$installActionGestureBridge$1$4;

    invoke-direct {v14, v0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$installActionGestureBridge$1$4;-><init>(Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;)V

    new-instance v10, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$installActionGestureBridge$1$5;

    invoke-direct {v10, v0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$installActionGestureBridge$1$5;-><init>(Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;)V

    const/16 v16, 0x0

    const/16 v19, 0x386

    const-wide/16 v8, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object v6, v15

    move-object/from16 v21, v10

    move/from16 v10, v17

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    move/from16 v17, v20

    move-object/from16 v18, v21

    invoke-direct/range {v6 .. v19}, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;-><init>(Landroid/content/Context;JFLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleClick$1;ZLkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->refreshEntries$default(Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;)V

    sget-object v1, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    new-instance v2, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$onInit$2;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$onInit$2;-><init>(Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/deepalhome/launcher/util/AppUtil;->loadAppsAsync(Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method

.method public final refreshEntries(Ljava/util/List;)V
    .locals 13

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/util/RecentAppsResolver;->INSTANCE:Lcom/deepalhome/launcher/util/RecentAppsResolver;

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/deepalhome/launcher/util/RecentAppsResolver;->resolveRecentApps(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "apps"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/RecentAppsResolver;->INSTANCE:Lcom/deepalhome/launcher/util/RecentAppsResolver;

    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getRecentAppPackageNames()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/deepalhome/launcher/util/RecentAppsResolver;->resolveRecentApps(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->getRecentItemViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0x7f06038b

    const v7, 0x7f06038c

    const v8, 0x7f0b0584

    const v9, 0x7f0800bd

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v11, v2, 0x1

    if-ltz v2, :cond_4

    check-cast v3, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;

    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/app/App;

    iget-object v12, v3, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;->container:Landroid/view/View;

    invoke-virtual {v12, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v12, v3, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;->container:Landroid/view/View;

    invoke-virtual {v12, v9}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v9, v3, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;->icon:Landroid/widget/ImageView;

    iget-object v3, v3, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;->label:Landroid/widget/TextView;

    if-nez v2, :cond_2

    invoke-virtual {v12, v1}, Landroid/view/View;->setEnabled(Z)V

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v12, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v9, v8, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v2, 0x7f0800ec

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v9}, Landroid/widget/ImageView;->clearColorFilter()V

    const v2, 0x3ee66666    # 0.45f

    invoke-virtual {v9, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f1303f4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v4, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->isNightMode:Z

    if-eqz v4, :cond_1

    const v4, 0x7f06038a

    goto :goto_2

    :cond_1
    const v4, 0x7f060389

    :goto_2
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v12, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v12, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v9, v8, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v9}, Landroid/widget/ImageView;->clearColorFilter()V

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/app/App;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->isNightMode:Z

    if-eqz v5, :cond_3

    move v6, v7

    :cond_3
    invoke-virtual {v4, v6}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v3, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-static {v3, v9, v2}, Lcom/deepalhome/launcher/util/AppUtil;->bindAppIcon$default(Lcom/deepalhome/launcher/util/AppUtil;Landroid/widget/ImageView;Lcom/deepalhome/launcher/app/App;)V

    new-instance v3, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    const/16 v4, 0x13

    invoke-direct {v3, v4, p0, v2}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    move v2, v11

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v5

    :cond_5
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->getAllAppsItemView()Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;

    move-result-object p1

    iget-object v0, p1, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;->container:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p1, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;->container:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p1, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v8, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v2, 0x7f080174

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->isNightMode:Z

    if-eqz v3, :cond_6

    move v3, v7

    goto :goto_4

    :cond_6
    move v3, v6

    :goto_4
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1303f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView$ItemViews;->label:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->isNightMode:Z

    if-eqz v2, :cond_7

    move v6, v7

    :cond_7
    invoke-virtual {v1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p1, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/16 v1, 0x1c

    invoke-direct {p1, v1, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setBlurEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    const-string v0, "blurView"

    if-eqz p1, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    check-cast v1, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptSetupBlurRadius(IF)F

    move-result v2

    :goto_0
    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v1, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v1}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v2, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v1, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v2, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->blurInitialized:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RecentAppsWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->applyBlurRadius$9()V

    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->isNightMode:Z

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->applyWidgetStyle(Lcom/deepalhome/launcher/widget/WidgetStyleConfig;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;->refreshEntries$default(Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;)V

    return-void
.end method
