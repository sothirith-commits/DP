.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperView;
.super Lcom/deepalhome/launcher/view/BaseView;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/view/BaseView<",
        "Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;",
        ">;",
        "Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/wallpaper/WallpaperView$Companion;

.field private static final FILE_ACCESS_RETRY_BASE_MS:J = 0x320L

.field private static final MAX_FILE_ACCESS_RETRY:I = 0x6

.field private static final MAX_LAYOUT_RETRY:I = 0x3


# instance fields
.field private _isWindowVisible:Z

.field private allowVideoReveal:Z

.field private currentTransitionDirection:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

.field private currentVideoPosterBitmap:Landroid/graphics/Bitmap;

.field private currentWallpaperPath:Ljava/lang/String;

.field private currentWallpaperType:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

.field private fileAccessRetryCount:I

.field private fileAccessRetryPath:Ljava/lang/String;

.field private fileAccessRetryRunnable:Ljava/lang/Runnable;

.field private hasNotifiedWallpaperFrame:Z

.field private isFirstLoad:Z

.field private isNightMode:Z

.field private isPrimaryVisible:Z

.field private isScrollTransitionRunning:Z

.field private isVideoPlaybackEnabled:Z

.field private isWallpaperListenerRegistered:Z

.field private layoutRetryCount:I

.field private final onWallpaperChangedListener$delegate:Lkotlin/Lazy;

.field private pendingLoadRunnable:Ljava/lang/Runnable;

.field private pendingVideoPosterBitmap:Landroid/graphics/Bitmap;

.field private runningTransitionPath:Ljava/lang/String;

.field private runningTransitionType:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

.field private final transitionHelper$delegate:Lkotlin/Lazy;

.field private final videoController$delegate:Lkotlin/Lazy;

.field private videoPosterTargetView:Landroid/widget/ImageView;

.field private wallpaperFrameReadyListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private wallpaperRequestId:I


# direct methods
.method public static synthetic $r8$lambda$9VcJ_Dk1ecOw8S3O4ynyJqIZPmY(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/Object;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->applyWallpaper$lambda$3(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/Object;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IvT_DyaTewzQqUY55Lc3koDtn40(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->setupVideoTextureListener$lambda$1(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$aAgDDLiInaupo9ZLLy648AzUZ6U(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->scheduleFileAccessRetry$lambda$7(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->Companion:Lcom/deepalhome/launcher/wallpaper/WallpaperView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/deepalhome/launcher/wallpaper/WallpaperView$onWallpaperChangedListener$2;

    invoke-direct {p2, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$onWallpaperChangedListener$2;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->onWallpaperChangedListener$delegate:Lkotlin/Lazy;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isPrimaryVisible:Z

    iput-boolean p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isFirstLoad:Z

    iput-boolean p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->_isWindowVisible:Z

    iput-boolean p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isVideoPlaybackEnabled:Z

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;->RIGHT_TO_LEFT:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentTransitionDirection:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

    iput-boolean p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->allowVideoReveal:Z

    new-instance p2, Lcom/deepalhome/launcher/wallpaper/WallpaperView$transitionHelper$2;

    invoke-direct {p2, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$transitionHelper$2;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->transitionHelper$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/deepalhome/launcher/wallpaper/WallpaperView$videoController$2;

    invoke-direct {p2, p1, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$videoController$2;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->videoController$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$activeImageView(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)Landroid/widget/ImageView;
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->activeImageView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$applySettledTransitionState(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->applySettledTransitionState(Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V

    return-void
.end method

.method public static final synthetic access$clearFileAccessRetry(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->clearFileAccessRetry()V

    return-void
.end method

.method public static final synthetic access$clearPendingVideoPosterBitmap(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->clearPendingVideoPosterBitmap()V

    return-void
.end method

.method public static final synthetic access$clearRunningTransitionState(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->clearRunningTransitionState()V

    return-void
.end method

.method public static final synthetic access$commitVideoPosterState(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->commitVideoPosterState(Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V

    return-void
.end method

.method public static final synthetic access$detachBitmapIfNeeded(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->detachBitmapIfNeeded(Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getVideoController(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getVideoController()Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWallpaperRequestId$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->wallpaperRequestId:I

    return p0
.end method

.method public static final synthetic access$inactiveImageView(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)Landroid/widget/ImageView;
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->inactiveImageView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isPrimaryVisible$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isPrimaryVisible:Z

    return p0
.end method

.method public static final synthetic access$loadVideoWallpaper$startVideoLoad(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->loadVideoWallpaper$startVideoLoad(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$loadWallpaper(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->loadWallpaper(Z)V

    return-void
.end method

.method public static final synthetic access$notifyWallpaperFrameReadyInternal(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->notifyWallpaperFrameReadyInternal()V

    return-void
.end method

.method public static final synthetic access$scheduleFileAccessRetry(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->scheduleFileAccessRetry(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$setAllowVideoReveal$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->allowVideoReveal:Z

    return-void
.end method

.method public static final synthetic access$setCurrentTransitionDirection$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentTransitionDirection:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

    return-void
.end method

.method public static final synthetic access$setCurrentWallpaperPath$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentWallpaperPath:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setCurrentWallpaperType$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentWallpaperType:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    return-void
.end method

.method public static final synthetic access$setFirstLoad$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isFirstLoad:Z

    return-void
.end method

.method public static final synthetic access$setPendingVideoPosterBitmap$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->pendingVideoPosterBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static final synthetic access$setPrimaryVisible$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isPrimaryVisible:Z

    return-void
.end method

.method public static final synthetic access$startScrollTransition(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Ljava/lang/String;ILcom/deepalhome/launcher/wallpaper/WallpaperType;ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->startScrollTransition(Ljava/lang/String;ILcom/deepalhome/launcher/wallpaper/WallpaperType;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final activeImageView()Landroid/widget/ImageView;
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isPrimaryVisible:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperIv:Landroid/widget/ImageView;

    const-string v0, "wallpaperIv"

    :goto_0
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperNextIv:Landroid/widget/ImageView;

    const-string v0, "wallpaperNextIv"

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method private final applySettledTransitionState(Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isPrimaryVisible:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isPrimaryVisible:Z

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->inactiveImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->inactiveImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->activeImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->activeImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentWallpaperPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentWallpaperType:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    invoke-direct {p0, p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->commitVideoPosterState(Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V

    iput-boolean v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isFirstLoad:Z

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->clearFileAccessRetry()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->updateNightMask()V

    return-void
.end method

.method private final applyWallpaper(Ljava/lang/Object;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V
    .locals 8

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->cancelPendingLoad()V

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_5

    :cond_1
    iput v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->layoutRetryCount:I

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->wallpaperRequestId:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->wallpaperRequestId:I

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->showDefaultWallpaper()V

    return-void

    :cond_3
    :goto_1
    move-object v2, p1

    goto :goto_3

    :cond_4
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    instance-of v0, p1, Landroid/net/Uri;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    :goto_2
    goto :goto_1

    :goto_3
    iget-boolean p1, p3, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;->usesScrollTransition:Z

    if-nez p1, :cond_7

    iget-boolean v6, p3, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;->delayCurrentVideoStop:Z

    move-object v1, p0

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->loadDirectly(Ljava/lang/Object;Ljava/lang/String;ILcom/deepalhome/launcher/wallpaper/WallpaperType;Z)V

    goto :goto_4

    :cond_7
    iget-boolean v6, p3, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;->delayCurrentVideoStop:Z

    move-object v1, p0

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->loadWithCrossFade(Ljava/lang/Object;Ljava/lang/String;ILcom/deepalhome/launcher/wallpaper/WallpaperType;Z)V

    :goto_4
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->showDefaultWallpaper()V

    return-void

    :cond_9
    :goto_5
    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->layoutRetryCount:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_a

    iput v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->layoutRetryCount:I

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->showDefaultWallpaper()V

    return-void

    :cond_a
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->layoutRetryCount:I

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->wallpaperRequestId:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->wallpaperRequestId:I

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$$ExternalSyntheticLambda1;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/Object;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->pendingLoadRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperIv:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->pendingLoadRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final applyWallpaper$lambda$3(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/Object;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$model"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$path"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$plan"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$type"

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->pendingLoadRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->wallpaperRequestId:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->applyWallpaper(Ljava/lang/Object;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V

    :cond_0
    return-void
.end method

.method private final cancelPendingLoad()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->pendingLoadRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->pendingLoadRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private final captureCurrentVisibleBitmap()Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentWallpaperType:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->VIDEO_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getVideoController()Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    move-result-object v0

    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->currentVideoPath:Ljava/lang/String;

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentVideoPosterBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    new-instance p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;->VIDEO_POSTER_CACHE:Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    invoke-direct {p0, v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;-><init>(Landroid/graphics/Bitmap;Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;)V

    return-object p0

    :cond_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->activeImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->visibleBitmapFrom(Landroid/widget/ImageView;)Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->inactiveImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->visibleBitmapFrom(Landroid/widget/ImageView;)Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->captureVideoFrameBitmap()Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->activeImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->visibleBitmapFrom(Landroid/widget/ImageView;)Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    return-object v0

    :cond_6
    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->inactiveImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->visibleBitmapFrom(Landroid/widget/ImageView;)Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100030

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperImageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge v1, v3, :cond_8

    move v1, v3

    :cond_8
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperImageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    if-ge p0, v3, :cond_9

    goto :goto_1

    :cond_9
    move v3, p0

    :goto_1
    invoke-static {v0, v1, v3}, Lkotlin/io/TextStreamsKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_a

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;->GENERATED_DRAWABLE:Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    invoke-direct {v2, p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;-><init>(Landroid/graphics/Bitmap;Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;)V

    :cond_a
    return-object v2
.end method

.method private final captureVideoFrameBitmap()Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;
    .locals 6

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperVideoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_7

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperVideoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionMath;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionMath;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperVideoView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperVideoView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-lez v2, :cond_5

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v5, 0x500

    if-gt v4, v5, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const/high16 v5, 0x44a00000    # 1280.0f

    int-to-float v4, v4

    div-float/2addr v5, v4

    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    if-ge v2, v0, :cond_3

    move v2, v0

    :cond_3
    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    if-ge v3, v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    :goto_1
    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v4, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    :try_start_0
    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperVideoView:Landroid/view/TextureView;

    invoke-virtual {p0, v0, v2}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_3
    instance-of v0, p0, Lkotlin/Result$Failure;

    if-eqz v0, :cond_6

    move-object p0, v1

    :cond_6
    check-cast p0, Landroid/graphics/Bitmap;

    if-eqz p0, :cond_7

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;->VIDEO_FRAME:Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    invoke-direct {v1, p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;-><init>(Landroid/graphics/Bitmap;Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;)V

    :cond_7
    :goto_4
    return-object v1
.end method

.method private final clearFileAccessRetry()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->fileAccessRetryRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->fileAccessRetryRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->fileAccessRetryCount:I

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->fileAccessRetryPath:Ljava/lang/String;

    return-void
.end method

.method private final clearPendingVideoPosterBitmap()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->pendingVideoPosterBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private final clearRunningTransitionState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isScrollTransitionRunning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->runningTransitionPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->runningTransitionType:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    return-void
.end method

.method private final clearVideoPosterState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentVideoPosterBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->pendingVideoPosterBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private final commitVideoPosterState(Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->VIDEO_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->pendingVideoPosterBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentVideoPosterBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentVideoPosterBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->pendingVideoPosterBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private final detachBitmapIfNeeded(Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;)Landroid/graphics/Bitmap;
    .locals 3

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionMath;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionMath;

    iget-object v0, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;->source:Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "source"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;->VIEW_DRAWABLE:Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    iget-object p1, p1, Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-eq v0, p0, :cond_1

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;->GLIDE_RESOURCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p0, v0, :cond_2

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_1
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_4

    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_4

    move p0, v0

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v1, v0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_4
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_6

    move-object p1, p0

    :cond_6
    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private final getOnWallpaperChangedListener()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->onWallpaperChangedListener$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method private final getTransitionHelper()Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->transitionHelper$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;

    return-object p0
.end method

.method private final getVideoController()Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->videoController$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    return-object p0
.end method

.method private final inactiveImageView()Landroid/widget/ImageView;
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isPrimaryVisible:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperNextIv:Landroid/widget/ImageView;

    const-string v0, "wallpaperNextIv"

    :goto_0
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperIv:Landroid/widget/ImageView;

    const-string v0, "wallpaperIv"

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method private final loadDirectly(Ljava/lang/Object;Ljava/lang/String;ILcom/deepalhome/launcher/wallpaper/WallpaperType;Z)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    invoke-direct {p0, v0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->prepareOutgoingSnapshotIfNeeded(ZZ)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->prepareImageContainerForVideoTransition$default(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ZILjava/lang/Object;)V

    :goto_0
    if-eqz p5, :cond_1

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->inactiveImageView()Landroid/widget/ImageView;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->activeImageView()Landroid/widget/ImageView;

    move-result-object v1

    :goto_1
    if-eqz p5, :cond_2

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->activeImageView()Landroid/widget/ImageView;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->inactiveImageView()Landroid/widget/ImageView;

    move-result-object v2

    :goto_2
    if-nez p5, :cond_3

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    if-nez p5, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    const-class v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v9, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadDirectly$1;

    move-object v2, v9

    move-object v3, p0

    move v4, p3

    move-object v5, p2

    move v6, p5

    move v7, p5

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadDirectly$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/String;ZZLcom/deepalhome/launcher/wallpaper/WallpaperType;)V

    invoke-virtual {p1, v9}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private final loadVideoPosterIntoView(Landroid/widget/ImageView;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    const-string v0, "content://"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file://"

    invoke-static {p2, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    :goto_1
    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->videoPosterTargetView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    if-eqz p2, :cond_6

    const-string v3, "android.resource"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object p2, v0, Lcom/bumptech/glide/RequestBuilder;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    sget-object v2, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->PACKAGE_NAME_TO_KEY:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/signature/ApplicationVersionSignature;->PACKAGE_NAME_TO_KEY:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/Key;

    if-nez v4, :cond_5

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot resolve info for"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppVersionSignature"

    invoke-static {v5, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    new-instance v4, Lcom/bumptech/glide/signature/ObjectKey;

    invoke-direct {v4, v1}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/Key;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    move-object v4, v1

    :cond_5
    :goto_4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x30

    new-instance v1, Lcom/bumptech/glide/signature/AndroidResourceSignature;

    invoke-direct {v1, p2, v4}, Lcom/bumptech/glide/signature/AndroidResourceSignature;-><init>(ILcom/bumptech/glide/load/Key;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    :cond_6
    :goto_5
    new-instance p2, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p2}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/VideoDecoder;->TARGET_FRAME:Lcom/bumptech/glide/load/Option;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    new-instance v6, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoPosterIntoView$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p3

    move-object v3, p1

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoPosterIntoView$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILandroid/widget/ImageView;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p2, v6}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    return-void
.end method

.method private final loadVideoWallpaper(Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;)V
    .locals 10

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->cancelPendingLoad()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getTransitionHelper()Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;->cancel()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperNextIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperNextIv:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperNextIv:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->showDefaultWallpaper()V

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "content://"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-string v1, "file://"

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->showDefaultWallpaper()V

    invoke-direct {p0, p1, v3}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->scheduleFileAccessRetry(Ljava/lang/String;Z)V

    return-void

    :cond_1
    iput v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->layoutRetryCount:I

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->clearFileAccessRetry()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->pendingVideoPosterBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->wallpaperRequestId:I

    add-int/lit8 v7, v1, 0x1

    iput v7, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->wallpaperRequestId:I

    iget-boolean p2, p2, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;->usesScrollTransition:Z

    if-nez p2, :cond_2

    invoke-static {p0, v2, v3, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->prepareImageContainerForVideoTransition$default(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ZILjava/lang/Object;)V

    iput-boolean v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->allowVideoReveal:Z

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->activeImageView()Landroid/widget/ImageView;

    move-result-object p2

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->videoPosterTargetView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->activeImageView()Landroid/widget/ImageView;

    move-result-object v5

    new-instance v8, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$1;

    invoke-direct {v8, p0, v7, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/String;)V

    new-instance v9, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$2;

    invoke-direct {v9, p0, v7, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$2;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/String;)V

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->loadVideoPosterIntoView(Landroid/widget/ImageView;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_2
    const/4 p2, 0x3

    invoke-static {p0, v2, v2, p2, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->prepareOutgoingSnapshotIfNeeded$default(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ZZILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->inactiveImageView()Landroid/widget/ImageView;

    move-result-object v5

    iput-boolean v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->allowVideoReveal:Z

    iput-object v5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->videoPosterTargetView:Landroid/widget/ImageView;

    new-instance v8, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3;

    invoke-direct {v8, p0, v7, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$3;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/String;)V

    new-instance v9, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$4;

    invoke-direct {v9, p0, v7, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoWallpaper$4;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/String;)V

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->loadVideoPosterIntoView(Landroid/widget/ImageView;Ljava/lang/String;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final loadVideoWallpaper$startVideoLoad(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->wallpaperRequestId:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentWallpaperPath:Ljava/lang/String;

    sget-object p1, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->VIDEO_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentWallpaperType:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isFirstLoad:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperImageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->updateNightMask()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getVideoController()Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "path"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->callback:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoPosterView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-static {p2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoPosterView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->getVideoPosterView()Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->currentVideoPath:Ljava/lang/String;

    invoke-interface {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->updateNightMask()V

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->prepareVideo(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final loadWallpaper(Z)V
    .locals 12

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->settleRunningScrollTransitionIfNeeded()V

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->getWallpaper()Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getType()Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/wallpaper/WallpaperView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v1, v4, :cond_3

    if-eq v1, v5, :cond_2

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getResId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getFilePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getFilePath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->fileAccessRetryPath:Ljava/lang/String;

    if-eqz v6, :cond_4

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->clearFileAccessRetry()V

    :cond_4
    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getType()Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    move-result-object v6

    sget-object v7, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->IMAGE_RES:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    if-ne v6, v7, :cond_5

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->clearFileAccessRetry()V

    :cond_5
    iget-boolean v6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isFirstLoad:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentWallpaperPath:Ljava/lang/String;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getType()Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    move-result-object v6

    iget-object v7, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentWallpaperType:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    if-ne v6, v7, :cond_6

    return-void

    :cond_6
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->hasNotifiedWallpaperFrame:Z

    sget-object v7, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlanner;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlanner;

    iget-object v8, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentWallpaperType:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getType()Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    move-result-object v9

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isFirstLoad:Z

    if-nez p1, :cond_7

    move p1, v4

    goto :goto_1

    :cond_7
    move p1, v6

    :goto_1
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "targetType"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v7, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->VIDEO_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    if-ne v9, v7, :cond_8

    move v10, v4

    goto :goto_2

    :cond_8
    move v10, v6

    :goto_2
    if-ne v8, v7, :cond_9

    move v7, v4

    goto :goto_3

    :cond_9
    move v7, v6

    :goto_3
    new-instance v11, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;

    if-eqz v7, :cond_a

    if-eq v8, v9, :cond_a

    move v7, v4

    goto :goto_4

    :cond_a
    move v7, v6

    :goto_4
    invoke-direct {v11, p1, v10, v10, v7}, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;-><init>(ZZZZ)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getType()Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v4, :cond_f

    if-eq p1, v5, :cond_e

    if-eq p1, v3, :cond_b

    goto/16 :goto_7

    :cond_b
    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getResId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz p1, :cond_c

    goto :goto_5

    :cond_c
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_6

    :cond_d
    const p1, 0x7f100030

    :goto_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getType()Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    move-result-object v0

    invoke-direct {p0, p1, v1, v11, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->applyWallpaper(Ljava/lang/Object;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V

    goto :goto_7

    :cond_e
    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v11}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->loadVideoWallpaper(Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;)V

    goto :goto_7

    :cond_f
    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->showDefaultWallpaper()V

    return-void

    :cond_10
    new-instance p1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://"

    invoke-static {v2, v3, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    const-string v5, "file://"

    if-nez v2, :cond_11

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->showDefaultWallpaper()V

    invoke-direct {p0, v1, v4}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->scheduleFileAccessRetry(Ljava/lang/String;Z)V

    return-void

    :cond_11
    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_13
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getType()Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    move-result-object v0

    invoke-direct {p0, p1, v1, v11, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->applyWallpaper(Ljava/lang/Object;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionPlan;Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V

    :goto_7
    return-void
.end method

.method private final loadWithCrossFade(Ljava/lang/Object;Ljava/lang/String;ILcom/deepalhome/launcher/wallpaper/WallpaperType;Z)V
    .locals 9

    xor-int/lit8 v0, p5, 0x1

    invoke-direct {p0, v0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->prepareOutgoingSnapshotIfNeeded(ZZ)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->inactiveImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->activeImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/bumptech/glide/RequestManager$ClearTarget;

    invoke-direct {v2, v0}, Lcom/bumptech/glide/RequestManager$ClearTarget;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    const-class v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->as(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    new-instance v8, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;

    move-object v1, v8

    move-object v2, p0

    move v3, p3

    move-object v4, v0

    move-object v5, p2

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILandroid/widget/ImageView;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperType;Z)V

    invoke-virtual {p1, v8}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/BitmapImageViewTarget;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->updateNightMask()V

    return-void
.end method

.method private final notifyWallpaperFrameReadyInternal()V
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->hasNotifiedWallpaperFrame:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->hasNotifiedWallpaperFrame:Z

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->wallpaperFrameReadyListener:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private final prepareImageContainerForVideoTransition(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getTransitionHelper()Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;->cancel()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->allowVideoReveal:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->videoPosterTargetView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->activeImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->inactiveImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->inactiveImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->inactiveImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->activeImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->activeImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperImageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void
.end method

.method public static synthetic prepareImageContainerForVideoTransition$default(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->prepareImageContainerForVideoTransition(Z)V

    return-void
.end method

.method private final prepareOutgoingSnapshotIfNeeded(ZZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->prepareImageContainerForVideoTransition(Z)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentWallpaperType:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->VIDEO_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getVideoController()Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    move-result-object p1

    iget-object p1, p1, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->currentVideoPath:Ljava/lang/String;

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->captureCurrentVisibleBitmap()Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->detachBitmapIfNeeded(Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->activeImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->activeImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->activeImageView()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->activeImageView()Landroid/widget/ImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getVideoController()Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->stopPlayback()V

    :cond_1
    return-void
.end method

.method public static synthetic prepareOutgoingSnapshotIfNeeded$default(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->prepareOutgoingSnapshotIfNeeded(ZZ)V

    return-void
.end method

.method private final scheduleFileAccessRetry(Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->fileAccessRetryPath:Ljava/lang/String;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->fileAccessRetryPath:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->fileAccessRetryCount:I

    :cond_1
    iget p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->fileAccessRetryCount:I

    const/4 p2, 0x6

    if-lt p1, p2, :cond_2

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->clearFileAccessRetry()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->showDefaultWallpaper()V

    return-void

    :cond_2
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->fileAccessRetryCount:I

    const-wide/16 v0, 0x320

    int-to-long p1, p1

    mul-long/2addr p1, v0

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->fileAccessRetryRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    new-instance v0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->fileAccessRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperIv:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->fileAccessRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method private static final scheduleFileAccessRetry$lambda$7(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->fileAccessRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->loadWallpaper(Z)V

    return-void
.end method

.method private final settleRunningScrollTransitionIfNeeded()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isScrollTransitionRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->runningTransitionPath:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->clearRunningTransitionState()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->runningTransitionType:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->clearRunningTransitionState()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getTransitionHelper()Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;->cancel()V

    invoke-direct {p0, v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->applySettledTransitionState(Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->clearRunningTransitionState()V

    return-void
.end method

.method private final setupVideoTextureListener()V
    .locals 3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperVideoView:Landroid/view/TextureView;

    new-instance v1, Lcom/deepalhome/launcher/pip/PipAppWindow$setupTexture$2;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/deepalhome/launcher/pip/PipAppWindow$setupTexture$2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperVideoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperVideoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getVideoController()Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperVideoView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperVideoView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperVideoContainer:Landroid/widget/FrameLayout;

    new-instance v1, Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private static final setupVideoTextureListener$lambda$1(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getVideoController()Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    move-result-object p0

    iget p1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoWidth:I

    if-lez p1, :cond_0

    iget p2, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoHeight:I

    if-lez p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->applyVideoLayout(II)V

    :cond_0
    return-void
.end method

.method private final showDefaultWallpaper()V
    .locals 5

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->cancelPendingLoad()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getTransitionHelper()Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;->cancel()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->clearRunningTransitionState()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->allowVideoReveal:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->videoPosterTargetView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->clearVideoPosterState()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getVideoController()Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->stopPlayback()V

    iget v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->wallpaperRequestId:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->wallpaperRequestId:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperNextIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperIv:Landroid/widget/ImageView;

    const v3, 0x7f100030

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperIv:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperIv:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperNextIv:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperNextIv:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iput-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isPrimaryVisible:Z

    iput-boolean v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isFirstLoad:Z

    iput-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentWallpaperPath:Ljava/lang/String;

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->IMAGE_RES:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentWallpaperType:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    iput v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->layoutRetryCount:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperImageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->updateNightMask()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->notifyWallpaperFrameReadyInternal()V

    return-void
.end method

.method private final startScrollTransition(Ljava/lang/String;ILcom/deepalhome/launcher/wallpaper/WallpaperType;ZLkotlin/jvm/functions/Function0;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/deepalhome/launcher/wallpaper/WallpaperType;",
            "Z",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->activeImageView()Landroid/widget/ImageView;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->inactiveImageView()Landroid/widget/ImageView;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperImageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    if-eqz p4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getVideoController()Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->stopPlayback()V

    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isScrollTransitionRunning:Z

    move-object/from16 v3, p1

    iput-object v3, v6, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->runningTransitionPath:Ljava/lang/String;

    move-object/from16 v4, p3

    iput-object v4, v6, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->runningTransitionType:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    invoke-direct/range {p0 .. p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getTransitionHelper()Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;

    move-result-object v13

    iget-object v8, v6, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentTransitionDirection:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

    new-instance v12, Lcom/deepalhome/launcher/wallpaper/WallpaperView$startScrollTransition$1;

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$startScrollTransition$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperType;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "outgoing"

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "incoming"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "direction"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v13}, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;->cancel()V

    invoke-static {v14}, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;->reset(Landroid/widget/ImageView;)V

    invoke-static {v15}, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;->reset(Landroid/widget/ImageView;)V

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v0, 0x0

    if-lez v9, :cond_1

    if-gtz v11, :cond_2

    :cond_1
    move-object v2, v12

    goto/16 :goto_6

    :cond_2
    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;->RIGHT_TO_LEFT:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

    if-ne v8, v1, :cond_3

    move v8, v7

    goto :goto_0

    :cond_3
    move v8, v0

    :goto_0
    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v14, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v15, v1}, Landroid/view/View;->setAlpha(F)V

    const v2, 0x3dcccccd    # 0.1f

    if-eqz v8, :cond_4

    int-to-float v3, v9

    :goto_1
    mul-float/2addr v3, v2

    goto :goto_2

    :cond_4
    neg-int v3, v9

    int-to-float v3, v3

    goto :goto_1

    :goto_2
    invoke-virtual {v15, v3}, Landroid/view/View;->setTranslationX(F)V

    const v2, 0x3f83d70a    # 1.03f

    invoke-virtual {v15, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v15, v2}, Landroid/view/View;->setScaleY(F)V

    if-eqz v8, :cond_5

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v9, v0, v9, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    :cond_5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v0, v0, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_3
    invoke-virtual {v15, v2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    iget-object v2, v13, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;->shadowView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    const/high16 v1, -0x40800000    # -1.0f

    :goto_4
    invoke-virtual {v2, v1}, Landroid/view/View;->setScaleX(F)V

    if-eqz v8, :cond_7

    int-to-float v0, v9

    goto :goto_5

    :cond_7
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    neg-float v0, v0

    :goto_5
    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x154

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper$$ExternalSyntheticLambda0;

    move-object v7, v1

    move-object v10, v15

    move-object v2, v12

    move-object v12, v14

    move-object v3, v13

    invoke-direct/range {v7 .. v13}, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper$$ExternalSyntheticLambda0;-><init>(ZILandroid/widget/ImageView;ILandroid/widget/ImageView;Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroidx/fragment/app/DefaultSpecialEffectsController$2;

    invoke-direct {v1, v3, v14, v15, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$2;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/deepalhome/launcher/wallpaper/WallpaperView$startScrollTransition$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, v3, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;->animator:Landroid/animation/ValueAnimator;

    goto :goto_7

    :goto_6
    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x4

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$startScrollTransition$1;->invoke()Ljava/lang/Object;

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->updateNightMask()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic startScrollTransition$default(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Ljava/lang/String;ILcom/deepalhome/launcher/wallpaper/WallpaperType;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->startScrollTransition(Ljava/lang/String;ILcom/deepalhome/launcher/wallpaper/WallpaperType;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final visibleBitmapFrom(Landroid/widget/ImageView;)Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;
    .locals 4

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperImageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperImageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_3
    if-lez v2, :cond_8

    if-gtz p0, :cond_5

    goto :goto_5

    :cond_5
    :try_start_0
    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0, v2, p0}, Lkotlin/io/TextStreamsKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_4
    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_6

    move-object p0, v1

    :cond_6
    check-cast p0, Landroid/graphics/Bitmap;

    if-nez p0, :cond_7

    return-object v1

    :cond_7
    new-instance p1, Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;->VIEW_DRAWABLE:Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    invoke-direct {p1, p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;-><init>(Landroid/graphics/Bitmap;Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;)V

    return-object p1

    :cond_8
    :goto_5
    return-object v1
.end method


# virtual methods
.method public cancelScheduled(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperVideoView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getBlurRootView()Landroid/view/ViewGroup;
    .locals 1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperImageContainer:Landroid/widget/FrameLayout;

    const-string v0, "wallpaperImageContainer"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getFadeDuration()J
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e011a

    return p0
.end method

.method public getPlaybackCheckDelay()J
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getVideoContainer()Landroid/view/ViewGroup;
    .locals 1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperVideoContainer:Landroid/widget/FrameLayout;

    const-string v0, "wallpaperVideoContainer"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getVideoPosterView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->videoPosterTargetView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->activeImageView()Landroid/widget/ImageView;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVideoTextureView()Landroid/view/TextureView;
    .locals 1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperVideoView:Landroid/view/TextureView;

    const-string v0, "wallpaperVideoView"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public isPlaybackEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isVideoPlaybackEnabled:Z

    return p0
.end method

.method public isVideoRevealAllowed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->allowVideoReveal:Z

    return p0
.end method

.method public isViewAttached()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    return p0
.end method

.method public isWindowVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->_isWindowVisible:Z

    return p0
.end method

.method public notifyWallpaperFrameReady()V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->notifyWallpaperFrameReadyInternal()V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isWallpaperListenerRegistered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isWallpaperListenerRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getOnWallpaperChangedListener()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->addOnWallpaperChangedListener(Lkotlin/jvm/functions/Function1;)V

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;->wallpaperViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v2, Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager$cleanup$1;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager$cleanup$1;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_2

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getVideoController()Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    move-result-object v0

    iget-boolean v2, v0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->isAudioListenerRegistered:Z

    if-nez v2, :cond_4

    iput-boolean v1, v0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->isAudioListenerRegistered:Z

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "listener"

    iget-object v3, v0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->audioStateChangedListener:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$audioStateChangedListener$1;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->ensureMusicStateListenerRegistered()V

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, v0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->pendingVideoPath:Ljava/lang/String;

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->pendingVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->prepareVideo(Ljava/lang/String;)V

    :cond_5
    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-static {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->applyPlayerVolume(Landroid/media/MediaPlayer;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->loadWallpaper(Z)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 5

    iget-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isWallpaperListenerRegistered:Z

    const-string v1, "listener"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isWallpaperListenerRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getOnWallpaperChangedListener()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->onWallpaperChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager;->wallpaperViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager$unregister$1;

    invoke-direct {v3, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperRecoveryManager$unregister$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->cancelPendingLoad()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->clearFileAccessRetry()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getTransitionHelper()Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;->cancel()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->clearRunningTransitionState()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->allowVideoReveal:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->videoPosterTargetView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->clearVideoPosterState()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getVideoController()Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    move-result-object v3

    iget-boolean v4, v3, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->isAudioListenerRegistered:Z

    if-eqz v4, :cond_1

    iput-boolean v2, v3, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->isAudioListenerRegistered:Z

    sget-object v2, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v3, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->audioStateChangedListener:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController$audioStateChangedListener$1;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v3}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->stopPlayback()V

    iget-object v1, v3, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    :cond_2
    iput-object v0, v3, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoSurface:Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperNextIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperNextIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_1
    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public onInit()V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->setupVideoTextureListener()V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->_isWindowVisible:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->_isWindowVisible:Z

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getVideoController()Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->updateVideoPlaybackState()V

    :cond_1
    return-void
.end method

.method public final refreshFromLifecycle()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getVideoController()Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->stopPlayback()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->clearFileAccessRetry()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentWallpaperPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->currentWallpaperType:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->clearVideoPosterState()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isFirstLoad:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->layoutRetryCount:I

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->loadWallpaper(Z)V

    return-void
.end method

.method public scheduleDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperVideoView:Landroid/view/TextureView;

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final setOnWallpaperFrameReadyListener(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->wallpaperFrameReadyListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setVideoPlaybackEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isVideoPlaybackEnabled:Z

    if-ne v0, p1, :cond_5

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getVideoController()Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    move-result-object p0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->currentVideoPath:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->isVideoPrepared:Z

    if-nez v0, :cond_3

    :cond_1
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->prepareVideo(Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->updateVideoPlaybackState()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->cancelPlaybackCheck()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->updateVideoPlaybackState()V

    :goto_1
    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isVideoPlaybackEnabled:Z

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getVideoController()Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    move-result-object p0

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->currentVideoPath:Ljava/lang/String;

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->isVideoPrepared:Z

    if-nez v0, :cond_9

    :cond_7
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->prepareVideo(Ljava/lang/String;)V

    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->updateVideoPlaybackState()V

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->cancelPlaybackCheck()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->updateVideoPlaybackState()V

    :goto_3
    return-void
.end method

.method public updateNightMask()V
    .locals 2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->nightMaskView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isNightMode:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->nightMaskView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method public updateUIMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->isNightMode:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->updateNightMask()V

    return-void
.end method
