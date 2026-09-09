.class public final Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$HomeRenderer;
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

    instance-of p0, p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    sget-object p0, Lcom/deepalhome/launcher/navigation/render/RenderMode;->RUNTIME:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    if-ne p3, p0, :cond_1

    sget-object p0, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p2, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/model/GridItemTouchFeedbackPolicy;->supportsSharedTouchFeedback(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V

    sget-object p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p4, Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;->onHomeClickListener:Landroid/view/View$OnClickListener;

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->animatedClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p4, Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;->onHomeLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/deepalhome/launcher/navigation/render/RenderMode;)Landroid/view/View;
    .locals 0

    const-string p0, "parent"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 p3, 0x42400000    # 48.0f

    invoke-static {p2, p3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object p0
.end method

.method public final unbind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;)V
    .locals 0

    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Landroid/widget/ImageView;

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

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

    instance-of p0, p1, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const p0, 0x7f0800c9

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p3, :cond_1

    const p2, 0x7f060099

    goto :goto_1

    :cond_1
    const p2, 0x7f060098

    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method
