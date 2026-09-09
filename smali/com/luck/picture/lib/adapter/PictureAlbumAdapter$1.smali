.class public final Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;

.field public final synthetic val$folder:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;Lcom/luck/picture/lib/style/SelectMainStyle;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$1;->val$folder:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILandroid/os/Parcelable;I)V
    .locals 0

    iput p4, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$1;->$r8$classId:I

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$1;->this$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$1;->val$folder:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    const/4 p1, 0x3

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$1;->val$folder:Ljava/lang/Object;

    iget-object v1, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$1;->this$0:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget p0, p0, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast v1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;

    iget-object p0, v1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->listener:Lcom/luck/picture/lib/PictureSelectorFragment$4;

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v4, v1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->tvCheck:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v5

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment$4;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {p0, v0, v5}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->confirmSelect(Lcom/luck/picture/lib/entity/LocalMedia;Z)I

    move-result v5

    if-nez v5, :cond_1

    iget-object v6, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v6, 0x7f010039

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    invoke-virtual {v4, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    const/4 p0, -0x1

    if-ne v5, p0, :cond_2

    goto :goto_1

    :cond_2
    if-nez v5, :cond_3

    iget-object p0, v1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isSelectZoomAnim:Z

    if-eqz p0, :cond_4

    iget-object p0, v1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->ivPicture:Landroid/widget/ImageView;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, p1, [F

    fill-array-data v5, :array_0

    const-string v6, "scaleX"

    invoke-static {p0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-string v6, "scaleY"

    new-array p1, p1, [F

    fill-array-data p1, :array_1

    invoke-static {p0, v6, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v5, p1, v3

    aput-object p0, p1, v2

    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p0, 0xfa

    invoke-virtual {v4, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_3
    if-ne v5, v2, :cond_4

    iget-object p0, v1, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isSelectZoomAnim:Z

    :cond_4
    :goto_0
    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->isSelected(Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/luck/picture/lib/adapter/holder/BaseRecyclerMediaHolder;->selectedMedia(Z)V

    :goto_1
    return-void

    :pswitch_0
    check-cast v0, Lcom/luck/picture/lib/style/SelectMainStyle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    iget-object p0, v1, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectedResult:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    iget-object p0, v1, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->dispatchTransformResult()V

    :cond_6
    return-void

    :pswitch_1
    check-cast v1, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

    iget-object p0, v1, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->onAlbumItemClickListener:Lcom/luck/picture/lib/PictureSelectorFragment$4;

    if-nez p0, :cond_7

    goto/16 :goto_5

    :cond_7
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment$4;->this$0:Lcom/luck/picture/lib/PictureSelectorFragment;

    iget-object v1, p1, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayCamera:Z

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    if-eqz v1, :cond_8

    iget-wide v4, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_3

    :cond_8
    move v1, v3

    :goto_3
    iput-boolean v1, p1, Lcom/luck/picture/lib/PictureSelectorFragment;->isDisplayCamera:Z

    iget-object v4, p1, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iput-boolean v1, v4, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isDisplayCamera:Z

    iget-object v1, p1, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/luck/picture/lib/widget/TitleBar;->setTitle(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v4, v1, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    iget-wide v5, v4, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz v1, :cond_a

    iget-wide v7, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    cmp-long v1, v7, v5

    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v1, v1, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mData:Ljava/util/ArrayList;

    iput-object v1, v4, Lcom/luck/picture/lib/entity/LocalMediaFolder;->data:Ljava/util/ArrayList;

    iget v1, p1, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    iput v1, v4, Lcom/luck/picture/lib/entity/LocalMediaFolder;->currentDataPage:I

    iget-object v1, p1, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    iget-boolean v1, v1, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isEnabledLoadMore:Z

    iput-boolean v1, v4, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isHasMore:Z

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    iget-boolean v1, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isHasMore:Z

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->setAdapterData(Ljava/util/ArrayList;)V

    iget p0, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->currentDataPage:I

    iput p0, p1, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    iget-object p0, p1, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    iget-boolean v1, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isHasMore:Z

    invoke-virtual {p0, v1}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setEnabledLoadMore(Z)V

    iget-object p0, p1, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_4

    :cond_9
    iput v2, p1, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    iget-object v1, p1, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mLoader:Lcom/luck/picture/lib/loader/LocalMediaLoader;

    iget-wide v5, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    iget v7, p1, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    iget-object v1, p1, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v8, v1, Lcom/luck/picture/lib/config/SelectorConfig;->pageSize:I

    new-instance v9, Lcom/luck/picture/lib/PictureSelectorFragment$7$2;

    invoke-direct {v9, v3, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$7$2;-><init>(ILjava/lang/Object;)V

    invoke-virtual/range {v4 .. v9}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->loadPageMediaData(JIILcom/luck/picture/lib/interfaces/OnQueryDataResultListener;)V

    goto :goto_4

    :cond_a
    iget-wide v1, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    cmp-long p0, v1, v5

    if-eqz p0, :cond_b

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->setAdapterData(Ljava/util/ArrayList;)V

    iget-object p0, p1, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_b
    :goto_4
    iget-object p0, p1, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    iget-object p0, p1, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-virtual {p0}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->dismiss()V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data
.end method
