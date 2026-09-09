.class public final Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public albumList:Ljava/util/ArrayList;

.field public onAlbumItemClickListener:Lcom/luck/picture/lib/PictureSelectorFragment$4;

.field public final selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/config/SelectorConfig;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-void
.end method


# virtual methods
.method public final getAlbumList()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->albumList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->albumList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    check-cast p1, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->albumList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    iget-object v3, p1, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->tvSelectTag:Landroid/widget/TextView;

    iget-boolean v4, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isSelectTag:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v3, v3, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-wide v6, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    iget-wide v8, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    iget-object v3, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstMimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->ivFirstImage:Landroid/widget/ImageView;

    const v4, 0x7f080207

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1303a2

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->tvFolderName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v0, v2}, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$1;-><init>(Ljava/lang/Object;ILandroid/os/Parcelable;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e00d0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b01ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->ivFirstImage:Landroid/widget/ImageView;

    const v0, 0x7f0b0645

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->tvFolderName:Landroid/widget/TextView;

    const v0, 0x7f0b0647

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p2, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$ViewHolder;->tvSelectTag:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/luck/picture/lib/style/AlbumWindowStyle;

    invoke-direct {p0}, Lcom/luck/picture/lib/style/AlbumWindowStyle;-><init>()V

    return-object p2
.end method
