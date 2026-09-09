.class public final Lcom/luck/picture/lib/config/SelectorConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final albumDataSource:Ljava/util/ArrayList;

.field public final animationMode:I

.field public final cameraImageFormat:Ljava/lang/String;

.field public final cameraImageFormatForQ:Ljava/lang/String;

.field public cameraPath:Ljava/lang/String;

.field public final cameraVideoFormat:Ljava/lang/String;

.field public final cameraVideoFormatForQ:Ljava/lang/String;

.field public final chooseMode:I

.field public currentLocalMediaFolder:Lcom/luck/picture/lib/entity/LocalMediaFolder;

.field public final dataSource:Ljava/util/ArrayList;

.field public final defaultAlbumName:Ljava/lang/String;

.field public final defaultLanguage:I

.field public final imageSpanCount:I

.field public final isAutomaticTitleRecyclerTop:Z

.field public final isBmp:Z

.field public final isCameraRotateImage:Z

.field public isCheckOriginalImage:Z

.field public final isDisplayCamera:Z

.field public final isDisplayTimeAxis:Z

.field public final isEnablePreviewAudio:Z

.field public final isEnablePreviewImage:Z

.field public final isEnablePreviewVideo:Z

.field public final isFilterSizeDuration:Z

.field public final isHeic:Z

.field public final isNewKeyBackMode:Z

.field public final isPageStrategy:Z

.field public final isPreloadFirst:Z

.field public final isPreviewFullScreenMode:Z

.field public final isPreviewZoomEffect:Z

.field public final isQuickCapture:Z

.field public final isResultListenerBack:Z

.field public final isSelectZoomAnim:Z

.field public final isSyncWidthAndHeight:Z

.field public final isWebp:Z

.field public final language:I

.field public final maxSelectNum:I

.field public maxVideoSelectNum:I

.field public final outPutAudioDir:Ljava/lang/String;

.field public final outPutAudioFileName:Ljava/lang/String;

.field public final outPutCameraDir:Ljava/lang/String;

.field public final outPutCameraImageFileName:Ljava/lang/String;

.field public final outPutCameraVideoFileName:Ljava/lang/String;

.field public final pageSize:I

.field public final queryOnlyAudioList:Ljava/util/ArrayList;

.field public final queryOnlyImageList:Ljava/util/ArrayList;

.field public final queryOnlyVideoList:Ljava/util/ArrayList;

.field public final recordVideoMaxSecond:I

.field public final requestedOrientation:I

.field public final sandboxDir:Ljava/lang/String;

.field public final selectedPreviewResult:Ljava/util/ArrayList;

.field public final selectedResult:Ljava/util/ArrayList;

.field public final selectionMode:I

.field public final selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

.field public final sortOrder:Ljava/lang/String;

.field public videoPlayerEngine:Lcom/luck/picture/lib/engine/MediaPlayerEngine;

.field public final videoQuality:I


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectedResult:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectedPreviewResult:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->albumDataSource:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->dataSource:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectionMode:I

    new-instance v1, Lcom/luck/picture/lib/style/PictureSelectorStyle;

    invoke-direct {v1}, Lcom/luck/picture/lib/style/PictureSelectorStyle;-><init>()V

    iput-object v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectorStyle:Lcom/luck/picture/lib/style/PictureSelectorStyle;

    const/16 v1, 0x9

    iput v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->maxSelectNum:I

    iput v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->maxVideoSelectNum:I

    iput v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->videoQuality:I

    const/4 v1, -0x2

    iput v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->language:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->defaultLanguage:I

    const/16 v2, 0x3c

    iput v2, p0, Lcom/luck/picture/lib/config/SelectorConfig;->recordVideoMaxSecond:I

    const/4 v3, 0x4

    iput v3, p0, Lcom/luck/picture/lib/config/SelectorConfig;->imageSpanCount:I

    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayCamera:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isWebp:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isBmp:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isHeic:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isCheckOriginalImage:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isEnablePreviewImage:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isEnablePreviewVideo:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isEnablePreviewAudio:Z

    const-string v4, ".jpeg"

    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraImageFormat:Ljava/lang/String;

    const-string v4, ".mp4"

    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraVideoFormat:Ljava/lang/String;

    const-string v4, "image/jpeg"

    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraImageFormatForQ:Ljava/lang/String;

    const-string v4, "video/mp4"

    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraVideoFormatForQ:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->outPutCameraImageFileName:Ljava/lang/String;

    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->outPutCameraVideoFileName:Ljava/lang/String;

    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->outPutAudioFileName:Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyImageList:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyVideoList:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/luck/picture/lib/config/SelectorConfig;->queryOnlyAudioList:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->outPutCameraDir:Ljava/lang/String;

    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->outPutAudioDir:Ljava/lang/String;

    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->sandboxDir:Ljava/lang/String;

    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->cameraPath:Ljava/lang/String;

    iput v2, p0, Lcom/luck/picture/lib/config/SelectorConfig;->pageSize:I

    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isPageStrategy:Z

    iput v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->animationMode:I

    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isAutomaticTitleRecyclerTop:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isQuickCapture:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isCameraRotateImage:Z

    iput v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->requestedOrientation:I

    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isResultListenerBack:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewFullScreenMode:Z

    iget v1, p0, Lcom/luck/picture/lib/config/SelectorConfig;->chooseMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    move v3, v0

    :cond_0
    iput-boolean v3, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreviewZoomEffect:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isDisplayTimeAxis:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->sortOrder:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isSelectZoomAnim:Z

    iput-object v4, p0, Lcom/luck/picture/lib/config/SelectorConfig;->defaultAlbumName:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isFilterSizeDuration:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isSyncWidthAndHeight:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isPreloadFirst:Z

    iput-boolean v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->isNewKeyBackMode:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized getSelectedResult()Ljava/util/ArrayList;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/config/SelectorConfig;->selectedResult:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
