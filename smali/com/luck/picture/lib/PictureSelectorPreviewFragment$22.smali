.class public final Lcom/luck/picture/lib/PictureSelectorPreviewFragment$22;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$22;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrolled(IFI)V
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$22;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-le p2, p1, :cond_1

    iget p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->screenWidth:I

    div-int/lit8 p2, p2, 0x2

    if-ge p3, p2, :cond_0

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p3}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->notifySelectNumberStyle()V

    :cond_1
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 5

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$22;->this$0:Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iput p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->totalNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/TitleBar;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_5

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->notifySelectNumberStyle()V

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isHasMagicalEffect()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    iget-object v3, v1, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    invoke-static {v3}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$24;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$24;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;II)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getVideoRealSizeFromMedia(Lcom/luck/picture/lib/entity/LocalMedia;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$24;

    const/4 v4, 0x1

    invoke-direct {v3, p0, p1, v4}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$24;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;II)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getImageRealSizeFromMedia(Lcom/luck/picture/lib/entity/LocalMedia;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    invoke-virtual {v1, p1}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->getCurrentHolder(I)Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    move-result-object v1

    instance-of v3, v1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    if-eqz v3, :cond_2

    check-cast v1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    invoke-virtual {v1}, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->isPlaying$1()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, v1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;->ivPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    iget-object v2, v0, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, v0, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v0

    :cond_3
    iget-object v0, v1, Lcom/luck/picture/lib/widget/BottomNavBar;->tvImageEditor:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isHasMore:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0xb

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->loadMoreData()V

    :cond_5
    return-void
.end method
