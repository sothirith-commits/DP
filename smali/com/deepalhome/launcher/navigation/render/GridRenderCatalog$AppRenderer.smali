.class public final Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$AppRenderer;
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
    .locals 8

    const-string p0, "view"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "environment"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p0, 0x7f0b02ed

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/makeramen/roundedimageview/RoundedImageView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lcom/deepalhome/launcher/navigation/model/GridItem;->payload:Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    iget-object v1, v0, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;->label:Ljava/lang/String;

    iget-object v4, v0, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;->packageName:Ljava/lang/String;

    if-nez v1, :cond_1

    if-nez v4, :cond_2

    const-string v1, ""

    :cond_1
    move-object v3, v1

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_0
    const/4 v0, 0x0

    if-eqz v4, :cond_3

    new-instance v1, Lcom/deepalhome/launcher/app/App;

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/app/App;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    const v2, 0x7f0800ec

    if-eqz v1, :cond_4

    sget-object v3, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1, v2}, Lcom/deepalhome/launcher/util/AppUtil;->bindAppIcon(Landroid/widget/ImageView;Lcom/deepalhome/launcher/app/App;I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v2}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageResource(I)V

    :goto_2
    const p0, 0x7f0b0654

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    move-object v2, v0

    :goto_3
    const-string v3, "Settings"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->shouldShowUpdateBadge()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    sget-object p0, Lcom/deepalhome/launcher/navigation/render/RenderMode;->RUNTIME:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    if-ne p3, p0, :cond_8

    if-eqz v1, :cond_8

    new-instance v0, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    const/4 p0, 0x6

    invoke-direct {v0, p0, p4, p2}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    sget-object p0, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p2, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->supportsSharedTouchFeedback(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    sget-object p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->animatedClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/deepalhome/launcher/navigation/render/RenderMode;)Landroid/view/View;
    .locals 0

    const-string p0, "parent"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0e00fb

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final unbind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;)V
    .locals 0

    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
