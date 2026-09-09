.class public Lcom/luck/picture/lib/PictureSelectorPreviewFragment;
.super Lcom/luck/picture/lib/basic/PictureCommonFragment;
.source "SourceFile"


# instance fields
.field public bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

.field public completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

.field public curPosition:I

.field public currentAlbum:Ljava/lang/String;

.field public isAnimationStart:Z

.field public isDisplayDelete:Z

.field public isExternalPreview:Z

.field public isHasMore:Z

.field public isInternalBottomPreview:Z

.field public isPause:Z

.field public isSaveInstanceState:Z

.field public isShowCamera:Z

.field public final mAnimViews:Ljava/util/ArrayList;

.field public mBucketId:J

.field public mData:Ljava/util/ArrayList;

.field public magicalView:Lcom/luck/picture/lib/magical/MagicalView;

.field public final pageChangeCallback:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$22;

.field public screenHeight:I

.field public screenWidth:I

.field public selectClickArea:Landroid/view/View;

.field public titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

.field public totalNum:I

.field public tvSelected:Landroid/widget/TextView;

.field public tvSelectedWord:Landroid/widget/TextView;

.field public viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

.field public viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isHasMore:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mBucketId:J

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isPause:Z

    new-instance v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$22;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$22;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->pageChangeCallback:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$22;

    return-void
.end method

.method public static access$000(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;[I)V
    .locals 10

    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isShowCamera:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    :goto_0
    invoke-static {v0}, Lcom/luck/picture/lib/magical/BuildRecycleItemViewParams;->getItemViewParams(I)Lcom/luck/picture/lib/magical/ViewParams;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    aget v8, p1, v2

    if-eqz v8, :cond_2

    aget v9, p1, v1

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    iget v4, v0, Lcom/luck/picture/lib/magical/ViewParams;->left:I

    iget v5, v0, Lcom/luck/picture/lib/magical/ViewParams;->top:I

    iget v6, v0, Lcom/luck/picture/lib/magical/ViewParams;->width:I

    iget v7, v0, Lcom/luck/picture/lib/magical/ViewParams;->height:I

    invoke-virtual/range {v3 .. v9}, Lcom/luck/picture/lib/magical/MagicalView;->setViewParams(IIIIII)V

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/magical/MagicalView;->resetStart()V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    aget v8, p1, v2

    aget v9, p1, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/luck/picture/lib/magical/MagicalView;->setViewParams(IIIIII)V

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    aget v0, p1, v2

    aget p1, p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/luck/picture/lib/magical/MagicalView;->resetStartNormal(II)V

    :goto_2
    return-void
.end method

.method public static access$2500(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;[I)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    aget v3, p1, v1

    aget v4, p1, v0

    invoke-virtual {v2, v3, v4, v1}, Lcom/luck/picture/lib/magical/MagicalView;->changeRealScreenHeight(IIZ)V

    iget-boolean v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isShowCamera:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    :goto_0
    invoke-static {v2}, Lcom/luck/picture/lib/magical/BuildRecycleItemViewParams;->getItemViewParams(I)Lcom/luck/picture/lib/magical/ViewParams;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    aget v9, p1, v1

    if-nez v9, :cond_1

    aget v4, p1, v0

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    iget v5, v2, Lcom/luck/picture/lib/magical/ViewParams;->left:I

    iget v6, v2, Lcom/luck/picture/lib/magical/ViewParams;->top:I

    iget v7, v2, Lcom/luck/picture/lib/magical/ViewParams;->width:I

    iget v8, v2, Lcom/luck/picture/lib/magical/ViewParams;->height:I

    aget v10, p1, v0

    invoke-virtual/range {v4 .. v10}, Lcom/luck/picture/lib/magical/MagicalView;->setViewParams(IIIIII)V

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {p1, v1}, Lcom/luck/picture/lib/magical/MagicalView;->start(Z)V

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v4, Lcom/umeng/commonsdk/internal/c$2;

    const/16 v5, 0x11

    invoke-direct {v4, p0, p1, v5, v1}, Lcom/umeng/commonsdk/internal/c$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {p1, v3}, Lcom/luck/picture/lib/magical/MagicalView;->setBackgroundAlpha(F)V

    :goto_2
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/2addr v1, v0

    goto :goto_2

    :cond_3
    :goto_3
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    const-string v0, "alpha"

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static access$4200(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;III)V
    .locals 12

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/luck/picture/lib/magical/MagicalView;->changeRealScreenHeight(IIZ)V

    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isShowCamera:Z

    if-eqz v0, :cond_0

    add-int/lit8 p3, p3, 0x1

    :cond_0
    invoke-static {p3}, Lcom/luck/picture/lib/magical/BuildRecycleItemViewParams;->getItemViewParams(I)Lcom/luck/picture/lib/magical/ViewParams;

    move-result-object p3

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    iget v1, p3, Lcom/luck/picture/lib/magical/ViewParams;->left:I

    iget v2, p3, Lcom/luck/picture/lib/magical/ViewParams;->top:I

    iget v3, p3, Lcom/luck/picture/lib/magical/ViewParams;->width:I

    iget v4, p3, Lcom/luck/picture/lib/magical/ViewParams;->height:I

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/luck/picture/lib/magical/MagicalView;->setViewParams(IIIIII)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, p1

    move v11, p2

    invoke-virtual/range {v5 .. v11}, Lcom/luck/picture/lib/magical/MagicalView;->setViewParams(IIIIII)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final getImageRealSizeFromMedia(Lcom/luck/picture/lib/entity/LocalMedia;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V
    .locals 5

    iget v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    iget v1, p1, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    invoke-static {v0, v1}, Lcom/luck/picture/lib/utils/MediaUtils;->isLongImage(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->screenWidth:I

    iget p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->screenHeight:I

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    iget v2, p1, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    if-eqz p2, :cond_2

    if-lez v0, :cond_1

    if-lez v2, :cond_1

    if-le v0, v2, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->isSyncWidthAndHeight:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getAvailablePath()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$26;

    const/4 v3, 0x0

    invoke-direct {v1, p1, p3, v3}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$26;-><init>(Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/interfaces/OnCallbackListener;I)V

    new-instance v3, Lcom/luck/picture/lib/utils/MediaUtils$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, v1, v4}, Lcom/luck/picture/lib/utils/MediaUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/luck/picture/lib/interfaces/OnCallbackListener;I)V

    invoke-static {v3}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->executeByIo(Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;)V

    const/4 v1, 0x0

    :cond_2
    move p2, v0

    move p0, v2

    :goto_0
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->cropImageWidth:I

    if-lez v0, :cond_3

    iget p1, p1, Lcom/luck/picture/lib/entity/LocalMedia;->cropImageHeight:I

    if-lez p1, :cond_3

    move p0, p1

    move p2, v0

    :cond_3
    if-eqz v1, :cond_4

    filled-new-array {p2, p0}, [I

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/luck/picture/lib/interfaces/OnCallbackListener;->onCall(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final getResourceId()I
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    const p0, 0x7f0e00d8

    return p0
.end method

.method public final getVideoRealSizeFromMedia(Lcom/luck/picture/lib/entity/LocalMedia;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V
    .locals 2

    if-eqz p2, :cond_1

    iget p2, p1, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    if-lez p2, :cond_0

    iget v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    if-lez v0, :cond_0

    if-le p2, v0, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->isSyncWidthAndHeight:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->getAvailablePath()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$26;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p3, v1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$26;-><init>(Lcom/luck/picture/lib/entity/LocalMedia;Lcom/luck/picture/lib/interfaces/OnCallbackListener;I)V

    new-instance p1, Lcom/luck/picture/lib/utils/MediaUtils$1;

    const/4 p3, 0x1

    invoke-direct {p1, p0, p2, v0, p3}, Lcom/luck/picture/lib/utils/MediaUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/luck/picture/lib/interfaces/OnCallbackListener;I)V

    invoke-static {p1}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->executeByIo(Lcom/luck/picture/lib/thread/PictureThreadUtils$SimpleTask;)V

    goto :goto_0

    :cond_1
    iget p0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    iget p1, p1, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    filled-new-array {p0, p1}, [I

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/luck/picture/lib/interfaces/OnCallbackListener;->onCall(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final handleExternalPreviewBack()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->hideFullScreenStatusBar()V

    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onExitPictureSelector()V

    :cond_1
    return-void
.end method

.method public final hideFullScreenStatusBar()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    invoke-virtual {p0}, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->getEditor()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public final isHasMagicalEffect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loadMoreData()V
    .locals 7

    iget v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mLoader:Lcom/luck/picture/lib/loader/LocalMediaLoader;

    iget-wide v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mBucketId:J

    iget v4, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget v5, v0, Lcom/luck/picture/lib/config/SelectorConfig;->pageSize:I

    new-instance v6, Lcom/luck/picture/lib/PictureSelectorFragment$7$2;

    const/4 v0, 0x1

    invoke-direct {v6, v0, p0}, Lcom/luck/picture/lib/PictureSelectorFragment$7$2;-><init>(ILjava/lang/Object;)V

    invoke-virtual/range {v1 .. v6}, Lcom/luck/picture/lib/loader/LocalMediaLoader;->loadPageMediaData(JIILcom/luck/picture/lib/interfaces/OnQueryDataResultListener;)V

    return-void
.end method

.method public final notifySelectNumberStyle()V
    .locals 0

    iget-object p0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/luck/picture/lib/style/SelectMainStyle;

    invoke-direct {p0}, Lcom/luck/picture/lib/style/SelectMainStyle;-><init>()V

    return-void
.end method

.method public final onCheckOriginalChange()V
    .locals 1

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    iget-object v0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->originalCheckbox:Landroid/widget/CheckBox;

    iget-object p0, p0, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isCheckOriginalImage:Z

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isHasMagicalEffect()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    iget-object v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;I)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getVideoRealSizeFromMedia(Lcom/luck/picture/lib/entity/LocalMedia;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;I)V

    invoke-virtual {p0, p1, v1, v0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getImageRealSizeFromMedia(Lcom/luck/picture/lib/entity/LocalMedia;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 2

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isHasMagicalEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v0}, Lcom/luck/picture/lib/style/PictureSelectorStyle;->getWindowAnimationStyle()Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;

    move-result-object v0

    iget v1, v0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityPreviewEnterAnimation:I

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityPreviewExitAnimation:I

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p2, :cond_1

    iget v1, v0, Lcom/luck/picture/lib/style/PictureWindowAnimationStyle;->activityPreviewEnterAnimation:I

    :cond_1
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onExitFragment()V

    :goto_0
    return-object p1

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->pageChangeCallback:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$22;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_1
    invoke-super {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onDestroy()V

    return-void
.end method

.method public final onEditMedia(Landroid/content/Intent;)V
    .locals 11

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    const-string v1, "output"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-nez v1, :cond_0

    const-string v1, "com.yalantis.ucrop.OutputUri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/luck/picture/lib/entity/LocalMedia;->cutPath:Ljava/lang/String;

    const-string v1, "com.yalantis.ucrop.ImageWidth"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/luck/picture/lib/entity/LocalMedia;->cropImageWidth:I

    const-string v3, "com.yalantis.ucrop.ImageHeight"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/luck/picture/lib/entity/LocalMedia;->cropImageHeight:I

    const-string v4, "com.yalantis.ucrop.OffsetX"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v0, Lcom/luck/picture/lib/entity/LocalMedia;->cropOffsetX:I

    const-string v6, "com.yalantis.ucrop.OffsetY"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lcom/luck/picture/lib/entity/LocalMedia;->cropOffsetY:I

    const-string v7, "com.yalantis.ucrop.CropAspectRatio"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v9

    iput v9, v0, Lcom/luck/picture/lib/entity/LocalMedia;->cropResultAspectRatio:F

    iget-object v9, v0, Lcom/luck/picture/lib/entity/LocalMedia;->cutPath:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    iput-boolean v9, v0, Lcom/luck/picture/lib/entity/LocalMedia;->isCut:Z

    const-string v9, "customExtraData"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/luck/picture/lib/entity/LocalMedia;->customData:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v9

    iput-boolean v9, v0, Lcom/luck/picture/lib/entity/LocalMedia;->isEditorImage:Z

    iget-object v9, v0, Lcom/luck/picture/lib/entity/LocalMedia;->cutPath:Ljava/lang/String;

    iput-object v9, v0, Lcom/luck/picture/lib/entity/LocalMedia;->sandboxPath:Ljava/lang/String;

    iget-object v9, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v9}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v0, Lcom/luck/picture/lib/entity/LocalMedia;->compareLocalMedia:Lcom/luck/picture/lib/entity/LocalMedia;

    if-eqz v9, :cond_2

    iget-object v10, v0, Lcom/luck/picture/lib/entity/LocalMedia;->cutPath:Ljava/lang/String;

    iput-object v10, v9, Lcom/luck/picture/lib/entity/LocalMedia;->cutPath:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result v10

    iput-boolean v10, v9, Lcom/luck/picture/lib/entity/LocalMedia;->isCut:Z

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->isEditorImage()Z

    move-result v10

    iput-boolean v10, v9, Lcom/luck/picture/lib/entity/LocalMedia;->isEditorImage:Z

    iget-object v10, v0, Lcom/luck/picture/lib/entity/LocalMedia;->customData:Ljava/lang/String;

    iput-object v10, v9, Lcom/luck/picture/lib/entity/LocalMedia;->customData:Ljava/lang/String;

    iget-object v10, v0, Lcom/luck/picture/lib/entity/LocalMedia;->cutPath:Ljava/lang/String;

    iput-object v10, v9, Lcom/luck/picture/lib/entity/LocalMedia;->sandboxPath:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v9, Lcom/luck/picture/lib/entity/LocalMedia;->cropImageWidth:I

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v9, Lcom/luck/picture/lib/entity/LocalMedia;->cropImageHeight:I

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v9, Lcom/luck/picture/lib/entity/LocalMedia;->cropOffsetX:I

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v9, Lcom/luck/picture/lib/entity/LocalMedia;->cropOffsetY:I

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    iput p1, v9, Lcom/luck/picture/lib/entity/LocalMedia;->cropResultAspectRatio:F

    :cond_2
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->sendFixedSelectedChangeEvent(Lcom/luck/picture/lib/entity/LocalMedia;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v5}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->confirmSelect(Lcom/luck/picture/lib/entity/LocalMedia;Z)I

    :goto_1
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4
    return-void
.end method

.method public final onExitFragment()V
    .locals 1

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->hideFullScreenStatusBar()V

    :cond_0
    return-void
.end method

.method public final onExitPictureSelector()V
    .locals 1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->destroy()V

    :cond_0
    invoke-super {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onExitPictureSelector()V

    return-void
.end method

.method public final onKeyBackFragmentFinish()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/ActivityCompatHelper;->isDestroy(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/magical/MagicalView;->backToMin()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onExitPictureSelector()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onBackCurrentFragment()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {p0}, Lcom/luck/picture/lib/magical/MagicalView;->backToMin()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onBackCurrentFragment()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->getCurrentHolder(I)Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->isPlaying$1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->getCurrentHolder(I)Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->resumePausePlay()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isPause:Z

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isPause:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->getCurrentHolder(I)Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->resumePausePlay()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isPause:Z

    :cond_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "com.luck.picture.lib.current_page"

    iget v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.luck.picture.lib.current_bucketId"

    iget-wide v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mBucketId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "com.luck.picture.lib.current_preview_position"

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.luck.picture.lib.current_album_total"

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->totalNum:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "com.luck.picture.lib.external_preview"

    iget-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.luck.picture.lib.external_preview_display_delete"

    iget-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isDisplayDelete:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.luck.picture.lib.display_camera"

    iget-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isShowCamera:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.luck.picture.lib.bottom_preview"

    iget-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.luck.picture.lib.current_album_name"

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->currentAlbum:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->selectedPreviewResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public final onSelectedChange(Lcom/luck/picture/lib/entity/LocalMedia;Z)V
    .locals 1

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/BottomNavBar;->setSelectedChange()V

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setSelectedChange(Z)V

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->notifySelectNumberStyle()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mAnimViews:Ljava/util/ArrayList;

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1, p2}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string v6, ""

    if-eqz p2, :cond_0

    const-string v7, "com.luck.picture.lib.current_page"

    invoke-virtual {p2, v7, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mPage:I

    const-string v7, "com.luck.picture.lib.current_bucketId"

    const-wide/16 v8, -0x1

    invoke-virtual {p2, v7, v8, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mBucketId:J

    const-string v7, "com.luck.picture.lib.current_preview_position"

    iget v8, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    invoke-virtual {p2, v7, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    const-string v7, "com.luck.picture.lib.display_camera"

    iget-boolean v8, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isShowCamera:Z

    invoke-virtual {p2, v7, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isShowCamera:Z

    const-string v7, "com.luck.picture.lib.current_album_total"

    iget v8, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->totalNum:I

    invoke-virtual {p2, v7, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->totalNum:I

    const-string v7, "com.luck.picture.lib.external_preview"

    iget-boolean v8, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    invoke-virtual {p2, v7, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    const-string v7, "com.luck.picture.lib.external_preview_display_delete"

    iget-boolean v8, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isDisplayDelete:Z

    invoke-virtual {p2, v7, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isDisplayDelete:Z

    const-string v7, "com.luck.picture.lib.bottom_preview"

    iget-boolean v8, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    invoke-virtual {p2, v7, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    const-string v7, "com.luck.picture.lib.current_album_name"

    invoke-virtual {p2, v7, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->currentAlbum:Ljava/lang/String;

    iget-object v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v9, v9, Lcom/luck/picture/lib/config/SelectorConfig;->selectedPreviewResult:Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_1

    move p2, v5

    goto :goto_0

    :cond_1
    move p2, v4

    :goto_0
    iput-boolean p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isSaveInstanceState:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/luck/picture/lib/utils/DensityUtil;->getRealScreenWidth(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->screenWidth:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/luck/picture/lib/utils/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->screenHeight:I

    const p2, 0x7f0b05e8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/widget/PreviewTitleBar;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    const p2, 0x7f0b048c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    const p2, 0x7f0b048d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    const p2, 0x7f0b04fb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectClickArea:Landroid/view/View;

    const p2, 0x7f0b0480

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/widget/CompleteSelectView;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    const p2, 0x7f0b0362

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/magical/MagicalView;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    new-instance p2, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p2, v7}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const p2, 0x7f0b00d4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    iget-object v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2, v7}, Lcom/luck/picture/lib/magical/MagicalView;->setMagicalContent(Landroid/view/View;)V

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/luck/picture/lib/style/SelectMainStyle;

    invoke-direct {p2}, Lcom/luck/picture/lib/style/SelectMainStyle;-><init>()V

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    if-eq p2, v2, :cond_3

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/entity/LocalMedia;

    iget-object p2, p2, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    invoke-static {p2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f06035c

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/luck/picture/lib/magical/MagicalView;->setBackgroundColor(I)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f060371

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/luck/picture/lib/magical/MagicalView;->setBackgroundColor(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isHasMagicalEffect()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    new-instance v7, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    invoke-direct {v7, p0, v4}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;I)V

    invoke-virtual {p2, v7}, Lcom/luck/picture/lib/magical/MagicalView;->setOnMojitoViewCallback(Lcom/luck/picture/lib/magical/OnMagicalViewCallback;)V

    :cond_4
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    iget-object v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectClickArea:Landroid/view/View;

    iget-object v10, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    iget-object v11, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    const/4 v12, 0x6

    new-array v12, v12, [Landroid/view/View;

    aput-object p2, v12, v4

    aput-object v7, v12, v5

    aput-object v8, v12, v3

    aput-object v9, v12, v2

    const/4 p2, 0x4

    aput-object v10, v12, p2

    aput-object v11, v12, v1

    invoke-static {v0, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-boolean p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    if-eqz p2, :cond_6

    new-instance p2, Lcom/luck/picture/lib/loader/LocalMediaLoader;

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object v7, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {p2, v2, v7, v5}, Lcom/luck/picture/lib/loader/LocalMediaLoader;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;I)V

    goto :goto_3

    :cond_6
    new-instance p2, Lcom/luck/picture/lib/loader/LocalMediaLoader;

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object v7, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {p2, v2, v7, v4}, Lcom/luck/picture/lib/loader/LocalMediaLoader;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/SelectorConfig;I)V

    :goto_3
    iput-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->mLoader:Lcom/luck/picture/lib/loader/LocalMediaLoader;

    :goto_4
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/luck/picture/lib/style/TitleBarStyle;

    invoke-direct {p2}, Lcom/luck/picture/lib/style/TitleBarStyle;-><init>()V

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    invoke-virtual {p2}, Lcom/luck/picture/lib/widget/PreviewTitleBar;->setTitleBarStyle()V

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    new-instance v2, Lcom/luck/picture/lib/PictureSelectorFragment$3;

    invoke-direct {v2, p0, v5}, Lcom/luck/picture/lib/PictureSelectorFragment$3;-><init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;I)V

    invoke-virtual {p2, v2}, Lcom/luck/picture/lib/widget/TitleBar;->setOnTitleBarListener(Lcom/luck/picture/lib/widget/TitleBar$OnTitleBarListener;)V

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    add-int/2addr v7, v5

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->totalNum:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/luck/picture/lib/widget/TitleBar;->setTitle(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    invoke-virtual {p2}, Lcom/luck/picture/lib/widget/TitleBar;->getImageDelete()Landroid/widget/ImageView;

    move-result-object p2

    new-instance v2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$8;

    invoke-direct {v2, p0, v4}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$8;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->selectClickArea:Landroid/view/View;

    new-instance v2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$8;

    invoke-direct {v2, p0, v3}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$8;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    new-instance v2, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$8;

    invoke-direct {v2, p0, v5}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$8;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->mData:Ljava/util/ArrayList;

    new-instance v2, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    iget-object v7, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-direct {v2, v7}, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;-><init>(Lcom/luck/picture/lib/config/SelectorConfig;)V

    iput-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    iput-object p2, v2, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->mData:Ljava/util/List;

    new-instance v7, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    invoke-direct {v7, p0, v1}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;I)V

    iput-object v7, v2, Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;->onPreviewEventListener:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v4}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPageAdapter:Lcom/luck/picture/lib/adapter/PicturePreviewAdapter;

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v1, v1, Lcom/luck/picture/lib/config/SelectorConfig;->selectedPreviewResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_b

    iget v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    if-gez v1, :cond_7

    goto/16 :goto_5

    :cond_7
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    iget-object v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    iget-object v8, v1, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    invoke-static {v8}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, v1, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    invoke-static {v8}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasAudio(Ljava/lang/String;)Z

    move-result v8

    :cond_8
    iget-object v8, v7, Lcom/luck/picture/lib/widget/BottomNavBar;->tvImageEditor:Landroid/widget/TextView;

    iget-object v7, v7, Lcom/luck/picture/lib/widget/BottomNavBar;->config:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {v8}, Lcom/luck/picture/lib/config/SelectorConfig;->getSelectedResult()Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v9}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v8, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->pageChangeCallback:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$22;

    invoke-virtual {v7, v8}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v8, Landroidx/viewpager2/widget/MarginPageTransformer;

    invoke-virtual {p0}, Lcom/luck/picture/lib/basic/PictureCommonFragment;->getAppContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x40400000    # 3.0f

    invoke-static {v9, v10}, Lcom/luck/picture/lib/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v8, v9}, Landroidx/viewpager2/widget/MarginPageTransformer;-><init>(I)V

    invoke-virtual {v7, v8}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    iget-object v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget v8, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    invoke-virtual {v7, v8, v4}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    iget-object v7, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object v7, v7, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/luck/picture/lib/style/SelectMainStyle;

    invoke-direct {v7}, Lcom/luck/picture/lib/style/SelectMainStyle;-><init>()V

    iget v7, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->curPosition:I

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->notifySelectNumberStyle()V

    iget-boolean p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isSaveInstanceState:Z

    if-nez p2, :cond_c

    iget-boolean p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isInternalBottomPreview:Z

    if-eqz p2, :cond_9

    goto :goto_6

    :cond_9
    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v7, Lme/wcy/lrcview/LrcView$5;

    invoke-direct {v7, v5, p0}, Lme/wcy/lrcview/LrcView$5;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p2, v1, Lcom/luck/picture/lib/entity/LocalMedia;->mimeType:Ljava/lang/String;

    invoke-static {p2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasVideo(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getAvailablePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasHttp(Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, v5

    new-instance v3, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    invoke-direct {v3, p0, v5}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;I)V

    invoke-virtual {p0, v1, p2, v3}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getVideoRealSizeFromMedia(Lcom/luck/picture/lib/entity/LocalMedia;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->getAvailablePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/luck/picture/lib/config/PictureMimeType;->isHasHttp(Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, v5

    new-instance v7, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

    invoke-direct {v7, p0, v3}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;I)V

    invoke-virtual {p0, v1, p2, v7}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->getImageRealSizeFromMedia(Lcom/luck/picture/lib/entity/LocalMedia;ZLcom/luck/picture/lib/interfaces/OnCallbackListener;)V

    goto :goto_6

    :cond_b
    :goto_5
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->onKeyBackFragmentFinish()V

    :cond_c
    :goto_6
    iget-boolean p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isExternalPreview:Z

    if-eqz p2, :cond_e

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->titleBar:Lcom/luck/picture/lib/widget/PreviewTitleBar;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/TitleBar;->getImageDelete()Landroid/widget/ImageView;

    move-result-object p1

    iget-boolean p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isDisplayDelete:Z

    if-eqz p2, :cond_d

    move p2, v4

    goto :goto_7

    :cond_d
    move p2, v2

    :goto_7
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelected:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    :cond_e
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    invoke-virtual {p2}, Lcom/luck/picture/lib/widget/PreviewBottomNavBar;->setBottomNavBarStyle()V

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    invoke-virtual {p2}, Lcom/luck/picture/lib/widget/BottomNavBar;->setSelectedChange()V

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->bottomNarBar:Lcom/luck/picture/lib/widget/PreviewBottomNavBar;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorFragment$8;

    invoke-direct {v1, p0, v5}, Lcom/luck/picture/lib/PictureSelectorFragment$8;-><init>(Lcom/luck/picture/lib/basic/PictureCommonFragment;I)V

    invoke-virtual {p2, v1}, Lcom/luck/picture/lib/widget/BottomNavBar;->setOnBottomNavBarListener(Lcom/luck/picture/lib/widget/BottomNavBar$OnBottomNavBarListener;)V

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/luck/picture/lib/style/SelectMainStyle;

    invoke-direct {p1}, Lcom/luck/picture/lib/style/SelectMainStyle;-><init>()V

    iget-object p1, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-object p1, p1, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/luck/picture/lib/style/SelectMainStyle;

    invoke-direct {p1}, Lcom/luck/picture/lib/style/SelectMainStyle;-><init>()V

    const/4 p2, 0x0

    invoke-static {p2}, Lcom/luck/picture/lib/utils/StyleUtils;->checkTextValidity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_f
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    invoke-virtual {p2}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setCompleteSelectViewStyle()V

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    invoke-virtual {p2, v5}, Lcom/luck/picture/lib/widget/CompleteSelectView;->setSelectedChange(Z)V

    iget-object p2, p0, Lcom/luck/picture/lib/basic/PictureCommonFragment;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean p2, p2, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/DensityUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_9

    :cond_10
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->tvSelectedWord:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/utils/DensityUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_11
    :goto_9
    iget-object p2, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->completeSelectView:Lcom/luck/picture/lib/widget/CompleteSelectView;

    new-instance v1, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/adapter/PictureAlbumAdapter$1;-><init>(Lcom/luck/picture/lib/PictureSelectorPreviewFragment;Lcom/luck/picture/lib/style/SelectMainStyle;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_a
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isHasMagicalEffect()Z

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_14

    iget-boolean p1, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->isSaveInstanceState:Z

    if-eqz p1, :cond_12

    goto :goto_b

    :cond_12
    const/4 p2, 0x0

    :goto_b
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/magical/MagicalView;->setBackgroundAlpha(F)V

    :goto_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v4, p0, :cond_15

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/luck/picture/lib/widget/TitleBar;

    if-eqz p0, :cond_13

    goto :goto_d

    :cond_13
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_d
    add-int/2addr v4, v5

    goto :goto_c

    :cond_14
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorPreviewFragment;->magicalView:Lcom/luck/picture/lib/magical/MagicalView;

    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/magical/MagicalView;->setBackgroundAlpha(F)V

    :cond_15
    return-void
.end method
