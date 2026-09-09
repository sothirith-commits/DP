.class public abstract Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field public final coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

.field public mPreviewEventListener:Lcom/luck/picture/lib/PictureSelectorPreviewFragment$1;

.field public media:Lcom/luck/picture/lib/entity/LocalMedia;

.field public final screenAppInHeight:I

.field public final screenHeight:I

.field public final screenWidth:I

.field public final selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-static {}, Lcom/luck/picture/lib/config/SelectorProviders;->getInstance()Lcom/luck/picture/lib/config/SelectorProviders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/luck/picture/lib/config/SelectorProviders;->getSelectorConfig()Lcom/luck/picture/lib/config/SelectorConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/DensityUtil;->getRealScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->screenWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->screenHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/luck/picture/lib/utils/DensityUtil;->getRealScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->screenAppInHeight:I

    const v0, 0x7f0b045b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/photoview/PhotoView;

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    return-void
.end method

.method public static generate(Landroid/view/ViewGroup;II)Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    new-instance p1, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;

    invoke-direct {p1, p0}, Lcom/luck/picture/lib/adapter/holder/PreviewVideoHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    new-instance p1, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;

    invoke-direct {p1, p0}, Lcom/luck/picture/lib/adapter/holder/PreviewAudioHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/luck/picture/lib/adapter/holder/PreviewImageHolder;

    invoke-direct {p1, p0}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method


# virtual methods
.method public bindData(Lcom/luck/picture/lib/entity/LocalMedia;I)V
    .locals 11

    iput-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->media:Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->isCut()Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p1, Lcom/luck/picture/lib/entity/LocalMedia;->cropImageWidth:I

    if-lez p2, :cond_0

    iget v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->cropImageHeight:I

    if-lez v0, :cond_0

    filled-new-array {p2, v0}, [I

    move-result-object p2

    goto :goto_0

    :cond_0
    iget p2, p1, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    iget v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    filled-new-array {p2, v0}, [I

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget p2, p2, v2

    const/4 v3, -0x1

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    filled-new-array {v3, v3}, [I

    move-result-object p2

    goto :goto_2

    :cond_1
    invoke-static {v1, p2}, Lcom/luck/picture/lib/utils/BitmapUtils;->computeSize(II)I

    move-result v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v5

    const-wide/32 v7, 0x6400000

    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    move-wide v5, v7

    :cond_2
    move v8, v0

    move v7, v4

    move v4, v3

    :goto_1
    if-nez v8, :cond_4

    div-int v3, v1, v7

    div-int v4, p2, v7

    mul-int v9, v3, v4

    mul-int/lit8 v9, v9, 0x4

    int-to-long v9, v9

    cmp-long v9, v9, v5

    if-lez v9, :cond_3

    mul-int/lit8 v7, v7, 0x2

    goto :goto_1

    :cond_3
    move v8, v2

    goto :goto_1

    :cond_4
    filled-new-array {v3, v4}, [I

    move-result-object p2

    :goto_2
    aget v0, p2, v0

    aget p2, p2, v2

    invoke-virtual {p0}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->loadImage()V

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->setScaleDisplaySize(Lcom/luck/picture/lib/entity/LocalMedia;)V

    iget p2, p1, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    iget v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    invoke-static {p2, v0}, Lcom/luck/picture/lib/utils/MediaUtils;->isLongImage(II)Z

    move-result p2

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    if-eqz p2, :cond_5

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3

    :cond_5
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->onClickBackPressed()V

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->onLongPressDownload(Lcom/luck/picture/lib/entity/LocalMedia;)V

    return-void
.end method

.method public isPlaying$1()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract loadImage()V
.end method

.method public abstract onClickBackPressed()V
.end method

.method public abstract onLongPressDownload(Lcom/luck/picture/lib/entity/LocalMedia;)V
.end method

.method public onViewAttachedToWindow$1()V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow$1()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public resumePausePlay()V
    .locals 0

    return-void
.end method

.method public setScaleDisplaySize(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 2

    iget-object v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->selectorConfig:Lcom/luck/picture/lib/config/SelectorConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->screenHeight:I

    iget v1, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->screenWidth:I

    if-ge v1, v0, :cond_0

    iget v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->width:I

    if-lez v0, :cond_0

    iget p1, p1, Lcom/luck/picture/lib/entity/LocalMedia;->height:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->coverImageView:Lcom/luck/picture/lib/photoview/PhotoView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget p0, p0, Lcom/luck/picture/lib/adapter/holder/BasePreviewHolder;->screenAppInHeight:I

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p0, 0x11

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    return-void
.end method
