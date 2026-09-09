.class public final Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public final allowMultiple:Z

.field public final directoryStack:Ljava/util/ArrayList;

.field public files:Ljava/util/List;

.field public final onItemClick:Lkotlin/jvm/functions/Function1;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final selectedFiles:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Ljava/util/Set;ZLcom/deepalhome/launcher/wallpaper/FileBrowserActivity$setupRecyclerView$1;)V
    .locals 1

    const-string v0, "supportedExtensions"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-boolean p2, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->allowMultiple:Z

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->files:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->selectedFiles:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->directoryStack:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->files:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder;

    const-string v0, "holder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->files:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->selectedFiles:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "file"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    iget-object v1, p1, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder;->this$0:Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;

    iget-object v2, p1, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder;->iconIv:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder;->sizeTv:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    const p0, 0x7f08013e

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 p0, 0x8

    invoke-virtual {v3, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_0
    const v0, 0x7f080141

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-string v2, "MB"

    const-string v7, "GB"

    const-string v8, "B"

    const-string v9, "KB"

    filled-new-array {v8, v9, v2, v7}, [Ljava/lang/String;

    move-result-object v2

    long-to-double v7, v5

    move v9, v0

    :goto_0
    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    cmpl-double v10, v7, v10

    if-ltz v10, :cond_1

    const/4 v10, 0x3

    if-ge v9, v10, :cond_1

    const/16 v10, 0x400

    int-to-double v10, v10

    div-double/2addr v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    if-nez v9, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    long-to-int v5, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v2, v2, v9

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aget-object v2, v2, v9

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v5, "%.1f %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v4, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1, p2}, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(ZLcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;Ljava/io/File;)V

    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_2
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p1, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    const/16 v0, 0xb

    invoke-direct {p1, v0, v1, p2}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    const v0, 0x7f0e006f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p0, p1}, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter$ViewHolder;-><init>(Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    :cond_0
    return-void
.end method
