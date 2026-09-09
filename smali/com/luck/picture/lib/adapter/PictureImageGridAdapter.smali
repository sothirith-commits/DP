.class public final Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public isDisplayCamera:Z

.field public listener:Lcom/luck/picture/lib/PictureSelectorFragment$4;

.field public final mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

.field public mData:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mData:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isDisplayCamera:Z

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    :cond_0
    return p0
.end method

.method public final getItemViewType(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isDisplayCamera:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/luck/picture/lib/entity/LocalMedia;

    iget-object p0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    invoke-static {p0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    invoke-static {p0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x2

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    check-cast p1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;

    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Landroidx/appcompat/widget/Toolbar$4;

    const/4 v0, 0x6

    invoke-direct {p2, v0, p0}, Landroidx/appcompat/widget/Toolbar$4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isDisplayCamera:Z

    if-eqz v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {p1, v0, p2}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->bindData(Lcom/luck/picture/lib/entity/LocalMedia;I)V

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->listener:Lcom/luck/picture/lib/PictureSelectorFragment$4;

    iput-object p0, p1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->listener:Lcom/luck/picture/lib/PictureSelectorFragment$4;

    :goto_0
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq p2, v1, :cond_2

    if-eq p2, v3, :cond_1

    if-eq p2, v2, :cond_0

    const v4, 0x7f0e00dc

    goto :goto_0

    :cond_0
    const v4, 0x7f0e00da

    goto :goto_0

    :cond_1
    const v4, 0x7f0e00dd

    goto :goto_0

    :cond_2
    const v4, 0x7f0e00db

    :goto_0
    sget v5, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->$r8$clinit:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v4, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eq p2, v1, :cond_5

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    if-eq p2, v3, :cond_4

    if-eq p2, v2, :cond_3

    new-instance p2, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;

    invoke-direct {p2, p1, p0}, Lcom/luck/picture/lib/adapter/holder/ImageViewHolder;-><init>(Landroid/view/View;Lcom/luck/picture/lib/config/SelectorConfig;)V

    goto :goto_1

    :cond_3
    new-instance p2, Lcom/luck/picture/lib/adapter/holder/AudioViewHolder;

    invoke-direct {p2, p1, p0, v0}, Lcom/luck/picture/lib/adapter/holder/AudioViewHolder;-><init>(Landroid/view/View;Lcom/luck/picture/lib/config/SelectorConfig;I)V

    goto :goto_1

    :cond_4
    new-instance p2, Lcom/luck/picture/lib/adapter/holder/AudioViewHolder;

    invoke-direct {p2, p1, p0, v1}, Lcom/luck/picture/lib/adapter/holder/AudioViewHolder;-><init>(Landroid/view/View;Lcom/luck/picture/lib/config/SelectorConfig;I)V

    goto :goto_1

    :cond_5
    new-instance p2, Lcom/luck/picture/lib/adapter/holder/CameraViewHolder;

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p0, 0x7f0b0613

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorProviders;->getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iput-object v0, p2, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/luck/picture/lib/style/SelectMainStyle;

    invoke-direct {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/StyleUtils;->checkTextValidity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v0, p2, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    if-ne v0, v3, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1303e1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    return-object p2
.end method
