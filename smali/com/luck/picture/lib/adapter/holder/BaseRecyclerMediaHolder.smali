.class public abstract Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final btnCheck:Landroid/view/View;

.field public final defaultColorFilter:Landroid/graphics/ColorFilter;

.field public final isHandleMask:Z

.field public final ivPicture:Landroid/widget/ImageView;

.field public listener:Lcom/luck/picture/lib/PictureSelectorFragment$4;

.field public final mContext:Landroid/content/Context;

.field public final selectColorFilter:Landroid/graphics/ColorFilter;

.field public selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

.field public final tvCheck:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/luck/picture/lib/config/SelectorConfig;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->mContext:Landroid/content/Context;

    const v1, 0x7f060348

    invoke-static {v0, v1}, Lcom/luck/picture/lib/utils/StyleUtils;->getColorFilter(Landroid/content/Context;I)Landroid/graphics/ColorFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->defaultColorFilter:Landroid/graphics/ColorFilter;

    const v1, 0x7f060352

    invoke-static {v0, v1}, Lcom/luck/picture/lib/utils/StyleUtils;->getColorFilter(Landroid/content/Context;I)Landroid/graphics/ColorFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectColorFilter:Landroid/graphics/ColorFilter;

    const v1, 0x7f06036c

    invoke-static {v0, v1}, Lcom/luck/picture/lib/utils/StyleUtils;->getColorFilter(Landroid/content/Context;I)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/luck/picture/lib/style/SelectMainStyle;

    invoke-direct {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;-><init>()V

    const v0, 0x7f0b0317

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->ivPicture:Landroid/widget/ImageView;

    const v0, 0x7f0b0614

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->tvCheck:Landroid/widget/TextView;

    const v1, 0x7f0b00dc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->btnCheck:Landroid/view/View;

    iget v1, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget p1, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    move v1, p2

    :cond_1
    iput-boolean v1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->isHandleMask:Z

    return-void
.end method


# virtual methods
.method public bindData(Lcom/luck/picture/lib/entity/LocalMedia;I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v0

    iput v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->position:I

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->isSelected(Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectedMedia(Z)V

    iget-boolean v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->isHandleMask:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->isEditorImage()Z

    invoke-virtual {p0}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->loadCover$1()V

    new-instance v0, Landroidx/appcompat/widget/Toolbar$4;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/widget/Toolbar$4;-><init>(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->tvCheck:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$1;-><init>(Ljava/lang/Object;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->btnCheck:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/luck/picture/lib/adapter/holder/PreviewImageHolder$2;

    invoke-direct {v1, p0, p2}, Lcom/luck/picture/lib/adapter/holder/PreviewImageHolder$2;-><init>(Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder$4;-><init>(Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;Lcom/luck/picture/lib/entity/LocalMedia;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final isSelected(Lcom/luck/picture/lib/entity/LocalMedia;)Z
    .locals 2

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->compareLocalMedia:Lcom/luck/picture/lib/entity/LocalMedia;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isEditorImage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/luck/picture/lib/entity/LocalMedia;->cutPath:Ljava/lang/String;

    iput-object v1, p1, Lcom/luck/picture/lib/entity/LocalMedia;->cutPath:Ljava/lang/String;

    iget-object v1, v0, Lcom/luck/picture/lib/entity/LocalMedia;->cutPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p1, Lcom/luck/picture/lib/entity/LocalMedia;->isCut:Z

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isEditorImage()Z

    move-result v0

    iput-boolean v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->isEditorImage:Z

    :cond_0
    return p0
.end method

.method public loadCover$1()V
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final selectedMedia(Z)V
    .locals 2

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->tvCheck:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectColorFilter:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->defaultColorFilter:Landroid/graphics/ColorFilter;

    :goto_0
    iget-object p0, p0, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->ivPicture:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
