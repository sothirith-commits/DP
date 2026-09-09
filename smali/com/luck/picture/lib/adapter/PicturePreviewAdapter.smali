.class public final Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field public mData:Ljava/util/List;

.field public final mHolderCache:Ljava/util/LinkedHashMap;

.field public onPreviewEventListener:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorProviders;->getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;-><init>(Lcom/luck/picture/lib/config/SelectorConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/luck/picture/lib/config/SelectorConfig;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->mHolderCache:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->mHolderCache:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->release()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getCurrentHolder(I)Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->mHolderCache:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->mData:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    iget-object v0, v0, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->mData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/luck/picture/lib/entity/LocalMedia;

    iget-object p0, p0, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    invoke-static {p0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    check-cast p1, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->onPreviewEventListener:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    iput-object v0, p1, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->mPreviewEventListener:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    :goto_0
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->mHolderCache:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->bindData(Lcom/luck/picture/lib/entity/LocalMedia;I)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    const/4 p0, 0x2

    if-ne p2, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    const p0, 0x7f0e00e1

    invoke-static {p1, p2, p0}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->generate(Landroid/view/ViewGroup;II)Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    if-ne p2, p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    const p0, 0x7f0e00de

    invoke-static {p1, p2, p0}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->generate(Landroid/view/ViewGroup;II)Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    const p0, 0x7f0e00e0

    invoke-static {p1, p2, p0}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->generate(Landroid/view/ViewGroup;II)Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->onViewAttachedToWindow$1()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->onViewDetachedFromWindow$1()V

    return-void
.end method
