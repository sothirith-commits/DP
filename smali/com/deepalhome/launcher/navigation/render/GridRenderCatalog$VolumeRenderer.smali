.class public final Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$VolumeRenderer;
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
    .locals 1

    const-string p0, "view"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "environment"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p0, 0x7f0b0677

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/navigation/render/RenderMode;->RUNTIME:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    if-ne p3, v0, :cond_1

    new-instance p3, Lcom/deepalhome/launcher/HelperActivity$$ExternalSyntheticLambda13;

    const/4 v0, 0x2

    invoke-direct {p3, p4, p1, p0, v0}, Lcom/deepalhome/launcher/HelperActivity$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object p1, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p2, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->supportsSharedTouchFeedback(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    sget-object p1, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p3}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->animatedClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
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

    const p1, 0x7f0e00f2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "inflate(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final unbind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;)V
    .locals 1

    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const p0, 0x7f0b0677

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const p0, 0x7f0b0586

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    instance-of v0, p3, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    if-eqz v0, :cond_1

    check-cast p3, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;

    goto :goto_0

    :cond_1
    move-object p3, p2

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/deepalhome/launcher/navigation/VolumePopupWindow;->dismiss()V

    :cond_2
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

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

    const p0, 0x7f0b0677

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    const p1, 0x7f080272

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p3, :cond_0

    const p2, 0x7f060099

    goto :goto_0

    :cond_0
    const p2, 0x7f060098

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method
