.class public final Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$MusicRenderer;
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
    .locals 0

    const-string p0, "view"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "environment"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lcom/deepalhome/launcher/music/LegacyMusicBar;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/deepalhome/launcher/music/LegacyMusicBar;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    sget-object p0, Lcom/deepalhome/launcher/navigation/render/RenderMode;->RUNTIME:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    if-ne p3, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    iput-boolean p0, p1, Lcom/deepalhome/launcher/music/LegacyMusicBar;->runtimeInteractive:Z

    iput-boolean p0, p1, Lcom/deepalhome/launcher/music/LegacyMusicBar;->observeMusicChanges:Z

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->refreshBindingState()V

    :cond_2
    return-void
.end method

.method public final createView(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/deepalhome/launcher/navigation/render/RenderMode;)Landroid/view/View;
    .locals 0

    const-string p0, "parent"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/navigation/render/RenderMode;->RUNTIME:Lcom/deepalhome/launcher/navigation/render/RenderMode;

    if-ne p3, p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070055

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sget-object p2, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    sget-object p3, Lcom/deepalhome/launcher/navigation/model/GridItemType;->MUSIC:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {p2, p3}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->spec(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    move-result-object p2

    iget p2, p2, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->coarseSpan:I

    mul-int/2addr p0, p2

    :goto_0
    new-instance p2, Lcom/deepalhome/launcher/music/LegacyMusicBar;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/deepalhome/launcher/music/LegacyMusicBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p1, p0, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public final unbind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;)V
    .locals 0

    const-string p0, "item"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "mode"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lcom/deepalhome/launcher/music/LegacyMusicBar;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/deepalhome/launcher/music/LegacyMusicBar;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/deepalhome/launcher/music/LegacyMusicBar;->runtimeInteractive:Z

    iput-boolean p0, p1, Lcom/deepalhome/launcher/music/LegacyMusicBar;->observeMusicChanges:Z

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/LegacyMusicBar;->refreshBindingState()V

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

    instance-of p0, p1, Lcom/deepalhome/launcher/music/LegacyMusicBar;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const p0, 0x7f0b05e7

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p3, :cond_1

    const p4, 0x7f06038c

    goto :goto_0

    :cond_1
    const p4, 0x7f06038b

    :goto_0
    invoke-virtual {p2, p4}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const p0, 0x7f0b0442

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_4

    if-eqz p3, :cond_3

    const p2, 0x7f0801d8

    goto :goto_1

    :cond_3
    const p2, 0x7f0801d7

    :goto_1
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    const p0, 0x7f0b03fc

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_6

    if-eqz p3, :cond_5

    const p2, 0x7f0801d2

    goto :goto_2

    :cond_5
    const p2, 0x7f0801d1

    :goto_2
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    const p0, 0x7f0b034e

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p3, :cond_8

    const p4, 0x7f060099

    goto :goto_3

    :cond_8
    const p4, 0x7f060098

    :goto_3
    invoke-virtual {p2, p4}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    :goto_4
    const p0, 0x7f0b0461

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    if-nez p0, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p3, :cond_a

    const p3, 0x7f0801da

    goto :goto_5

    :cond_a
    const p3, 0x7f0801d9

    :goto_5
    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_6
    const p0, 0x7f0b013a

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_b

    const/high16 p1, 0x7f100000

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_b
    return-void
.end method
