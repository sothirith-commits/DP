.class public Lcom/luck/picture/lib/PictureSelectorFragment;
.super Lcom/luck/picture/lib/basic/PictureCommonFragment;
.source "SourceFile"

# interfaces
.implements Lcom/luck/picture/lib/interfaces/OnRecyclerViewPreloadMoreListener;


# static fields
.field public static final LOCK:Ljava/lang/Object;


# instance fields
.field public albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

.field public allFolderSize:I

.field public bottomNarBar:Lcom/luck/picture/lib/widget/BottomNavBar;

.field public completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

.field public currentPosition:I

.field public intervalClickTime:J

.field public isCameraCallback:Z

.field public isDisplayCamera:Z

.field public isMemoryRecycling:Z

.field public mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

.field public mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

.field public titleBar:Lcom/luck/picture/lib/widget/TitleBar;

.field public tvCurrentDataTime:Landroid/widget/TextView;

.field public tvDataEmpty:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/luck/picture/lib/PictureSelectorFragment;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->intervalClickTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->currentPosition:I

    return-void
.end method

.method public static access$3200(Lcom/luck/picture/lib/PictureSelectorFragment;IZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "PictureSelectorPreviewFragment"

    invoke-static {v3, v4}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->checkFragmentNonExits(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v6}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v6, v6, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v6, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v6, v6, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    if-eqz v6, :cond_1

    iget v7, v6, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    iget-wide v8, v6, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    move v6, v7

    move-wide v7, v8

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/luck/picture/lib/entity/LocalMedia;

    iget-wide v7, v7, Lcom/luck/picture/lib/entity/LocalMedia;->bucketId:J

    goto :goto_0

    :cond_2
    const-wide/16 v7, -0x1

    :goto_0
    if-nez v1, :cond_f

    iget-object v9, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v10, v9, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-eqz v10, :cond_f

    iget-object v10, v0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    iget-boolean v9, v9, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    if-eqz v9, :cond_3

    move v9, v3

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/luck/picture/lib/utils/DensityUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v9

    :goto_1
    sget-object v11, Lcom/luck/picture/lib/magical/BuildRecycleItemViewParams;->viewParams:Ljava/util/ArrayList;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    instance-of v12, v10, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v12, :cond_4

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    goto :goto_2

    :cond_4
    instance-of v13, v10, Landroid/widget/ListView;

    if-eqz v13, :cond_e

    move-object v13, v10

    check-cast v13, Landroid/widget/ListView;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    :goto_2
    move v14, v3

    :goto_3
    if-ge v14, v13, :cond_6

    invoke-virtual {v10, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    if-nez v15, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/2addr v14, v2

    goto :goto_3

    :cond_6
    if-eqz v12, :cond_8

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v10, :cond_7

    goto/16 :goto_a

    :cond_7
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v12

    invoke-virtual {v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v13

    invoke-virtual {v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v10

    goto :goto_5

    :cond_8
    check-cast v10, Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    if-nez v12, :cond_9

    goto/16 :goto_a

    :cond_9
    invoke-interface {v12}, Landroid/widget/Adapter;->getCount()I

    move-result v12

    invoke-virtual {v10}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v13

    invoke-virtual {v10}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v10

    :goto_5
    if-le v10, v12, :cond_a

    add-int/lit8 v10, v12, -0x1

    :cond_a
    const/4 v14, 0x0

    if-lez v13, :cond_b

    :goto_6
    if-lt v13, v2, :cond_b

    invoke-virtual {v11, v3, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    :cond_b
    if-ge v10, v12, :cond_c

    sub-int/2addr v12, v2

    sub-int/2addr v12, v10

    :goto_7
    if-lt v12, v2, :cond_c

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, -0x1

    goto :goto_7

    :cond_c
    sget-object v10, Lcom/luck/picture/lib/magical/BuildRecycleItemViewParams;->viewParams:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move v12, v3

    :goto_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_f

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    new-instance v14, Lcom/luck/picture/lib/magical/ViewParams;

    invoke-direct {v14}, Lcom/luck/picture/lib/magical/ViewParams;-><init>()V

    if-nez v13, :cond_d

    iput v3, v14, Lcom/luck/picture/lib/magical/ViewParams;->left:I

    iput v3, v14, Lcom/luck/picture/lib/magical/ViewParams;->top:I

    iput v3, v14, Lcom/luck/picture/lib/magical/ViewParams;->width:I

    iput v3, v14, Lcom/luck/picture/lib/magical/ViewParams;->height:I

    goto :goto_9

    :cond_d
    const/4 v15, 0x2

    new-array v15, v15, [I

    invoke-virtual {v13, v15}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v15, v3

    iput v2, v14, Lcom/luck/picture/lib/magical/ViewParams;->left:I

    const/4 v2, 0x1

    aget v15, v15, v2

    sub-int/2addr v15, v9

    iput v15, v14, Lcom/luck/picture/lib/magical/ViewParams;->top:I

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v14, Lcom/luck/picture/lib/magical/ViewParams;->width:I

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v14, Lcom/luck/picture/lib/magical/ViewParams;->height:I

    :goto_9
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    add-int/2addr v12, v2

    goto :goto_8

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_a
    iget-object v2, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->checkFragmentNonExits(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;

    invoke-direct {v2}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v3, v0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    invoke-virtual {v3}, Lcom/luck/picture/lib/widget/TitleBar;->getTitleText()Ljava/lang/String;

    move-result-object v3

    iget-object v9, v0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-boolean v9, v9, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isDisplayCamera:Z

    iget v10, v0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    iput v10, v2, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    iput-wide v7, v2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mBucketId:J

    iput-object v5, v2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    iput v6, v2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->totalNum:I

    move/from16 v5, p1

    iput v5, v2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    iput-object v3, v2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->currentAlbum:Ljava/lang/String;

    iput-boolean v9, v2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isShowCamera:Z

    iput-boolean v1, v2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v4, v2}, Lcom/luck/picture/lib/basic/FragmentInjectManager;->injectFragment(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lcom/luck/picture/lib/basic/PictureCommonFragment;)V

    :cond_10
    return-void
.end method


# virtual methods
.method public final beginLoadData()V
    .locals 4

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onPermissionExplainEvent()V

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz v1, :cond_2

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreloadFirst:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f13039c

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1303a1

    goto :goto_0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/widget/TitleBar;->setTitle(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/widget/TitleBar;->setTitle(Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    invoke-virtual {v1}, Lcom/luck/picture/lib/widget/TitleBar;->getTitleText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderName:Ljava/lang/String;

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object v0, v1, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    iget-wide v0, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureSelectorFragment;->loadFirstPageMediaData(J)V

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mLoader:Lcom/luck/picture/lib/loader/LocalMediaLoader;

    new-instance v2, Lcom/umeng/commonsdk/statistics/common/a$a;

    invoke-direct {v2, p0, v0}, Lcom/umeng/commonsdk/statistics/common/a$a;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->loadAllAlbum(Lcom/umeng/commonsdk/statistics/common/a$a;)V

    return-void
.end method

.method public final dispatchCameraMediaResult(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 10

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    iget-object v1, v0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mAdapter:Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

    invoke-virtual {v1}, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->getAlbumList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->getFolder()Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v0

    iget v0, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureSelectorFragment;->isAddSameImp(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v0, v0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isCameraCallback:Z

    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    invoke-virtual {p0, p1, v2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->confirmSelect(Lcom/luck/picture/lib/entity/LocalMedia;Z)I

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v3, v3, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayCamera:Z

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v3, v3, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayCamera:Z

    iget-object v4, v0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    iget-object v0, v0, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mAdapter:Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->getAlbumList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    iget-object v3, v3, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mAdapter:Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

    invoke-virtual {v3}, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->getAlbumList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-wide/16 v4, -0x1

    if-nez v3, :cond_4

    new-instance v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    iget-object v6, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v6, v6, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v6, v6, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    const v6, 0x7f13039c

    :goto_1
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    const v6, 0x7f1303a1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v6, v6, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    :goto_2
    iput-object v6, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderName:Ljava/lang/String;

    const-string v6, ""

    iput-object v6, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    iput-wide v4, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-virtual {v3}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->getFolder()Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v3

    :goto_3
    iget-object v6, p1, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    iput-object v6, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    iget-object v6, p1, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    iput-object v6, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstMimeType:Ljava/lang/String;

    iget-object v6, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v6, v6, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mData:Ljava/util/ArrayList;

    iput-object v6, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->data:Ljava/util/ArrayList;

    iput-wide v4, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    iget v6, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    invoke-virtual {p0, v6}, Lcom/luck/picture/lib/PictureSelectorFragment;->isAddSameImp(I)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    goto :goto_4

    :cond_5
    iget v6, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    add-int/2addr v6, v1

    :goto_4
    iput v6, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    iget-object v6, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v7, v6, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    if-eqz v7, :cond_6

    iget v7, v7, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    if-nez v7, :cond_7

    :cond_6
    iput-object v3, v6, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    :cond_7
    move v6, v2

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-virtual {v7}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p1, Lcom/luck/picture/lib/entity/LocalMedia;->parentFolderName:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    :goto_6
    if-nez v7, :cond_a

    new-instance v7, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v7}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v6, p1, Lcom/luck/picture/lib/entity/LocalMedia;->parentFolderName:Ljava/lang/String;

    iput-object v6, v7, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderName:Ljava/lang/String;

    iget-wide v8, v7, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    cmp-long v4, v8, v4

    if-eqz v4, :cond_b

    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-nez v4, :cond_c

    :cond_b
    iget-wide v4, p1, Lcom/luck/picture/lib/entity/LocalMedia;->bucketId:J

    iput-wide v4, v7, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    :cond_c
    iget-object v4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v4, v4, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz v4, :cond_d

    iput-boolean v1, v7, Lcom/luck/picture/lib/entity/LocalMediaFolder;->isHasMore:Z

    goto :goto_7

    :cond_d
    iget v4, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    invoke-virtual {p0, v4}, Lcom/luck/picture/lib/PictureSelectorFragment;->isAddSameImp(I)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/SelectorConfig;->outPutCameraDir:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/SelectorConfig;->outPutAudioDir:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    :cond_e
    invoke-virtual {v7}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_f
    :goto_7
    iget v3, v3, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    invoke-virtual {p0, v3}, Lcom/luck/picture/lib/PictureSelectorFragment;->isAddSameImp(I)Z

    move-result v3

    if-eqz v3, :cond_10

    iget v1, v7, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    goto :goto_8

    :cond_10
    iget v3, v7, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    add-int/2addr v1, v3

    :goto_8
    iput v1, v7, Lcom/luck/picture/lib/entity/LocalMediaFolder;->folderTotalNum:I

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    iput-object v1, v7, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstImagePath:Ljava/lang/String;

    iget-object p1, p1, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    iput-object p1, v7, Lcom/luck/picture/lib/entity/LocalMediaFolder;->firstMimeType:Ljava/lang/String;

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->bindAlbumData(Ljava/util/List;)V

    iput v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->allFolderSize:I

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object p1, p1, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_11

    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->showDataNull()V

    goto :goto_9

    :cond_11
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvDataEmpty:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_12

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvDataEmpty:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    :goto_9
    return-void
.end method

.method public final getResourceId()I
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    const p0, 0x7f0e00d9

    return p0
.end method

.method public final handleFirstPageMedia(Ljava/util/ArrayList;Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setEnabledLoadMore(Z)V

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    iget-boolean p2, p2, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isEnabledLoadMore:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->onRecyclerViewPreloadMore()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->setAdapterData(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public final handlePermissionSettingResult([Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onPermissionExplainEvent()V

    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    aget-object v0, p1, v1

    sget-object v2, Lcom/luck/picture/lib/permissions/PermissionConfig;->CAMERA:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->checkSelfPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->openSelectedCamera()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->beginLoadData()V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1303a0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/luck/picture/lib/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1303b7

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/luck/picture/lib/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onKeyBackFragmentFinish()V

    :goto_1
    new-array p0, v1, [Ljava/lang/String;

    sput-object p0, Lcom/luck/picture/lib/permissions/PermissionConfig;->CURRENT_REQUEST_PERMISSION:[Ljava/lang/String;

    return-void
.end method

.method public final isAddSameImp(I)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->allFolderSize:I

    if-lez p0, :cond_1

    if-ge p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final loadFirstPageMediaData(J)V
    .locals 7

    const/4 v0, 0x1

    iput v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setEnabledLoadMore(Z)V

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mLoader:Lcom/luck/picture/lib/loader/LocalMediaLoader;

    iget v4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->pageSize:I

    mul-int v5, v4, v0

    new-instance v6, Lcom/luck/picture/lib/PictureSelectorFragment$12;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/luck/picture/lib/PictureSelectorFragment$12;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;I)V

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->loadPageMediaData(JIILcom/luck/picture/lib/interfaces/OnQueryDataResultListener;)V

    return-void
.end method

.method public final loadMoreMediaData()V
    .locals 9

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    iget-boolean v0, v0, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->isEnabledLoadMore:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v0, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    if-eqz v1, :cond_0

    iget-wide v1, v1, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    :goto_0
    move-wide v4, v1

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mLoader:Lcom/luck/picture/lib/loader/LocalMediaLoader;

    iget v6, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v7, v0, Lcom/luck/picture/lib/config/SelectorConfig;->pageSize:I

    new-instance v8, Lcom/luck/picture/lib/PictureSelectorFragment$12;

    const/4 v0, 0x1

    invoke-direct {v8, p0, v0}, Lcom/luck/picture/lib/PictureSelectorFragment$12;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;I)V

    invoke-virtual/range {v3 .. v8}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->loadPageMediaData(JIILcom/luck/picture/lib/interfaces/OnQueryDataResultListener;)V

    :cond_1
    return-void
.end method

.method public final onCheckOriginalChange()V
    .locals 1

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/BottomNavBar;

    iget-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    iget-object p0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isCheckOriginalImage:Z

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public final onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onFixedSelectedChange(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget p1, p1, Lcom/luck/picture/lib/entity/LocalMedia;->position:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final onFragmentResume()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->setRootViewKeyListener(Landroid/view/View;)V

    return-void
.end method

.method public final onRecyclerViewPreloadMore()V
    .locals 4

    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isMemoryRecycling:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorFragment$15;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/luck/picture/lib/PictureSelectorFragment$15;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;I)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->loadMoreMediaData()V

    :goto_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "com.luck.picture.lib.all_folder_size"

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->allFolderSize:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.luck.picture.lib.current_page"

    iget v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    if-eqz v0, :cond_0

    const-string v1, "com.luck.picture.lib.current_preview_position"

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isDisplayCamera:Z

    const-string v1, "com.luck.picture.lib.display_camera"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v0, v0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->dataSource:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mAdapter:Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->getAlbumList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->albumDataSource:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-void
.end method

.method public final onSelectedChange(Lcom/luck/picture/lib/entity/LocalMedia;Z)V
    .locals 2

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/BottomNavBar;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/BottomNavBar;->setSelectedChange()V

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setSelectedChange(Z)V

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget p1, p1, Lcom/luck/picture/lib/entity/LocalMedia;->position:I

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/luck/picture/lib/style/SelectMainStyle;

    invoke-direct {p0}, Lcom/luck/picture/lib/style/SelectMainStyle;-><init>()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-eqz p2, :cond_0

    const-string v0, "com.luck.picture.lib.all_folder_size"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->allFolderSize:I

    const-string v0, "com.luck.picture.lib.current_page"

    iget v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    const-string v0, "com.luck.picture.lib.current_preview_position"

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->currentPosition:I

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->currentPosition:I

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayCamera:Z

    const-string v1, "com.luck.picture.lib.display_camera"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isDisplayCamera:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayCamera:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isDisplayCamera:Z

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isMemoryRecycling:Z

    const p2, 0x7f0b0642

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvDataEmpty:Landroid/widget/TextView;

    const p2, 0x7f0b0480

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/widget/CompleteSelectView;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    const p2, 0x7f0b05e8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/widget/TitleBar;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    const p2, 0x7f0b00d4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/widget/BottomNavBar;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/BottomNavBar;

    const p2, 0x7f0b0640

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvCurrentDataTime:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz p2, :cond_2

    new-instance p2, Lcom/luck/picture/lib/loader/LocalMediaLoader;

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v4, 0x1

    invoke-direct {p2, v2, v3, v4}, Lcom/luck/picture/lib/loader/LocalMediaLoader;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;I)V

    goto :goto_2

    :cond_2
    new-instance p2, Lcom/luck/picture/lib/loader/LocalMediaLoader;

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    const/4 v4, 0x0

    invoke-direct {p2, v2, v3, v4}, Lcom/luck/picture/lib/loader/LocalMediaLoader;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;I)V

    :goto_2
    iput-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mLoader:Lcom/luck/picture/lib/loader/LocalMediaLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    new-instance v3, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-direct {v3, p2, v2}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V

    iput-object v3, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    new-instance p2, Lcom/luck/picture/lib/PictureSelectorFragment$4;

    invoke-direct {p2, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$4;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    iput-object p2, v3, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->windowStatusListener:Lcom/luck/picture/lib/PictureSelectorFragment$4;

    new-instance p2, Lcom/luck/picture/lib/PictureSelectorFragment$4;

    invoke-direct {p2, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$4;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    iget-object v2, v3, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->mAdapter:Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;

    iput-object p2, v2, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter;->onAlbumItemClickListener:Lcom/luck/picture/lib/PictureSelectorFragment$4;

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/luck/picture/lib/style/TitleBarStyle;

    invoke-direct {p2}, Lcom/luck/picture/lib/style/TitleBarStyle;-><init>()V

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    invoke-virtual {p2}, Lcom/luck/picture/lib/widget/TitleBar;->setTitleBarStyle()V

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    new-instance v2, Lcom/luck/picture/lib/PictureSelectorFragment$3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/luck/picture/lib/PictureSelectorFragment$3;-><init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;I)V

    invoke-virtual {p2, v2}, Lcom/luck/picture/lib/widget/TitleBar;->setOnTitleBarListener(Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;)V

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    invoke-virtual {p2}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setCompleteSelectViewStyle()V

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setSelectedChange(Z)V

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/luck/picture/lib/style/SelectMainStyle;

    invoke-direct {p2}, Lcom/luck/picture/lib/style/SelectMainStyle;-><init>()V

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    new-instance v2, Landroidx/appcompat/widget/Toolbar$4;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0}, Landroidx/appcompat/widget/Toolbar$4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0b04a5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/luck/picture/lib/style/SelectMainStyle;

    invoke-direct {p2}, Lcom/luck/picture/lib/style/SelectMainStyle;-><init>()V

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06035c

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->imageSpanCount:I

    if-gtz p2, :cond_3

    const/4 p2, 0x4

    :cond_3
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance v3, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p1, v4}, Lcom/luck/picture/lib/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    invoke-direct {v3, p2, p1}, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;-><init>(II)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_4
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    invoke-direct {v2, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    iput-boolean v0, p1, Landroidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_5
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    const/4 p2, 0x2

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setReachBottomRow(I)V

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p1, p0}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setOnRecyclerViewPreloadListener(Lcom/luck/picture/lib/interfaces/OnRecyclerViewPreloadMoreListener;)V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    :goto_3
    new-instance p1, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {p1, v2, v3}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;)V

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-boolean v2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isDisplayCamera:Z

    iput-boolean v2, p1, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isDisplayCamera:Z

    iget-object v2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/SelectorConfig;->animationMode:I

    if-eq v2, v1, :cond_8

    if-eq v2, p2, :cond_7

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_4

    :cond_7
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance v2, Lcom/luck/picture/lib/animators/AlphaInAnimationAdapter;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/luck/picture/lib/animators/AlphaInAnimationAdapter;-><init>(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;I)V

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_4

    :cond_8
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance v2, Lcom/luck/picture/lib/animators/AlphaInAnimationAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/luck/picture/lib/animators/AlphaInAnimationAdapter;-><init>(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;I)V

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_4
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    new-instance p2, Lcom/luck/picture/lib/PictureSelectorFragment$4;

    invoke-direct {p2, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$4;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    iput-object p2, p1, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->listener:Lcom/luck/picture/lib/PictureSelectorFragment$4;

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance p2, Lcom/luck/picture/lib/PictureSelectorFragment$4;

    invoke-direct {p2, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$4;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setOnRecyclerViewScrollStateListener(Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollStateListener;)V

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance p2, Lcom/luck/picture/lib/PictureSelectorFragment$4;

    invoke-direct {p2, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$4;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;)V

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/widget/RecyclerPreloadView;->setOnRecyclerViewScrollListener(Lcom/luck/picture/lib/interfaces/OnRecyclerViewScrollListener;)V

    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/BottomNavBar;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/BottomNavBar;->setBottomNavBarStyle()V

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/BottomNavBar;

    new-instance p2, Lcom/luck/picture/lib/PictureSelectorFragment$8;

    const/4 v2, 0x0

    invoke-direct {p2, p0, v2}, Lcom/luck/picture/lib/PictureSelectorFragment$8;-><init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;I)V

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/widget/BottomNavBar;->setOnBottomNavBarListener(Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;)V

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/BottomNavBar;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/BottomNavBar;->setSelectedChange()V

    iget-boolean p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isMemoryRecycling:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-boolean p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isDisplayCamera:Z

    iput-boolean p2, p1, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isDisplayCamera:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->enterAnimDuration:J

    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->albumDataSource:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto/16 :goto_6

    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_c

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    if-eqz p2, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iput-object p2, v0, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    :goto_5
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->titleBar:Lcom/luck/picture/lib/widget/TitleBar;

    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/widget/TitleBar;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->albumListPopWindow:Lcom/luck/picture/lib/dialog/AlbumListPopWindow;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/dialog/AlbumListPopWindow;->bindAlbumData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz p1, :cond_b

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->dataSource:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v1}, Lcom/luck/picture/lib/PictureSelectorFragment;->handleFirstPageMedia(Ljava/util/ArrayList;Z)V

    goto :goto_6

    :cond_b
    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getData()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->setAdapterData(Ljava/util/ArrayList;)V

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->showDataNull()V

    goto :goto_6

    :cond_d
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-boolean p2, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->isDisplayCamera:Z

    iput-boolean p2, p1, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->isDisplayCamera:Z

    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/luck/picture/lib/permissions/PermissionChecker;->isCheckReadStorage(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->beginLoadData()V

    goto :goto_6

    :cond_e
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    invoke-static {p1, p2}, Lcom/luck/picture/lib/permissions/PermissionConfig;->getReadPermissionArray(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onPermissionExplainEvent()V

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/luck/picture/lib/permissions/PermissionChecker;->getInstance()Lcom/luck/picture/lib/permissions/PermissionChecker;

    move-result-object p2

    new-instance v0, Landroidx/cardview/widget/CardView$1;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p0, p1}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, v0}, Lcom/luck/picture/lib/permissions/PermissionChecker;->requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;Lcom/luck/picture/lib/permissions/PermissionResultCallback;)V

    :goto_6
    return-void
.end method

.method public final setAdapterData(Ljava/util/ArrayList;)V
    .locals 6

    iget-wide v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->enterAnimDuration:J

    const-wide/16 v2, 0x32

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sub-long/2addr v0, v2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v2

    :goto_0
    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/umeng/commonsdk/internal/c$2;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-direct {v3, p0, p1, v4, v5}, Lcom/umeng/commonsdk/internal/c$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorFragment;->setAdapterDataComplete(Ljava/util/ArrayList;)V

    :goto_1
    return-void
.end method

.method public final setAdapterDataComplete(Ljava/util/ArrayList;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->enterAnimDuration:J

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/luck/picture/lib/style/SelectMainStyle;

    invoke-direct {v0}, Lcom/luck/picture/lib/style/SelectMainStyle;-><init>()V

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz p1, :cond_0

    iput-object p1, v0, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->dataSource:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->albumDataSource:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->currentPosition:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mRecycler:Lcom/luck/picture/lib/widget/RecyclerPreloadView;

    new-instance v0, Lcom/luck/picture/lib/PictureSelectorFragment$15;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/luck/picture/lib/PictureSelectorFragment$15;-><init>(Lcom/luck/picture/lib/PictureSelectorFragment;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->mAdapter:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object p1, p1, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorFragment;->showDataNull()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvDataEmpty:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvDataEmpty:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final showDataNull()V
    .locals 4

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;->bucketId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvDataEmpty:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvDataEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvDataEmpty:Landroid/widget/TextView;

    const v1, 0x7f080224

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const v0, 0x7f13039e

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const v0, 0x7f1303b1

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorFragment;->tvDataEmpty:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
