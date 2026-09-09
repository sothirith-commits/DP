.class public final Lcom/deepalhome/launcher/floating/IconLibraryAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# instance fields
.field public currentIconPath:Ljava/lang/String;

.field public final onIconClick:Lkotlin/jvm/functions/Function1;

.field public final onIconLongClick:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$setupRecyclerView$1;Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$setupRecyclerView$2;)V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$IconDiffCallback;

    invoke-direct {v0}, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$IconDiffCallback;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;->onIconClick:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;->onIconLongClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static isSelected(Lcom/deepalhome/launcher/floating/CachedIcon;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/floating/CachedIcon;->getFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    :goto_2
    return p0
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    move-object v4, p1

    check-cast v4, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;

    const-string p1, "holder"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "getItem(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lcom/deepalhome/launcher/floating/CachedIcon;

    iget p1, v4, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;->loadToken:I

    add-int/lit8 v5, p1, 0x1

    iput v5, v4, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;->loadToken:I

    const/high16 p1, 0x42900000    # 72.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v3

    sget-object p1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p1

    iget-object p2, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p1, :cond_0

    const p1, 0x7f06003a

    goto :goto_0

    :cond_0
    const p1, 0x7f060039

    :goto_0
    invoke-virtual {p2, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object p2, v4, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p2, p1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/floating/CachedIcon;->isGif()Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    iget-object v2, v4, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;->gifBadge:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v4, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;->this$0:Lcom/deepalhome/launcher/floating/IconLibraryAdapter;

    iget-object v2, p1, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;->currentIconPath:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;->isSelected(Lcom/deepalhome/launcher/floating/CachedIcon;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    iget-object v1, v4, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;->currentIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v4, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;->currentBoundIcon:Lcom/deepalhome/launcher/floating/CachedIcon;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/deepalhome/launcher/floating/CachedIcon;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/floating/CachedIcon;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v4, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;->currentBoundIcon:Lcom/deepalhome/launcher/floating/CachedIcon;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/deepalhome/launcher/floating/CachedIcon;->getLastModified()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/deepalhome/launcher/floating/CachedIcon;->getLastModified()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-nez v0, :cond_4

    goto :goto_6

    :cond_4
    iput-object p0, v4, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;->currentBoundIcon:Lcom/deepalhome/launcher/floating/CachedIcon;

    iget-object v0, v4, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;->iconIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/floating/CachedIcon;->isBuiltin()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/deepalhome/launcher/floating/CachedIcon;->getResId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    :cond_5
    const v1, 0x7f08013b

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/deepalhome/launcher/floating/CachedIcon;->getFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_4

    :cond_7
    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_8

    const/4 v0, -0x2

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v7, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/DialogUtil$$ExternalSyntheticLambda6;-><init>(Lcom/deepalhome/launcher/floating/CachedIcon;Ljava/lang/String;ILcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_8
    :goto_5
    new-instance v0, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p0}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda7;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p0}, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_6
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "payloads"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "selection"

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "getItem(...)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lcom/deepalhome/launcher/floating/CachedIcon;

    iget-object p2, p1, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;->this$0:Lcom/deepalhome/launcher/floating/IconLibraryAdapter;

    iget-object p2, p2, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;->currentIconPath:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;->isSelected(Lcom/deepalhome/launcher/floating/CachedIcon;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    iget-object p1, p1, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;->currentIndicator:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    :goto_1
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

    const v0, 0x7f0e0071

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p0, p1}, Lcom/deepalhome/launcher/floating/IconLibraryAdapter$ViewHolder;-><init>(Lcom/deepalhome/launcher/floating/IconLibraryAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final setCurrentIconPath(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;->currentIconPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    iput-object p1, p0, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;->currentIconPath:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    const-string v2, "getCurrentList(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/floating/CachedIcon;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5, v0}, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;->isSelected(Lcom/deepalhome/launcher/floating/CachedIcon;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v4, v6

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/floating/CachedIcon;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, p1}, Lcom/deepalhome/launcher/floating/IconLibraryAdapter;->isSelected(Lcom/deepalhome/launcher/floating/CachedIcon;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v6, v3

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    const-string p1, "selection"

    if-ltz v4, :cond_6

    invoke-virtual {p0, v4, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_6
    if-ltz v6, :cond_7

    invoke-virtual {p0, v6, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_7
    return-void
.end method
