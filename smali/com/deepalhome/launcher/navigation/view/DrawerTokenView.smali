.class public final Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final appsChangedListener:Lcom/deepalhome/launcher/navigation/view/DrawerTokenView$appsChangedListener$1;

.field public delegatedClickListener:Landroid/view/View$OnClickListener;

.field public delegatedLongClickListener:Landroid/view/View$OnLongClickListener;

.field public final iconViews:Ljava/util/ArrayList;

.field public isRuntimeMode:Z

.field public observingApps:Z

.field public final updateBadgeChangedListener:Lcom/deepalhome/launcher/navigation/view/DrawerTokenView$updateBadgeChangedListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->iconViews:Ljava/util/ArrayList;

    new-instance v0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView$appsChangedListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView$appsChangedListener$1;-><init>(Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->appsChangedListener:Lcom/deepalhome/launcher/navigation/view/DrawerTokenView$appsChangedListener$1;

    new-instance v0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView$updateBadgeChangedListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView$updateBadgeChangedListener$1;-><init>(Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->updateBadgeChangedListener:Lcom/deepalhome/launcher/navigation/view/DrawerTokenView$updateBadgeChangedListener$1;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x42700000    # 60.0f

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f080267

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/widget/GridLayout;

    invoke-direct {v0, p1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setRowCount(I)V

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0e00f8

    invoke-virtual {v3, v4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b02ed

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->iconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->refreshIcons()V

    return-void
.end method

.method private final setObserverState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->observingApps:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->observingApps:Z

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->updateBadgeChangedListener:Lcom/deepalhome/launcher/navigation/view/DrawerTokenView$updateBadgeChangedListener$1;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->appsChangedListener:Lcom/deepalhome/launcher/navigation/view/DrawerTokenView$appsChangedListener$1;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/AppUtil;->addOnAppsChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->addOnUpdateBadgeChangedListener(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/util/AppUtil;->appChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->removeOnUpdateBadgeChangedListener(Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final applyDelegatedListeners(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->delegatedClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->delegatedLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->delegatedClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->delegatedLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setLongClickable(Z)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getChildAt(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->applyDelegatedListeners(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->updateObserverState()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->setObserverState(Z)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    const-string v0, "changedView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->updateObserverState()V

    return-void
.end method

.method public final refreshIcons()V
    .locals 7

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->getCachedApps()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_0
    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->iconViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(ILjava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->isRuntimeMode:Z

    if-eqz v3, :cond_1

    new-instance v3, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView$refreshIcons$1;

    invoke-direct {v3, p0}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView$refreshIcons$1;-><init>(Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;)V

    const/4 p0, 0x1

    invoke-static {v0, v4, v3, p0}, Lcom/deepalhome/launcher/util/AppUtil;->loadAppsAsync$default(Lcom/deepalhome/launcher/util/AppUtil;ZLkotlin/jvm/functions/Function1;I)V

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v4

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    const/4 v5, 0x0

    if-ltz v0, :cond_8

    check-cast v2, Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/app/App;

    if-nez v0, :cond_2

    const v6, 0x7f0800ec

    invoke-virtual {v2, v6}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-static {v6, v2, v0}, Lcom/deepalhome/launcher/util/AppUtil;->bindAppIcon$default(Lcom/deepalhome/launcher/util/AppUtil;Landroid/widget/ImageView;Lcom/deepalhome/launcher/app/App;)V

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v6, v2, Landroid/view/View;

    if-eqz v6, :cond_3

    check-cast v2, Landroid/view/View;

    goto :goto_2

    :cond_3
    move-object v2, v5

    :goto_2
    if-eqz v2, :cond_4

    const v6, 0x7f0b0654

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, v5

    :goto_3
    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :cond_6
    const-string v0, "Settings"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->shouldShowUpdateBadge()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v4

    goto :goto_4

    :cond_7
    const/16 v0, 0x8

    :goto_4
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    move v0, v3

    goto :goto_0

    :cond_8
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v5

    :cond_9
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->delegatedClickListener:Landroid/view/View$OnClickListener;

    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "getChildAt(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->applyDelegatedListeners(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->delegatedLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "getChildAt(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->applyDelegatedListeners(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateObserverState()V
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->isRuntimeMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->setObserverState(Z)V

    return-void
.end method
