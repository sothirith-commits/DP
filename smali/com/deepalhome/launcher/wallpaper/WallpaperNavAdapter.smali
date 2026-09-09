.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# instance fields
.field public isNight:Z

.field public final onItemClick:Lkotlin/jvm/functions/Function1;

.field public selectedPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity$setupNavigation$1;)V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$CategoryDiffCallback;

    invoke-direct {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$CategoryDiffCallback;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;->isNight:Z

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$ViewHolder;

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/ListAdapter;->mDiffer:Landroidx/recyclerview/widget/AsyncListDiffer;

    iget-object p0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getItem(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/Category;

    iget-object v0, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$ViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/Category;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$ViewHolder;->updateSelectionState(I)V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    iget-object v0, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$ViewHolder;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;

    const/16 v1, 0x10

    invoke-direct {p2, v1, p1, v0}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$ViewHolder;

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "payloads"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "payload_selection"

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "payload_ui_mode"

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$ViewHolder;->updateSelectionState(I)V

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

    const v0, 0x7f0e0117

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$ViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter$ViewHolder;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final setSelectedPosition(I)V
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;->selectedPosition:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;->selectedPosition:I

    const-string v1, "payload_selection"

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_1
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method
