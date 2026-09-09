.class public final Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$DrawerRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/navigation/render/GridItemRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;)V
    .locals 2

    const-string p0, "view"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "environment"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    sget-object p0, Lcom/deepalhome/launcher/navigation/render/RenderMode;->RUNTIME:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    if-ne p3, p0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p1, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->isRuntimeMode:Z

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->updateObserverState()V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->refreshIcons()V

    if-ne p3, p0, :cond_2

    sget-object p0, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p2, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->supportsSharedTouchFeedback(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    sget-object p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p4, Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;->onDrawerClickListener:Landroid/view/View$OnClickListener;

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->animatedClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p4, Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;->onDrawerLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/deepalhome/launcher/navigation/render/RenderMode;)Landroid/view/View;
    .locals 0

    const-string p0, "parent"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final unbind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;)V
    .locals 0

    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->isRuntimeMode:Z

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->updateObserverState()V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/view/DrawerTokenView;->refreshIcons()V

    :cond_1
    return-void
.end method

.method public final updateUIMode(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;ZLcom/deepalhome/launcher/navigation/render/RenderMode;)V
    .locals 0

    const-string p0, "view"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
