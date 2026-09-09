.class public final Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# instance fields
.field public final onItemClick:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/FloatBallCenterFragment$adapter$1;)V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$DiffCallback;

    invoke-direct {v0}, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$DiffCallback;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "getItem(...)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/FloatBallItem;

    const/4 p2, 0x0

    iput p2, p1, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;->retryCount:I

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f06003a

    goto :goto_0

    :cond_0
    const v1, 0x7f060039

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p1, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v1, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallItem;->url:Ljava/lang/String;

    const/16 v2, 0x2e

    const-string v3, "png"

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x3f

    invoke-static {v4, v5}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "toLowerCase(...)"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "gif"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    :goto_1
    iget-object v4, p1, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;->gifBadge:Landroid/widget/TextView;

    invoke-virtual {v4, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;->loadImage(Ljava/lang/String;Z)V

    new-instance p2, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    iget-object p1, p1, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;->this$0:Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter;

    const/16 v0, 0xc

    invoke-direct {p2, v0, p1, p0}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0070

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p0, p1}, Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter$ViewHolder;-><init>(Lcom/deepalhome/launcher/wallpaper/FloatBallCenterAdapter;Landroid/view/View;)V

    return-object p2
.end method
