.class public final Lcom/deepalhome/launcher/launcher/LauncherFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/launcher/LauncherFragment$Companion;

.field private static final HUD_RESTORE_RETRY_DELAYS_MS:[J

.field private static final IMAGE_WIDGET_PICKER_TAG:Ljava/lang/String; = "image_widget_picker"

.field private static final NAV_DRAG_DIRECTION_RATIO:F = 1.5f

.field private static final NAV_DRAG_SLOP_MULTIPLIER:I = 0x2


# instance fields
.field private amapCompatibilityCheckRunnable:Ljava/lang/Runnable;

.field private announcementDialog:Landroid/app/Dialog;

.field private appCenterView:Lcom/deepalhome/launcher/app/AppCenterView;

.field private binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

.field private cachedDownloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;",
            ">;"
        }
    .end annotation
.end field

.field private cachedDownloadsAt:J

.field private final carInfoChangedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final carS05InfoChangedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private desktopWidgetManager:Lcom/deepalhome/launcher/widget/DesktopWidgetManager;

.field private disclaimerDialog:Landroid/app/Dialog;

.field private gestureGuideDialog:Landroid/app/Dialog;

.field private final gestureGuideRunnable:Ljava/lang/Runnable;

.field private hasTriggeredAutoStart:Z

.field private hudRestoreAttempt:I

.field private hudRestoreRunnable:Ljava/lang/Runnable;

.field private isBottomNavigationStyle:Z

.field private isCheckingAnnouncementUpdate:Z

.field private isLoadingDownloadWallpapers:Z

.field private volatile isNavigationBarManuallyHidden:Z

.field private lastGear:Ljava/lang/String;

.field private lastNoWallpaperToastAt:J

.field private final navBarEditorDelegate:Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;

.field private navDragActive:Z

.field private navDragStartTranslation:F

.field private navDragStartX:F

.field private navDragStartY:F

.field private navDragTracking:Z

.field private navDragVelocityTracker:Landroid/view/VelocityTracker;

.field private navDragWidth:F

.field private navHeightCache:F

.field private navWidthCache:F

.field private final navigationBarVisibilityListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final onWindowsChangedListener:Lcom/deepalhome/launcher/launcher/LauncherFragment$onWindowsChangedListener$1;

.field private pendingWallpaperSwitch:Ljava/lang/Boolean;

.field private final statusBarVisibilityListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final wallpaperChangedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private windowsDragActive:Z

.field private final windowsDragMaxFlingVelocity$delegate:Lkotlin/Lazy;

.field private final windowsDragMinFlingVelocity$delegate:Lkotlin/Lazy;

.field private final windowsDragSlop$delegate:Lkotlin/Lazy;

.field private windowsDragStartTranslation:F

.field private windowsDragStartX:F

.field private windowsDragStartY:F

.field private windowsDragTracking:Z

.field private windowsDragVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static synthetic $r8$lambda$1OlyUzgHSKxICg8ZPRMKXaKrPU4(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->performSwitchDownloadedWallpaper$lambda$14(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$2R6yI7UnWE0KvHefNXvCorByl4M(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->gestureGuideRunnable$lambda$0(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3djF2CQ6Qcmh9E_vkidLNco_xBc(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->showUpdateReleaseAnnouncement$lambda$49(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6BGTUZeZ3z-5u49C0d1DG2Q97RE(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->showGestureGuideDialog$lambda$45(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Eex0qkt2GpDIuRSxOQ-ywo6zZw(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->finishNavDrag$lambda$12(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$AjKI4GkcMsGYQGdA6IKx9Q8EZso(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/io/File;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->copySelectedWallpaper$lambda$28$lambda$18(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BoRQ9Nln-vOZ2cPCzej1hYjL8Vo(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->scheduleNextHudRestoreAttempt$lambda$53(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JqqkzgfqVPgvJ4OBhRPp3ugOVWw(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->onViewCreated$lambda$36(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KZEr7nX0hcobrCxilGtJdcPabfk(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->hideNavigationBar$lambda$64(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$PWHs6kdj21QJxbIPfvn36WA-g08(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->onResume$lambda$42(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RF4BIX-a9ck3RACAsRkGtRs31FE(Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->showDisclaimerDialog$lambda$48(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TstVkQB65QGaC0Py6Iw4agL71NE(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->onViewCreated$lambda$38(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UtbPO7FdVfxGgIkKUQb8bUAm8H8(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->onViewCreated$lambda$39(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YyPiyXV2eSigq3B2yHPsBbAk8jE(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->onViewCreated$lambda$37(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$a6GUurON-ZttWSQGhJedFPg3GaQ(Lcom/deepalhome/launcher/util/GestureHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->onViewCreated$lambda$41$lambda$40(Lcom/deepalhome/launcher/util/GestureHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aYDwDW2wpOPH6VZ6WJ3CZP451bM(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->scheduleAmapCompatibilityCheck$lambda$50(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$alVdhMpXYEpWQq-JeDskcM-lZj8(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->onViewCreated$lambda$33(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bK1CCsg96tfCULtjOTdUxnhweEk(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/io/File;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->copySelectedWallpaper$lambda$28$lambda$21(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cEO-0ixjVTp9ILxZPFRNvrx28l0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->onViewCreated$lambda$32(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dfSNxc8UtS3sQFHrx-PRvly7PSg(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->performSwitchDownloadedWallpaper$lambda$14$lambda$13(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$eRutGHAsXIaaO1eptQzY27-z0CA(ILjava/lang/String;Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->applyImageToWidget$lambda$61(ILjava/lang/String;Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fio57liMt3js2ypYrBpukNZgWwY(ILjava/lang/String;Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-static {p2, p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->applyImageToWidget$lambda$61$lambda$60(Lcom/deepalhome/launcher/launcher/LauncherFragment;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h5lQaTNOPQIJXRPCqlv9Eb6vZ4w(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZLjava/io/File;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->copySelectedWallpaper$lambda$28$lambda$27(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZLjava/io/File;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$knDBkIL3idkn7y1wAzlcizYJ70Q(Landroid/net/Uri;Ljava/lang/String;Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->copySelectedWallpaper$lambda$28(Landroid/net/Uri;Ljava/lang/String;Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/content/ContentResolver;)V

    return-void
.end method

.method public static synthetic $r8$lambda$llngzbwV-VNv0n8R6AMyG7rcyKE(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->startEditDesktop$lambda$56(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tGbqgfjdrqKddJfw1THTb64jigY(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->startEditDesktop$lambda$54(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xaQ5X7rHNAvzsyVgjoFbMm6nUoI(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->onResume$lambda$44(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xoBdgnSd0MwQzClTW69oSI9cU90(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->showNavigationBar$lambda$63(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->Companion:Lcom/deepalhome/launcher/launcher/LauncherFragment$Companion;

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->HUD_RESTORE_RETRY_DELAYS_MS:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x1388
        0x2710
        0x4e20
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    iput-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->gestureGuideRunnable:Ljava/lang/Runnable;

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->cachedDownloads:Ljava/util/List;

    new-instance v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$windowsDragSlop$2;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$windowsDragSlop$2;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragSlop$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$windowsDragMinFlingVelocity$2;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$windowsDragMinFlingVelocity$2;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragMinFlingVelocity$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$windowsDragMaxFlingVelocity$2;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$windowsDragMaxFlingVelocity$2;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragMaxFlingVelocity$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navBarEditorDelegate:Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;

    new-instance v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onWindowsChangedListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$onWindowsChangedListener$1;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->onWindowsChangedListener:Lcom/deepalhome/launcher/launcher/LauncherFragment$onWindowsChangedListener$1;

    new-instance v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$wallpaperChangedListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$wallpaperChangedListener$1;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->wallpaperChangedListener:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$statusBarVisibilityListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$statusBarVisibilityListener$1;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->statusBarVisibilityListener:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$navigationBarVisibilityListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$navigationBarVisibilityListener$1;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navigationBarVisibilityListener:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$carInfoChangedListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$carInfoChangedListener$1;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->carInfoChangedListener:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$carS05InfoChangedListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$carS05InfoChangedListener$1;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->carS05InfoChangedListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$activeNavigationBarView(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->activeNavigationBarView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$applyImageToWidget(Lcom/deepalhome/launcher/launcher/LauncherFragment;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->applyImageToWidget(ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$applyNavigationBarStyle(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->applyNavigationBarStyle()V

    return-void
.end method

.method public static final synthetic access$applyStatusBarVisibility(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->applyStatusBarVisibility()V

    return-void
.end method

.method public static final synthetic access$beginNavDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->beginNavDrag()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$canStartSingleFingerDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->canStartSingleFingerDrag(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$canSwitchDownloadedWallpaper(Lcom/deepalhome/launcher/launcher/LauncherFragment;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->canSwitchDownloadedWallpaper(FF)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$computeNavDragVelocityX(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->computeNavDragVelocityX()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$computeWindowsDragVelocityY(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->computeWindowsDragVelocityY()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$dismissAppCenter(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->dismissAppCenter()V

    return-void
.end method

.method public static final synthetic access$finishNavDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->finishNavDrag(Z)V

    return-void
.end method

.method public static final synthetic access$getAnnouncementDialog$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->announcementDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static final synthetic access$getAppCenterView$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/app/AppCenterView;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->appCenterView:Lcom/deepalhome/launcher/app/AppCenterView;

    return-object p0
.end method

.method public static final synthetic access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    return-object p0
.end method

.method public static final synthetic access$getDisclaimerDialog$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->disclaimerDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static final synthetic access$getGestureGuideRunnable$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->gestureGuideRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getLastGear$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->lastGear:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getNavDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragActive:Z

    return p0
.end method

.method public static final synthetic access$getNavDragStartTranslation$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragStartTranslation:F

    return p0
.end method

.method public static final synthetic access$getNavDragStartX$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragStartX:F

    return p0
.end method

.method public static final synthetic access$getNavDragTracking$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragTracking:Z

    return p0
.end method

.method public static final synthetic access$getNavDragVelocityTracker$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Landroid/view/VelocityTracker;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method public static final synthetic access$getNavDragWidth$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragWidth:F

    return p0
.end method

.method public static final synthetic access$getNavHeightCache$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navHeightCache:F

    return p0
.end method

.method public static final synthetic access$getWindowsDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragActive:Z

    return p0
.end method

.method public static final synthetic access$getWindowsDragSlop(Lcom/deepalhome/launcher/launcher/LauncherFragment;)I
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->getWindowsDragSlop()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getWindowsDragStartTranslation$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragStartTranslation:F

    return p0
.end method

.method public static final synthetic access$getWindowsDragStartY$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragStartY:F

    return p0
.end method

.method public static final synthetic access$getWindowsDragTracking$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragTracking:Z

    return p0
.end method

.method public static final synthetic access$getWindowsDragVelocityTracker$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Landroid/view/VelocityTracker;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method public static final synthetic access$hideNavigationBar(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->hideNavigationBar(ZZ)V

    return-void
.end method

.method public static final synthetic access$isBlankDesktopArea(Lcom/deepalhome/launcher/launcher/LauncherFragment;FF)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isBlankDesktopArea(FF)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isBottomNavigationStyle$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isBottomNavigationStyle:Z

    return p0
.end method

.method public static final synthetic access$maybeScheduleGestureGuideAfterAutoStart(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->maybeScheduleGestureGuideAfterAutoStart()V

    return-void
.end method

.method public static final synthetic access$maybeShowAnnouncementAfterGestureGuide(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->maybeShowAnnouncementAfterGestureGuide()V

    return-void
.end method

.method public static final synthetic access$onAppCenterDismissed(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->onAppCenterDismissed()V

    return-void
.end method

.method public static final synthetic access$performSwitchDownloadedWallpaper(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->performSwitchDownloadedWallpaper(Z)V

    return-void
.end method

.method public static final synthetic access$refreshActiveNavigationBarAppearance(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->refreshActiveNavigationBarAppearance()V

    return-void
.end method

.method public static final synthetic access$releaseAppCenter(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->releaseAppCenter(Z)V

    return-void
.end method

.method public static final synthetic access$resetNavDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resetNavDrag()V

    return-void
.end method

.method public static final synthetic access$resetWindowsDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resetWindowsDrag()V

    return-void
.end method

.method public static final synthetic access$resolveAppCenterView(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/app/AppCenterView;
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resolveAppCenterView()Lcom/deepalhome/launcher/app/AppCenterView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$resolveNavWidth(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resolveNavWidth(Z)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$setAppCenterView$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->appCenterView:Lcom/deepalhome/launcher/app/AppCenterView;

    return-void
.end method

.method public static final synthetic access$setCheckingAnnouncementUpdate$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isCheckingAnnouncementUpdate:Z

    return-void
.end method

.method public static final synthetic access$setDisclaimerDialog$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->disclaimerDialog:Landroid/app/Dialog;

    return-void
.end method

.method public static final synthetic access$setLastGear$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->lastGear:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setNavDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragActive:Z

    return-void
.end method

.method public static final synthetic access$setNavDragStartX$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragStartX:F

    return-void
.end method

.method public static final synthetic access$setNavDragStartY$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragStartY:F

    return-void
.end method

.method public static final synthetic access$setNavDragTracking$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragTracking:Z

    return-void
.end method

.method public static final synthetic access$setNavDragVelocityTracker$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/VelocityTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method public static final synthetic access$setNavHeightCache$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navHeightCache:F

    return-void
.end method

.method public static final synthetic access$setNavWidthCache$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navWidthCache:F

    return-void
.end method

.method public static final synthetic access$setWindowsDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragActive:Z

    return-void
.end method

.method public static final synthetic access$setWindowsDragStartTranslation$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragStartTranslation:F

    return-void
.end method

.method public static final synthetic access$setWindowsDragStartX$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragStartX:F

    return-void
.end method

.method public static final synthetic access$setWindowsDragStartY$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragStartY:F

    return-void
.end method

.method public static final synthetic access$setWindowsDragTracking$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragTracking:Z

    return-void
.end method

.method public static final synthetic access$setWindowsDragVelocityTracker$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/VelocityTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method public static final synthetic access$shouldAutoShowNavigationBar(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->shouldAutoShowNavigationBar()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$shouldFinishNavShow(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->shouldFinishNavShow(F)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$shouldFinishWindowsShow(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->shouldFinishWindowsShow(F)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$showImageWidgetPicker(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->showImageWidgetPicker(I)V

    return-void
.end method

.method public static final synthetic access$showNavigationBar(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->showNavigationBar()V

    return-void
.end method

.method public static final synthetic access$showSystemStatusBar(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->showSystemStatusBar()V

    return-void
.end method

.method public static final synthetic access$showUpdateReleaseAnnouncement(Lcom/deepalhome/launcher/launcher/LauncherFragment;Lcom/deepalhome/launcher/http/S05AppUpdateInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->showUpdateReleaseAnnouncement(Lcom/deepalhome/launcher/http/S05AppUpdateInfo;)V

    return-void
.end method

.method public static final synthetic access$startEditDesktop(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->startEditDesktop()V

    return-void
.end method

.method public static final synthetic access$stopEdit(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->stopEdit()V

    return-void
.end method

.method public static final synthetic access$switchDownloadedWallpaper(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->switchDownloadedWallpaper(Z)V

    return-void
.end method

.method public static final synthetic access$toggleAppCenter(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->toggleAppCenter(Z)V

    return-void
.end method

.method public static final synthetic access$updateBottomNavigationBarAppearance(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->updateBottomNavigationBarAppearance()V

    return-void
.end method

.method public static final synthetic access$updateWallpaperVideoPlaybackState(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->updateWallpaperVideoPlaybackState()V

    return-void
.end method

.method private final activeNavigationBarView()Landroid/view/View;
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isBottomNavigationStyle:Z

    const/4 v1, 0x0

    const-string v2, "binding"

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const-string v0, "bottomNavigationBar"

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    :goto_0
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "navigationBar"

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    goto :goto_0

    :goto_1
    return-object p0

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final applyDownloadedWallpaperSwitch(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->cachedDownloads:Ljava/util/List;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->cachedDownloadsAt:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->lastNoWallpaperToastAt:J

    sub-long v0, p1, v0

    const-wide/16 v3, 0x5dc

    cmp-long v0, v0, v3

    if-lez v0, :cond_3

    iput-wide p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->lastNoWallpaperToastAt:J

    const p1, 0x7f130490

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq v1, p1, :cond_5

    iput-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->cachedDownloads:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->cachedDownloadsAt:J

    :cond_5
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->getWallpaper()Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getType()Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    move-result-object p1

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->IMAGE_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    if-eq p1, v1, :cond_7

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getType()Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    move-result-object p1

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->VIDEO_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    if-ne p1, v1, :cond_6

    goto :goto_1

    :cond_6
    const-string p0, ""

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getFilePath()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v2

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    move v1, v4

    :goto_4
    const/4 p0, 0x1

    if-gez v1, :cond_b

    if-eqz p2, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v2, p1, -0x1

    goto :goto_5

    :cond_b
    if-eqz p2, :cond_c

    move v4, p0

    :cond_c
    add-int/2addr v1, v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    rem-int v2, p0, p1

    :goto_5
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getAbsolutePath(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionMath;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionMath;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_d

    sget-object p2, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;->RIGHT_TO_LEFT:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

    goto :goto_6

    :cond_d
    sget-object p2, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;->LEFT_TO_RIGHT:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->setWallpaper(Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;)V

    return-void
.end method

.method private final applyImageToWidget(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x2

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;-><init>(ILjava/lang/String;Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final applyImageToWidget$lambda$61(ILjava/lang/String;Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 6

    const-string v0, "$sourcePath"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "this$0"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/widget/ImageWidgetCacheManager;->INSTANCE:Lcom/deepalhome/launcher/widget/ImageWidgetCacheManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_5

    :cond_1
    sget-object v2, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->isVideoFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-static {p0}, Lcom/deepalhome/launcher/widget/ImageWidgetCacheManager;->deleteWidgetCacheById(I)V

    invoke-static {v0}, Lkotlin/io/FilesKt__UtilsKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "US"

    const-string v4, "toLowerCase(...)"

    invoke-static {v2, v3, p1, v2, v4}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->isImageExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "jpg"

    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/deepalhome/launcher/widget/ImageWidgetCacheManager;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "widget_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    sget p1, Lkotlin/Result;->$r8$clinit:I

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v3, 0x2000

    :try_start_2
    invoke-static {p1, v0, v3}, Lokio/Okio;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v4

    :try_start_6
    invoke-static {v0, v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_1
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v3

    :try_start_8
    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_2
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v1, p1

    goto :goto_4

    :cond_4
    :try_start_9
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_4
    check-cast v1, Ljava/lang/String;

    :cond_5
    :goto_5
    new-instance p1, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;

    invoke-direct {p1, p2, p0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda6;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;ILjava/lang/String;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final applyImageToWidget$lambda$61$lambda$60(Lcom/deepalhome/launcher/launcher/LauncherFragment;ILjava/lang/String;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->desktopWidgetManager:Lcom/deepalhome/launcher/widget/DesktopWidgetManager;

    const-string v1, "desktopWidgetManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/deepalhome/launcher/widget/DesktopWidgetManager;->getWidgets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/deepalhome/launcher/widget/WidgetInfo;

    iget v4, v4, Lcom/deepalhome/launcher/widget/WidgetInfo;->id:I

    if-ne v4, p1, :cond_1

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    check-cast v3, Lcom/deepalhome/launcher/widget/WidgetInfo;

    if-nez v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->cleanupOrphanedImageWidgetCache(ILjava/lang/String;)V

    return-void

    :cond_3
    const/4 p1, 0x0

    if-eqz p2, :cond_7

    invoke-static {p2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iput-object p2, v3, Lcom/deepalhome/launcher/widget/WidgetInfo;->data:Ljava/lang/Object;

    iget-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p2, :cond_6

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-virtual {p2, v3}, Lcom/deepalhome/launcher/widget/WidgetsView;->refreshWidget(Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    iget-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->desktopWidgetManager:Lcom/deepalhome/launcher/widget/DesktopWidgetManager;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/deepalhome/launcher/widget/DesktopWidgetManager;->save()V

    const p2, 0x7f130262

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_1
    const p2, 0x7f130261

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->cleanupOrphanedImageWidgetCache(ILjava/lang/String;)V

    return-void
.end method

.method private final applyNavigationBarStyle()V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->shouldUseBottomNavigationStyle()Z

    move-result v0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isBottomNavigationStyle:Z

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->updateGestureBarLayout(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "binding"

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070055

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v6, :cond_a

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    move-object v7, v1

    :goto_0
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_3

    :cond_2
    iget v6, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navHeightCache:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    cmpl-float v6, v6, v2

    if-lez v6, :cond_3

    goto :goto_1

    :cond_3
    move-object v7, v1

    :goto_1
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object v6, v1

    :goto_2
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_5
    :goto_3
    int-to-float v6, v5

    iput v6, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navHeightCache:F

    sget-object v6, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/deepalhome/launcher/window/AppWindowsManager;->setExtraBottomInset(I)V

    iget-object v5, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v5, :cond_9

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v5, :cond_8

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    const-string v6, "bottomNavigationBar"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v5}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lez v6, :cond_c

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavHeightCache$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {p0, v6}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setNavHeightCache$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v5}, Lcom/deepalhome/launcher/window/AppWindowsManager;->setExtraBottomInset(I)V

    goto :goto_4

    :cond_7
    new-instance v6, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$$inlined$doOnLayout$1;

    const/4 v7, 0x1

    invoke-direct {v6, p0, v7}, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$$inlined$doOnLayout$1;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_4

    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_b
    iput v2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navHeightCache:F

    sget-object v5, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/window/AppWindowsManager;->setExtraBottomInset(I)V

    :cond_c
    :goto_4
    const/16 v5, 0x8

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resetNavDrag()V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isNavigationBarManuallyHidden:Z

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->updateBottomNavigationBarAppearance()V

    goto/16 :goto_7

    :cond_d
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_e
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_f
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_10
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_11
    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resolveAppCenterView()Lcom/deepalhome/launcher/app/AppCenterView;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode()Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_5

    :cond_12
    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_13

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/app/AppCenterView;->exitEditMode(Z)Z

    :cond_13
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_20

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->finishEditSession(Z)Z

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->clearBackground()V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_1d

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isNavigationBarManuallyHidden:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_14
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_15
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_16
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_1a

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_19

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p0, :cond_17

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getBlurRootView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/navigation/NavigationBar;->startBlur(Landroid/view/ViewGroup;)V

    goto :goto_7

    :cond_17
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_18
    :goto_7
    return-void

    :cond_19
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1c
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1d
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1e
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1f
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_20
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final applyS05WidgetsViewMargins()V
    .locals 6

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07035d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07009c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v4

    div-int v5, v4, v3

    mul-int/2addr v5, v3

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final applyStatusBarVisibility()V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyStatusBarVisibility(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->isCarStatusBarVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isRealCar()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->fakeStatusBar:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final beginNavDrag()Z
    .locals 9

    iget-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isBottomNavigationStyle:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resolveNavWidth(Z)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_1

    return v1

    :cond_1
    iput v2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragWidth:F

    iget-object v4, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    const/4 v5, 0x0

    const-string v6, "binding"

    if-eqz v4, :cond_e

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v4, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v4, :cond_d

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v0

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    if-nez v4, :cond_4

    iget-object v7, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v7, :cond_3

    iget-object v7, v7, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    neg-float v8, v2

    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_3
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v7, :cond_c

    iget-object v7, v7, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v1, :cond_b

    if-eqz v1, :cond_a

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v7

    neg-float v2, v2

    invoke-static {v7, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    if-nez v4, :cond_7

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v1, :cond_6

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getBlurRootView()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/navigation/NavigationBar;->startBlur(Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_5
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_6
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragStartTranslation:F

    return v0

    :cond_8
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_9
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_a
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_b
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_c
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_d
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_e
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5
.end method

.method private final buildWallpaperTargetFile(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/File;
    .locals 6

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->getDownloadDir()Ljava/io/File;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->queryDisplayName(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "wallpaper_"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const-string v4, "."

    invoke-static {p1, v4, v3}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    const/16 v5, 0x2e

    if-nez v3, :cond_4

    invoke-direct {p0, p2, p3}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->guessWallpaperExtension(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "jpg"

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p0, "/"

    const-string p2, "_"

    invoke-static {p1, p0, p2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\"

    invoke-static {p0, p1, p2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {p0, v4, p0}, Lkotlin/text/StringsKt__StringsKt;->substringBeforeLast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v4, v1}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move p3, v2

    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v2

    const/16 v1, 0x5f

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    move-object p1, v1

    goto :goto_1

    :cond_6
    return-object p1
.end method

.method private final canStartSingleFingerDrag(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/WidgetsView;->isEditMode()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    sget-object p0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->isAppCenterShown()Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    return v1

    :cond_5
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final canSwitchDownloadedWallpaper(FF)Z
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isTwoFingerWallpaperSwitchEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/widget/WidgetsView;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->isAppCenterShown()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isBlankDesktopArea(FF)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1

    :cond_3
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final cleanupOrphanedImageWidgetCache(ILjava/lang/String;)V
    .locals 9

    if-eqz p2, :cond_1

    invoke-static {p2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/deepalhome/launcher/widget/ImageWidgetCacheManager;->INSTANCE:Lcom/deepalhome/launcher/widget/ImageWidgetCacheManager;

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    const-class v0, Lcom/deepalhome/launcher/widget/ImageWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x78

    move-object v0, v8

    move v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/deepalhome/launcher/widget/ImageWidgetCacheManager;->deleteWidgetCache(Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final computeNavDragVelocityX()F
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x3e8

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->getWindowsDragMaxFlingVelocity()F

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p0

    return p0
.end method

.method private final computeWindowsDragVelocityY()F
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x3e8

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->getWindowsDragMaxFlingVelocity()F

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0
.end method

.method private final copySelectedWallpaper(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->realPath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/luck/picture/lib/entity/LocalMedia;->path:Ljava/lang/String;

    const-string p1, "getPath(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v3, v0

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const p1, 0x7f130499

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    move-object v5, p1

    goto :goto_0

    :cond_2
    move-object v5, v1

    :goto_0
    if-nez v5, :cond_3

    const p1, 0x7f130480

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string p1, "content://"

    invoke-static {v3, p1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "file://"

    invoke-static {v3, p1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    move-object v2, p1

    :goto_2
    const/4 p1, -0x2

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final copySelectedWallpaper$lambda$28(Landroid/net/Uri;Ljava/lang/String;Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/content/ContentResolver;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "$sourcePath"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "this$0"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "$resolver"

    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->getDownloadDir()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-nez p0, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda24;

    invoke-direct {p0, p2, v4, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda24;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/io/File;I)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const-wide/16 v5, -0x1

    if-eqz p0, :cond_5

    :try_start_0
    sget v4, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {p3, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v4, v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v4

    goto :goto_2

    :catchall_1
    move-exception v7

    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v8

    :try_start_4
    invoke-static {v4, v7}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    move-object v7, v3

    goto :goto_3

    :goto_2
    sget v7, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v7

    :goto_3
    instance-of v4, v7, Lkotlin/Result$Failure;

    if-eqz v4, :cond_4

    move-object v7, v3

    :cond_4
    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-ne v7, v0, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    :cond_6
    :goto_4
    if-eqz p0, :cond_7

    invoke-direct {p2, p0, p3}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->queryDisplayName(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_7
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v0

    if-eqz v4, :cond_8

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_8
    const-string v4, ""

    :goto_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v0

    if-eqz v7, :cond_9

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_9

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v2, v8, v5

    if-nez v2, :cond_9

    new-instance p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda24;

    invoke-direct {p0, p2, v7, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda24;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/io/File;I)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    invoke-direct {p2, p1, p0, p3}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->buildWallpaperTargetFile(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    :try_start_5
    sget v2, Lkotlin/Result;->$r8$clinit:I

    const/16 v2, 0x2000

    if-eqz p0, :cond_c

    invoke-virtual {p3, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz p3, :cond_a

    :try_start_6
    iput-boolean v0, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-static {p3, v6, v2}, Lokio/Okio;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    invoke-static {v6, v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    invoke-static {p3, v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v3, v2

    goto :goto_7

    :catchall_3
    move-exception p3

    goto :goto_b

    :catchall_4
    move-exception v0

    goto :goto_6

    :catchall_5
    move-exception v0

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v1

    :try_start_b
    invoke-static {v6, v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_6
    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :catchall_7
    move-exception v1

    :try_start_d
    invoke-static {p3, v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    :goto_7
    if-eqz v3, :cond_b

    goto :goto_8

    :cond_b
    move v0, v1

    goto :goto_8

    :cond_c
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_9

    :cond_d
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    iput-boolean v0, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :try_start_f
    invoke-static {v1, p3, v2}, Lokio/Okio;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :try_start_10
    invoke-static {p3, v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :try_start_11
    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_8
    move v1, v0

    :goto_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_c

    :catchall_8
    move-exception p3

    goto :goto_a

    :catchall_9
    move-exception v0

    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    :catchall_a
    move-exception v2

    :try_start_13
    invoke-static {p3, v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :goto_a
    :try_start_14
    throw p3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    :catchall_b
    move-exception v0

    :try_start_15
    invoke-static {v1, p3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :goto_b
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p3

    :goto_c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v1, p3, Lkotlin/Result$Failure;

    if-eqz v1, :cond_e

    move-object p3, v0

    :cond_e
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_f

    goto :goto_d

    :cond_f
    move-object v6, p0

    goto :goto_e

    :cond_10
    :goto_d
    move-object v6, p1

    :goto_e
    new-instance p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda26;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda26;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZLjava/io/File;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final copySelectedWallpaper$lambda$28$lambda$18(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/io/File;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getAbsolutePath(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->setWallpaper$default(Lcom/deepalhome/launcher/wallpaper/WallpaperManager;Ljava/lang/String;)V

    const p1, 0x7f13049b

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static final copySelectedWallpaper$lambda$28$lambda$21(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/io/File;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$existingFile"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "getAbsolutePath(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->setWallpaper$default(Lcom/deepalhome/launcher/wallpaper/WallpaperManager;Ljava/lang/String;)V

    const p1, 0x7f13049c

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static final copySelectedWallpaper$lambda$28$lambda$27(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZLjava/io/File;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$targetFile"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$sourceReadable"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$fallbackPath"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "getAbsolutePath(...)"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->setWallpaper$default(Lcom/deepalhome/launcher/wallpaper/WallpaperManager;Ljava/lang/String;)V

    const p1, 0x7f13049e

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_2

    invoke-static {p4}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-static {p1, p4}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->setWallpaper$default(Lcom/deepalhome/launcher/wallpaper/WallpaperManager;Ljava/lang/String;)V

    const p1, 0x7f13049d

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const p1, 0x7f13049a

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final dismissAppCenter()V
    .locals 6

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resolveAppCenterView()Lcom/deepalhome/launcher/app/AppCenterView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/app/AppCenterView;->exitEditMode(Z)Z

    :cond_1
    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    const-string v3, "contentView"

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->contentView:Landroid/widget/FrameLayout;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroidx/recyclerview/widget/DefaultItemAnimator$4;

    invoke-direct {v4, v2, v1, v0, p0}, Landroidx/recyclerview/widget/DefaultItemAnimator$4;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/widget/FrameLayout;Lcom/deepalhome/launcher/app/AppCenterView;Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->appCenterView:Lcom/deepalhome/launcher/app/AppCenterView;

    if-ne v1, v0, :cond_5

    iput-object v2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->appCenterView:Lcom/deepalhome/launcher/app/AppCenterView;

    :cond_5
    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->onAppCenterDismissed()V

    return-void

    :cond_6
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final finishNavDrag(Z)V
    .locals 7

    iget-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isBottomNavigationStyle:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragWidth:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resolveNavWidth(Z)F

    move-result v0

    :goto_1
    cmpg-float v4, v0, v2

    const-string v5, "binding"

    if-gtz v4, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    const/16 v2, 0x8

    if-eqz p1, :cond_4

    move v4, v1

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    if-eqz p1, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isNavigationBarManuallyHidden:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setNavigationGestureBarShown(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfigImmediately()V

    return-void

    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_7
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_8
    if-eqz p1, :cond_9

    move v4, v2

    goto :goto_3

    :cond_9
    neg-float v4, v0

    :goto_3
    iget-object v6, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v6, :cond_e

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v6, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v6, :cond_d

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v1, :cond_c

    iget-object v6, v1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    if-eqz v1, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v1

    neg-float v0, v0

    invoke-static {v1, v0, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda5;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda5;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZI)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_a
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_b
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_c
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_d
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_e
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private static final finishNavDrag$lambda$12(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v4, :cond_1

    iget-object v2, v4, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isNavigationBarManuallyHidden:Z

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v4, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v4, :cond_5

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isNavigationBarManuallyHidden:Z

    :goto_0
    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setNavigationGestureBarShown(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfigImmediately()V

    return-void

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private static final gestureGuideRunnable$lambda$0(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->showGestureGuideDialog()V

    return-void
.end method

.method private final getWindowsDragMaxFlingVelocity()F
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragMaxFlingVelocity$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getWindowsDragMinFlingVelocity()F
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragMinFlingVelocity$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getWindowsDragSlop()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragSlop$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method private final guessWallpaperExtension(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final hideNavigationBar(ZZ)V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isBottomNavigationStyle:Z

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "binding"

    if-eqz v0, :cond_7

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isNavigationBarManuallyHidden:Z

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setNavigationGestureBarShown(Z)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfigImmediately()V

    :cond_1
    iget-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    if-eqz p2, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_3

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->updateBottomNavigationBarAppearance()V

    :cond_3
    return-void

    :cond_4
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_7
    iget-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragActive:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, v3}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->finishNavDrag(Z)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resetNavDrag()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_9

    iput-boolean v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isNavigationBarManuallyHidden:Z

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setNavigationGestureBarShown(Z)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfigImmediately()V

    :cond_9
    iget-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p1, :cond_e

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_c

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    if-eqz p2, :cond_a

    move v2, v3

    :cond_a
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_b
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_c
    invoke-direct {p0, v3}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resolveNavHideDistance(Z)F

    move-result p1

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    neg-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda5;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZI)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_d
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_e
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_f
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method public static synthetic hideNavigationBar$default(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->hideNavigationBar(ZZ)V

    return-void
.end method

.method private static final hideNavigationBar$lambda$64(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final isBlankDesktopArea(FF)Z
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v1, :cond_9

    iget-object v1, v1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v4, v0, v1

    int-to-float v4, v4

    add-float/2addr v4, p1

    const/4 p1, 0x1

    aget v0, v0, p1

    int-to-float v0, v0

    add-float/2addr v0, p2

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->activeNavigationBarView()Landroid/view/View;

    move-result-object p2

    invoke-direct {p0, v4, v0, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isPointInsideView(FFLandroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p2, :cond_7

    const-string v5, "navigationGestureBar"

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v4, v0, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isPointInsideView(FFLandroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p2, :cond_6

    const-string v5, "fakeStatusBar"

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->fakeStatusBar:Landroid/widget/ImageView;

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v4, v0, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isPointInsideView(FFLandroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p2, :cond_5

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->editModeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p2, :cond_0

    const-string v5, "editModeContainer"

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->editModeContainer:Landroid/widget/FrameLayout;

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v4, v0, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isPointInsideView(FFLandroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p2, :cond_4

    const-string v1, "widgetsView"

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v4, v0, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isPointInsideView(FFLandroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-virtual {p0, v4, v0}, Lcom/deepalhome/launcher/widget/WidgetsView;->isPointOnEmptyArea(FF)Z

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_0
    return p1

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_8
    :goto_1
    return v1

    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final isPointInsideView(FFLandroid/view/View;)Z
    .locals 4

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p3, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, p0, v0

    const/4 v2, 0x1

    aget p0, p0, v2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    add-int/2addr p3, p0

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    int-to-float v1, v3

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_1

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_1

    int-to-float p0, p3

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_1

    move v0, v2

    :cond_1
    :goto_0
    return v0
.end method

.method private final maybeScheduleGestureGuideAfterAutoStart()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getHasAcknowledgedDisclaimer()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->showDisclaimerDialog()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHasShownWindowsGestureGuide()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->maybeShowAnnouncementAfterGestureGuide()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->isAppCenterShown()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->gestureGuideRunnable:Ljava/lang/Runnable;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->gestureGuideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0c000a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v2, p0

    iget-object p0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_0
    return-void
.end method

.method private final maybeShowAnnouncementAfterGestureGuide()V
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHasShownWindowsGestureGuide()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->isAppCenterShown()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->showAnnouncementIfNeeded()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final onAppCenterDismissed()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    sget-boolean v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->pause:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->showWindow()V

    sput-boolean v2, Lcom/deepalhome/launcher/window/AppWindowsManager;->pause:Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isBottomNavigationStyle:Z

    const/4 v1, 0x0

    const-string v3, "binding"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->updateBottomNavigationBarAppearance()V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->shouldAutoShowNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->showNavigationBar()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->maybeScheduleGestureGuideAfterAutoStart()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->updateWallpaperVideoPlaybackState()V

    return-void

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final onAppCenterShown(Lcom/deepalhome/launcher/app/AppCenterView;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->prepareAppCenterHost(Lcom/deepalhome/launcher/app/AppCenterView;Z)V

    return-void
.end method

.method public static synthetic onAppCenterShown$default(Lcom/deepalhome/launcher/launcher/LauncherFragment;Lcom/deepalhome/launcher/app/AppCenterView;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->onAppCenterShown(Lcom/deepalhome/launcher/app/AppCenterView;Z)V

    return-void
.end method

.method private static final onResume$lambda$42(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->applyNavigationBarStyle()V

    :cond_0
    return-void
.end method

.method private static final onResume$lambda$44(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->hasTriggeredAutoStart:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->hasTriggeredAutoStart:Z

    sget-object v0, Lcom/deepalhome/launcher/util/AutoStartAppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AutoStartAppUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/util/RootAccessState;->INSTANCE:Lcom/deepalhome/launcher/util/RootAccessState;

    new-instance v2, Lcom/deepalhome/launcher/util/AutoStartAppUtil$startApps$1;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/util/AutoStartAppUtil$startApps$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/RootAccessState;->runAfterStartupCheck(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->scheduleAmapCompatibilityCheck()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->scheduleHudRestore()V

    return-void
.end method

.method private static final onViewCreated$lambda$32(Landroid/view/View;)V
    .locals 1

    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->dismiss(Z)V

    sget-object p0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/AppUtil;->appCenterHost:Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$dismissAppCenter(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final onViewCreated$lambda$33(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->applyNavigationBarStyle()V

    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$36(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isBottomNavigationStyle:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->showNavigationBar()V

    :cond_0
    return-void
.end method

.method private static final onViewCreated$lambda$37(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->openSystemRecents()V

    const/4 p0, 0x1

    return p0
.end method

.method private static final onViewCreated$lambda$38(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->toggleAppCenter$default(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final onViewCreated$lambda$39(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->toggleAppCenter(Z)V

    return p1
.end method

.method private static final onViewCreated$lambda$41$lambda$40(Lcom/deepalhome/launcher/util/GestureHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "$this_apply"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/util/GestureHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private final native openSystemRecents()V
.end method

.method private final performSwitchDownloadedWallpaper(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isLoadingDownloadWallpapers:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->pendingWallpaperSwitch:Ljava/lang/Boolean;

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->cachedDownloads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    iget-wide v4, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->cachedDownloadsAt:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x5dc

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->cachedDownloads:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->applyDownloadedWallpaperSwitch(Ljava/util/List;Z)V

    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isLoadingDownloadWallpapers:Z

    const/4 v0, -0x2

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda5;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda5;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final performSwitchDownloadedWallpaper$lambda$14(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->listDownloads()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/io/Serializable;ZI)V

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final performSwitchDownloadedWallpaper$lambda$14$lambda$13(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/util/ArrayList;Z)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$downloads"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isLoadingDownloadWallpapers:Z

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->cachedDownloads:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->cachedDownloadsAt:J

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->pendingWallpaperSwitch:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->pendingWallpaperSwitch:Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->applyDownloadedWallpaperSwitch(Ljava/util/List;Z)V

    return-void
.end method

.method private final prepareAppCenterHost(Lcom/deepalhome/launcher/app/AppCenterView;Z)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getBlurRootView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/app/AppCenterView;->setBlurRootView(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->dismissTransientUi()V

    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    sput-boolean p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->pause:Z

    invoke-static {p2}, Lcom/deepalhome/launcher/window/AppWindowsManager;->dismiss(Z)V

    :cond_1
    iget-boolean p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isBottomNavigationStyle:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->updateBottomNavigationBarAppearance()V

    iget-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-direct {p0, p2, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->hideNavigationBar(ZZ)V

    :goto_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->updateWallpaperVideoPlaybackState()V

    return-void

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic prepareAppCenterHost$default(Lcom/deepalhome/launcher/launcher/LauncherFragment;Lcom/deepalhome/launcher/app/AppCenterView;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->prepareAppCenterHost(Lcom/deepalhome/launcher/app/AppCenterView;Z)V

    return-void
.end method

.method private final queryDisplayName(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8

    const-string p0, "_display_name"

    const-string v0, ""

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object p0, v0

    :goto_0
    :try_start_2
    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p2, p0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-static {p1, p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :goto_2
    if-nez p2, :cond_2

    move-object p2, v0

    goto :goto_4

    :goto_3
    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p2

    :cond_2
    :goto_4
    instance-of p0, p2, Lkotlin/Result$Failure;

    if-eqz p0, :cond_3

    goto :goto_5

    :cond_3
    move-object v0, p2

    :goto_5
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final refreshActiveNavigationBarAppearance()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isBottomNavigationStyle:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->updateBottomNavigationBarAppearance()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p0, :cond_2

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getBlurRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/NavigationBar;->startBlur(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final releaseAppCenter(Z)V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->appCenterView:Lcom/deepalhome/launcher/app/AppCenterView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/app/AppCenterView;->isEditMode()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/app/AppCenterView;->exitEditMode(Z)Z

    :cond_3
    invoke-virtual {v0, v4}, Lcom/deepalhome/launcher/app/AppCenterView;->setOnDismissRequest(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v4}, Lcom/deepalhome/launcher/app/AppCenterView;->setNavBarEditorDelegate(Lcom/deepalhome/launcher/app/AppCenterView$NavBarEditorDelegate;)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_4
    move-object v2, v4

    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    iget-object v2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->appCenterView:Lcom/deepalhome/launcher/app/AppCenterView;

    if-ne v2, v0, :cond_6

    iput-object v4, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->appCenterView:Lcom/deepalhome/launcher/app/AppCenterView;

    :cond_6
    if-eqz p1, :cond_7

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->onAppCenterDismissed()V

    :cond_7
    return-void
.end method

.method public static synthetic releaseAppCenter$default(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->releaseAppCenter(Z)V

    return-void
.end method

.method private final resetNavDrag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragTracking:Z

    iput-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragActive:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragStartX:F

    iput v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragStartY:F

    iput v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragStartTranslation:F

    iput v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragWidth:F

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private final resetWindowsDrag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragTracking:Z

    iput-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragActive:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragStartX:F

    iput v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragStartY:F

    iput v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragStartTranslation:F

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private final resolveAppCenterView()Lcom/deepalhome/launcher/app/AppCenterView;
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->appCenterView:Lcom/deepalhome/launcher/app/AppCenterView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->appCenterView:Lcom/deepalhome/launcher/app/AppCenterView;

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private final resolveNavHideDistance(Z)F
    .locals 5

    iget-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isBottomNavigationStyle:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navHeightCache:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navHeightCache:F

    return p1

    :cond_5
    const v0, 0x7f070055

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_2
    int-to-float p0, p0

    return p0

    :cond_6
    iget-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p1, :cond_9

    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {p1, v4, v3}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-lez p1, :cond_7

    int-to-float p1, p1

    iput p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navHeightCache:F

    return p1

    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_2

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resolveNavWidth(Z)F

    move-result p0

    return p0
.end method

.method public static synthetic resolveNavHideDistance$default(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZILjava/lang/Object;)F
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resolveNavHideDistance(Z)F

    move-result p0

    return p0
.end method

.method private final resolveNavWidth(Z)F
    .locals 7

    iget-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isBottomNavigationStyle:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navWidthCache:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navWidthCache:F

    return p1

    :cond_6
    const/4 v0, 0x2

    const v3, 0x7f0700b7

    const v4, 0x7f070348

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_2
    int-to-float p0, p0

    int-to-float v0, v0

    mul-float/2addr p0, v0

    add-float/2addr p0, p1

    return p0

    :cond_7
    iget-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p1, :cond_a

    const/4 v5, 0x0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {p1, v6, v5}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_8

    int-to-float p1, p1

    iput p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navWidthCache:F

    return p1

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_2

    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public static synthetic resolveNavWidth$default(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZILjava/lang/Object;)F
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resolveNavWidth(Z)F

    move-result p0

    return p0
.end method

.method private final runWithWallpaperStoragePermission(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/deepalhome/launcher/util/StoragePermissionUtils;->INSTANCE:Lcom/deepalhome/launcher/util/StoragePermissionUtils;

    const v1, 0x7f130481

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "getString(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/util/StoragePermissionUtils;->requestStoragePermission(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final scheduleAmapCompatibilityCheck()V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getSelectedMapAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getAmapCompatibilityDismissed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/map/AmapCompatibilityChecker;->INSTANCE:Lcom/deepalhome/launcher/map/AmapCompatibilityChecker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/map/AmapCompatibilityChecker;->isAmapPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {v1}, Lcom/deepalhome/launcher/map/AmapCompatibilityChecker;->isCompatible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    const/16 v2, 0xc

    invoke-direct {v0, v2, p0, v1}, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->amapCompatibilityCheckRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p0, :cond_4

    const-wide/16 v1, 0xbb8

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final scheduleAmapCompatibilityCheck$lambda$50(Lcom/deepalhome/launcher/launcher/LauncherFragment;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$mapPackageName"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/deepalhome/launcher/map/AmapCompatibilityChecker;->INSTANCE:Lcom/deepalhome/launcher/map/AmapCompatibilityChecker;

    sget-object v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$scheduleAmapCompatibilityCheck$1$1;->INSTANCE:Lcom/deepalhome/launcher/launcher/LauncherFragment$scheduleAmapCompatibilityCheck$1$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/deepalhome/launcher/map/AmapCompatibilityChecker;->showCompatibilityDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final scheduleHudRestore()V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudFloatManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudFloatManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->hudRestoreRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v1, :cond_2

    iget-object v1, v1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->hudRestoreAttempt:I

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->scheduleNextHudRestoreAttempt()V

    return-void
.end method

.method private final scheduleNextHudRestoreAttempt()V
    .locals 4

    iget v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->hudRestoreAttempt:I

    sget-object v1, Lcom/deepalhome/launcher/launcher/LauncherFragment;->HUD_RESTORE_RETRY_DELAYS_MS:[J

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-wide v0, v1, v0

    new-instance v2, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    iput-object v2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->hudRestoreRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final scheduleNextHudRestoreAttempt$lambda$53(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudFloatManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudFloatManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/HudDisplayHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->startHudIfAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/deepalhome/launcher/hud/HudFloatManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return-void

    :cond_4
    iget v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->hudRestoreAttempt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->hudRestoreAttempt:I

    sget-object v1, Lcom/deepalhome/launcher/launcher/LauncherFragment;->HUD_RESTORE_RETRY_DELAYS_MS:[J

    array-length v1, v1

    if-ge v0, v1, :cond_5

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->scheduleNextHudRestoreAttempt()V

    :cond_5
    return-void
.end method

.method private final shouldAutoShowNavigationBar()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isNavigationBarManuallyHidden:Z

    if-nez p0, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShowing()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->isAppCenterShown()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final shouldFinishNavShow(F)Z
    .locals 6

    iget-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isBottomNavigationStyle:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragWidth:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x0

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v4

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resolveNavWidth(Z)F

    move-result v0

    :goto_1
    cmpg-float v5, v0, v3

    if-gtz v5, :cond_3

    return v2

    :cond_3
    iget-object v5, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v5, :cond_6

    iget-object v4, v5, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    neg-float v5, v0

    invoke-static {v4, v5, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v4

    add-float/2addr v4, v0

    div-float/2addr v4, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->getWindowsDragMinFlingVelocity()F

    move-result p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_5

    cmpl-float p0, p1, v3

    if-lez p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    const/high16 p0, 0x3f000000    # 0.5f

    cmpl-float p0, v4, p0

    if-lez p0, :cond_4

    :goto_2
    return v1

    :cond_6
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method private final shouldFinishWindowsShow(F)Z
    .locals 5

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->getWindowHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->getCurrentTranslationY()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v0, v4

    cmpg-float v0, v2, v0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->getWindowsDragMinFlingVelocity()F

    move-result p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_2

    cmpg-float p0, p1, v1

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v3
.end method

.method private final shouldShowBottomNavBackground()Z
    .locals 1

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->isBottomNavBackgroundEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->isAppCenterShown()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->isBottomNavCardModeBackgroundEnabled()Z

    move-result p0

    return p0
.end method

.method private final shouldUseBottomNavigationStyle()Z
    .locals 2

    sget-object p0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->isCarNavigationBarVisible()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->isCustomNavigationBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getCustomNavigationBarStyle()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private final shouldUseS05UpdateFlow()Z
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p0

    return p0
.end method

.method private final showAnnouncementIfNeeded()V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHasShownWindowsGestureGuide()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->shouldUseS05UpdateFlow()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->announcementDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isCheckingAnnouncementUpdate:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isCheckingAnnouncementUpdate:Z

    sget-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    new-instance v1, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/http/Server;->INSTANCE:Lcom/deepalhome/launcher/http/Server;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/http/Server;->openListProxyApi:Lcom/deepalhome/launcher/http/OpenListProxyApi;

    invoke-interface {p0}, Lcom/deepalhome/launcher/http/OpenListProxyApi;->getS05AppUpdate()Lretrofit2/Call;

    move-result-object p0

    new-instance v0, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private final showAppCenter(Z)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShowing()Z

    move-result v0

    new-instance v1, Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3, v4}, Lcom/deepalhome/launcher/app/AppCenterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navBarEditorDelegate:Lcom/deepalhome/launcher/launcher/LauncherFragment$navBarEditorDelegate$1;

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/app/AppCenterView;->setNavBarEditorDelegate(Lcom/deepalhome/launcher/app/AppCenterView$NavBarEditorDelegate;)V

    new-instance v2, Lcom/deepalhome/launcher/launcher/LauncherFragment$showAppCenter$view$1$1;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$showAppCenter$view$1$1;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/app/AppCenterView;->setOnDismissRequest(Lkotlin/jvm/functions/Function0;)V

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/app/AppCenterView;->enterEditMode()Z

    :cond_1
    iput-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->appCenterView:Lcom/deepalhome/launcher/app/AppCenterView;

    iget-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleY(F)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-direct {p0, v1, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->onAppCenterShown(Lcom/deepalhome/launcher/app/AppCenterView;Z)V

    return-void

    :cond_2
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method public static synthetic showAppCenter$default(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->showAppCenter(Z)V

    return-void
.end method

.method private final showDisclaimerDialog()V
    .locals 25

    # INJECTED: Terminate the method immediately when called
    # return-void

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->disclaimerDialog:Landroid/app/Dialog;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v5, 0x7f13018c

    invoke-virtual {v0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setInputType(I)V

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v5, 0x32

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    const/16 v6, 0x14

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v3, v6

    invoke-virtual {v4, v5, v3, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout;

    move-object v10, v3

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v6, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    const v1, 0x7f130190

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v1, 0x7f13018f

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v1, 0x7f130184

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    const v2, 0x7f130183

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v17

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/deepalhome/launcher/launcher/LauncherFragment$showDisclaimerDialog$dialog$1;

    move-object v15, v1

    invoke-direct {v1, v4, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$showDisclaimerDialog$dialog$1;-><init>(Landroid/widget/EditText;Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    new-instance v1, Lcom/deepalhome/launcher/launcher/LauncherFragment$showDisclaimerDialog$dialog$2;

    move-object/from16 v16, v1

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$showDisclaimerDialog$dialog$2;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x1

    const/16 v18, 0x18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v24, 0x77000

    invoke-static/range {v6 .. v24}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    move-result-object v1

    iget-object v2, v0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v2, :cond_2

    new-instance v4, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda16;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda16;-><init>(Landroid/widget/LinearLayout;I)V

    const-wide/16 v5, 0x61a8

    iget-object v2, v2, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object v1, v0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->disclaimerDialog:Landroid/app/Dialog;

    return-void

    :cond_2
    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private static final showDisclaimerDialog$lambda$48(Landroid/widget/LinearLayout;)V
    .locals 1

    const-string v0, "$inputContainer"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final showGestureGuideDialog()V
    .locals 23

    move-object/from16 v0, p0

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getHasShownWindowsGestureGuide()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->gestureGuideDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0066

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    sget-object v4, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    const v1, 0x7f1304e2

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f13021b

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v15

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/deepalhome/launcher/launcher/LauncherFragment$showGestureGuideDialog$dialog$1;

    move-object v13, v1

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$showGestureGuideDialog$dialog$1;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0xa

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v22, 0x7f2c2

    invoke-static/range {v4 .. v22}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    iput-object v1, v0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->gestureGuideDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private static final showGestureGuideDialog$lambda$45(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->gestureGuideDialog:Landroid/app/Dialog;

    return-void
.end method

.method private final showImageWidgetPicker(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->desktopWidgetManager:Lcom/deepalhome/launcher/widget/DesktopWidgetManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/deepalhome/launcher/widget/DesktopWidgetManager;->getWidgets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/deepalhome/launcher/widget/WidgetInfo;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetInfo;->id:I

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    check-cast v2, Lcom/deepalhome/launcher/widget/WidgetInfo;

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "image_widget_picker"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v3, v0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;

    if-eqz v3, :cond_4

    move-object v1, v0

    check-cast v1, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    :cond_5
    new-instance v0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;

    invoke-direct {v0}, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;-><init>()V

    new-instance v1, Lcom/deepalhome/launcher/launcher/LauncherFragment$showImageWidgetPicker$2$1;

    invoke-direct {v1, p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment$showImageWidgetPicker$2$1;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    iput-object v1, v0, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;->onImageSelected:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string p0, "desktopWidgetManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final showNavigationBar()V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isBottomNavigationStyle:Z

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "binding"

    if-eqz v1, :cond_4

    iput-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isNavigationBarManuallyHidden:Z

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setNavigationGestureBarShown(Z)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfigImmediately()V

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->updateBottomNavigationBarAppearance()V

    return-void

    :cond_1
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_4
    iget-boolean v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragActive:Z

    if-eqz v1, :cond_5

    invoke-direct {p0, v3}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->finishNavDrag(Z)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resetNavDrag()V

    return-void

    :cond_5
    iput-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isNavigationBarManuallyHidden:Z

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setNavigationGestureBarShown(Z)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfigImmediately()V

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v1, :cond_11

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v1, :cond_10

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v1, :cond_f

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    cmpg-float v1, v1, v2

    if-nez v1, :cond_7

    return-void

    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_7
    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v1, :cond_e

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    const-string v3, "navigationBar"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v1}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {p0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setNavWidthCache$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V

    :cond_8
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getBlurRootView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/deepalhome/launcher/navigation/NavigationBar;->startBlur(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_9
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_a
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_b
    new-instance v3, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$$inlined$doOnLayout$1;

    const/4 v6, 0x3

    invoke-direct {v3, p0, v6}, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$$inlined$doOnLayout$1;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_c
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_d
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_e
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_f
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_10
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_11
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method private static final showNavigationBar$lambda$63(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final showSystemStatusBar()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const-string v0, "expandNotificationsPanel"

    const-string v1, "statusbar"

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    sget v3, Lkotlin/Result;->$r8$clinit:I

    const-string v3, "android.app.StatusBarManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_1
    :try_start_1
    const-string p0, "android.os.ServiceManager"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v3, "getService"

    const-class v4, Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Landroid/os/IBinder;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/os/IBinder;

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_2
    move-object p0, v2

    :goto_2
    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    const-string v1, "com.android.internal.statusbar.IStatusBarService$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "asInterface"

    const-class v4, Landroid/os/IBinder;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :goto_4
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_5
    return-void
.end method

.method private final showUpdateReleaseAnnouncement(Lcom/deepalhome/launcher/http/S05AppUpdateInfo;)V
    .locals 14

    sget-object v0, Lcom/deepalhome/launcher/util/ReleaseGroupDialogHelper;->INSTANCE:Lcom/deepalhome/launcher/util/ReleaseGroupDialogHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v2, 0x7f1300b4

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v4, 0x7f130417

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Lcom/deepalhome/launcher/launcher/LauncherFragment$showUpdateReleaseAnnouncement$dialog$1;

    invoke-direct {v6, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment$showUpdateReleaseAnnouncement$dialog$1;-><init>(Lcom/deepalhome/launcher/http/S05AppUpdateInfo;)V

    const p1, 0x7f130413

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v9, Lcom/deepalhome/launcher/launcher/LauncherFragment$showUpdateReleaseAnnouncement$dialog$2;

    invoke-direct {v9, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$showUpdateReleaseAnnouncement$dialog$2;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static/range {v1 .. v13}, Lcom/deepalhome/launcher/util/ReleaseGroupDialogHelper;->show(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lkotlin/jvm/functions/Function0;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;ZZZLandroid/app/Activity;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->announcementDialog:Landroid/app/Dialog;

    new-instance v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private static final showUpdateReleaseAnnouncement$lambda$49(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->announcementDialog:Landroid/app/Dialog;

    return-void
.end method

.method private final startEditDesktop()V
    .locals 9

    iget-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->finishNavDrag(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resetNavDrag()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resetWindowsDrag()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a000d

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    const/4 v4, 0x0

    const-string v5, "binding"

    if-eqz v2, :cond_10

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v2, :cond_f

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0c001b

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070053

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v2, v6, :cond_2

    iget-object v2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v2, :cond_1

    iget-object v6, v2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getBlurRootView()Landroid/view/ViewGroup;

    move-result-object v6

    new-instance v7, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v7}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->editModeBackground:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2, v6, v7}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object v2

    iput v0, v2, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    goto :goto_0

    :cond_1
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_2
    iget-object v2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v2, :cond_e

    iget-object v6, v2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getBlurRootView()Landroid/view/ViewGroup;

    move-result-object v6

    new-instance v7, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->editModeBackground:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2, v6, v7}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object v2

    iput v0, v2, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    :goto_0
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/widget/WidgetsView;->startEdit()V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->editModeBackground:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, v3}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->editModeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_a

    new-instance v2, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda3;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->finishEditBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->isCarNavigationBarVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->editModeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->editModeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v6, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v6, :cond_5

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->editModeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {v0, v2, v3, v6, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    :cond_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_7
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_9

    new-instance v1, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda3;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda3;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->addWidgetBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->updateWallpaperVideoPlaybackState()V

    return-void

    :cond_9
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_a
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_b
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_c
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_d
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_e
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_f
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_10
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method private static final startEditDesktop$lambda$54(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->stopEdit()V

    return-void
.end method

.method private static final startEditDesktop$lambda$56(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lcom/deepalhome/launcher/widget/AddWidgetDialog;

    invoke-direct {p1}, Lcom/deepalhome/launcher/widget/AddWidgetDialog;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/fragment/app/DialogFragment;->mDismissed:Z

    const/4 v2, 0x1

    iput-boolean v2, p1, Landroidx/fragment/app/DialogFragment;->mShownByMe:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v3, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v1, p1, v0, v2}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    iget-boolean v0, v3, Landroidx/fragment/app/FragmentTransaction;->mAddToBackStack:Z

    if-nez v0, :cond_0

    iput-boolean v1, v3, Landroidx/fragment/app/FragmentTransaction;->mAllowAddToBackStack:Z

    iget-object v0, v3, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/FragmentManager;->execSingleAction(Landroidx/fragment/app/FragmentManager$OpGenerator;Z)V

    new-instance v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$startEditDesktop$2$1$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$startEditDesktop$2$1$1;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    iput-object v0, p1, Lcom/deepalhome/launcher/widget/AddWidgetDialog;->onDragWidgetListener:Lkotlin/jvm/functions/Function0;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This transaction is already being added to the back stack"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final stopEdit()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->editModeBackground:Leightbitlab/com/blurview/BlurView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->editModeContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/widget/WidgetsView;->stopEdit()V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->updateWallpaperVideoPlaybackState()V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final switchDownloadedWallpaper(Z)V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/launcher/LauncherFragment$switchDownloadedWallpaper$1;

    invoke-direct {v0, p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment$switchDownloadedWallpaper$1;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->runWithWallpaperStoragePermission(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final toggleAppCenter(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resolveAppCenterView()Lcom/deepalhome/launcher/app/AppCenterView;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/app/AppCenterView;->enterEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, p1, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->onAppCenterShown$default(Lcom/deepalhome/launcher/launcher/LauncherFragment;Lcom/deepalhome/launcher/app/AppCenterView;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->dismissAppCenter()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->showAppCenter(Z)V

    return-void
.end method

.method public static synthetic toggleAppCenter$default(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->toggleAppCenter(Z)V

    return-void
.end method

.method private final updateBottomNavigationBarAppearance()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->shouldShowBottomNavBackground()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isBottomNavBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p0, :cond_2

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getBlurRootView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->startBlurEffect(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->startBlur()V

    goto :goto_0

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->clearBackground()V

    :goto_0
    return-void

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final updateGestureBarLayout(Z)V
    .locals 7

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x7f0700b7

    const v4, 0x7f0700b5

    const v5, 0x7f0700ba

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x51

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, v6, v6, v6, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const p1, 0x800013

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final updateWallpaperVideoPlaybackState()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/widget/WidgetsView;->isEditMode()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->isAppCenterShown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p0, :cond_2

    xor-int/2addr v0, v3

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->setVideoPlaybackEnabled(Z)V

    return-void

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 0

    sget-object p0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->INSTANCE:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget p3, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->$r8$clinit:I

    sget-object p3, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const p3, 0x7f0e0072

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p3, p2, v1, v0}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    const-string p2, "inflate(...)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    const-string p0, "getRoot(...)"

    iget-object p1, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->carInfoChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/CarInfoUtil;->removeOnCarInfoChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->carS05InfoChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "listener"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->onInfoChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;

    sget-boolean v2, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->isListenerRegistered:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->aliasListener:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$aliasListener$1;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->onPsAliasChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    sput-boolean v3, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->isListenerRegistered:Z

    :cond_0
    sget-object v2, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$release$1;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$release$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->dispatchOnMain(Lkotlin/jvm/functions/Function0;)V

    sget-object v1, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;

    sget-boolean v2, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->isListenerRegistered:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->s05InfoListener:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$s05InfoListener$1;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->onDetailedInfoChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    sput-boolean v3, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->isListenerRegistered:Z

    :cond_1
    sget-object v2, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$release$1;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$release$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->dispatchOnMain(Lkotlin/jvm/functions/Function0;)V

    sget-object v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    iget-object v2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->onWindowsChangedListener:Lcom/deepalhome/launcher/launcher/LauncherFragment$onWindowsChangedListener$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->onWindowsChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->statusBarVisibilityListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->removeOnVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navigationBarVisibilityListener:Lkotlin/jvm/functions/Function1;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->removeOnNavigationBarVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->gestureGuideRunnable:Ljava/lang/Runnable;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->amapCompatibilityCheckRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v3, :cond_0

    iget-object v3, v3, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->hudRestoreRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v3, :cond_2

    iget-object v3, v3, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->hudRestoreAttempt:I

    sget-object v3, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    iget-object v4, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->wallpaperChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "listener"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->onWallpaperChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v3, :cond_d

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {v3, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->setOnWallpaperFrameReadyListener(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-string v4, "image_widget_picker"

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    instance-of v4, v3, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/deepalhome/launcher/widget/ImageWidgetPickerDialogFragment;

    goto :goto_2

    :cond_4
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    :cond_5
    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->releaseAppCenter(Z)V

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v3, :cond_c

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v3, v2}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->setOverlayHost(Landroid/view/ViewGroup;)V

    sget-object v3, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v2, Lcom/deepalhome/launcher/util/AppUtil;->appCenterHost:Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v3, :cond_b

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v3, :cond_a

    iget-object v1, v3, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->gestureGuideDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_6
    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->gestureGuideDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_7
    iput-object v2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->gestureGuideDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->announcementDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_8
    iget-object v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->announcementDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_9
    iput-object v2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->announcementDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resetWindowsDrag()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resetNavDrag()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navWidthCache:F

    iput v1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navHeightCache:F

    sget-object v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->setExtraBottomInset(I)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void

    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_d
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navDragActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->shouldFinishNavShow(F)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->finishNavDrag(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resetNavDrag()V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->windowsDragActive:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->finishDrag(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->resetWindowsDrag()V

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->applyNavigationBarStyle()V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_3

    new-instance v3, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->updateWallpaperVideoPlaybackState()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->maybeScheduleGestureGuideAfterAutoStart()V

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->Companion:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsPinned()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;->getInstance(Landroid/content/Context;)Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    move-result-object v0

    sget-object v3, Lcom/lzf/easyfloat/EasyFloat;->Companion:Lcom/lzf/easyfloat/EasyFloat$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/lzf/easyfloat/EasyFloat$Companion;->isShow()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->dismissInternal()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    iget-object p0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x2

    const-string v1, "view"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->applyS05WidgetsViewMargins()V

    sget-object p1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->startMonitor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iget-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->carS05InfoChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addOnS05InfoChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->appContext:Landroid/content/Context;

    sget-boolean p1, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->isListenerRegistered:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->s05InfoListener:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$s05InfoListener$1;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addOnS05DetailedInfoChangedListener(Lkotlin/jvm/functions/Function2;)V

    sput-boolean v1, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->isListenerRegistered:Z

    :cond_0
    sget-object p1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cacheCarS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    iget-object p1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->gearMode:Ljava/lang/String;

    sput-object p1, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->lastGearMode:Ljava/lang/String;

    sget-object p1, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$init$1;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$init$1;

    invoke-static {p1}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->dispatchOnMain(Lkotlin/jvm/functions/Function0;)V

    const-string p1, "HudSRManager"

    const-string v3, "init: gear position listener registered"

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, v3, Landroid/app/Activity;

    if-eqz p1, :cond_1

    check-cast v3, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_2

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->hostActivityRef:Ljava/lang/ref/WeakReference;

    :cond_2
    sget-boolean p1, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->isListenerRegistered:Z

    if-nez p1, :cond_4

    sget-object p1, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->aliasListener:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$aliasListener$1;

    const-string v3, "listener"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->onPsAliasChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sput-boolean v1, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->isListenerRegistered:Z

    :cond_4
    sget-object p1, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$init$1;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$init$1;

    invoke-static {p1}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->dispatchOnMain(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_5
    sget-object p1, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/util/CarInfoUtil;->start()V

    :goto_1
    sget-object p1, Lcom/deepalhome/launcher/util/AssistantUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AssistantUtil;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/util/AssistantUtil;->start()V

    sget-object p1, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->init()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->applyStatusBarVisibility()V

    sget-object p1, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->statusBarVisibilityListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->addOnVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->navigationBarVisibilityListener:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->addOnNavigationBarVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->isNavigationGestureBarShown()Z

    move-result v3

    xor-int/2addr v3, v1

    iput-boolean v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isNavigationBarManuallyHidden:Z

    new-instance v3, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/deepalhome/launcher/music/MusicBar$$ExternalSyntheticLambda2;-><init>(I)V

    iget-object v4, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v4, :cond_1c

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v4, v3}, Lcom/deepalhome/launcher/navigation/NavigationBar;->setOnHomeBtnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v4, :cond_1b

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v4, v3}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->setOnHomeBtnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->applyNavigationBarStyle()V

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v3, :cond_1a

    iget-object v3, v3, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    new-instance v4, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda11;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v3, :cond_19

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    const-string v4, "navigationBar"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v3}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setNavWidthCache$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V

    goto :goto_2

    :cond_6
    new-instance v4, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$$inlined$doOnLayout$1;

    invoke-direct {v4, p0, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$$inlined$doOnLayout$1;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v3, :cond_18

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    const-string v4, "bottomNavigationBar"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setNavHeightCache$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V

    goto :goto_3

    :cond_8
    new-instance v4, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$$inlined$doOnLayout$1;

    invoke-direct {v4, p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$$inlined$doOnLayout$1;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v3, :cond_17

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    new-instance v4, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda3;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda15;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    iget-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p2, :cond_16

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {p2, v3}, Lcom/deepalhome/launcher/navigation/NavigationBar;->setOnHomeBtnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p2, :cond_15

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {p2, v3}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->setOnHomeBtnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance p2, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda3;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v3, :cond_14

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v3, p2}, Lcom/deepalhome/launcher/navigation/NavigationBar;->setOnFolderViewClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v3, :cond_13

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v3, p2}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->setOnFolderViewClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda15;

    invoke-direct {p2, p0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment$$ExternalSyntheticLambda15;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;I)V

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v3, :cond_12

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v3, p2}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->setOnFolderViewLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget-object p2, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->onWindowsChangedListener:Lcom/deepalhome/launcher/launcher/LauncherFragment$onWindowsChangedListener$1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "listener"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p2, Lcom/deepalhome/launcher/window/AppWindowsManager;->onWindowsChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p2, :cond_11

    iget-object v3, p2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->launcherView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p2}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar;->setOverlayHost(Landroid/view/ViewGroup;)V

    sget-object p2, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    new-instance v3, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;

    invoke-direct {v3, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v3, Lcom/deepalhome/launcher/util/AppUtil;->appCenterHost:Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;

    sget-object p2, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->start()V

    new-instance p2, Lcom/deepalhome/launcher/widget/DesktopWidgetManager;

    invoke-direct {p2}, Lcom/deepalhome/launcher/widget/DesktopWidgetManager;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->desktopWidgetManager:Lcom/deepalhome/launcher/widget/DesktopWidgetManager;

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz v3, :cond_10

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-virtual {v3, p2}, Lcom/deepalhome/launcher/widget/WidgetsView;->setWidgetManager(Lcom/deepalhome/launcher/widget/IWidgetManager;)V

    iget-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p2, :cond_f

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    new-instance v3, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$6;

    invoke-direct {v3, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$6;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    invoke-virtual {p2, v3}, Lcom/deepalhome/launcher/widget/WidgetsView;->setOnImageWidgetConfigurationRequested(Lkotlin/jvm/functions/Function1;)V

    iget-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p2, :cond_e

    iget-object v3, p2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getBlurRootView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/deepalhome/launcher/widget/WidgetsView;->setBlurRootView(Landroid/view/ViewGroup;)V

    iget-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p2, :cond_d

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    new-instance v3, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$7;

    invoke-direct {v3, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$7;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    invoke-virtual {p2, v3}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->setOnWallpaperFrameReadyListener(Lkotlin/jvm/functions/Function0;)V

    sget-object p2, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->wallpaperChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->addOnWallpaperChangedListener(Lkotlin/jvm/functions/Function1;)V

    iget-boolean p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->isBottomNavigationStyle:Z

    if-eqz p2, :cond_a

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->showNavigationBar()V

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->isNavigationGestureBarShown()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->showNavigationBar()V

    goto :goto_4

    :cond_b
    invoke-direct {p0, v1, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->hideNavigationBar(ZZ)V

    :goto_4
    new-instance p1, Lcom/deepalhome/launcher/util/GestureHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v1, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;-><init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    invoke-direct {p1, p2, v1}, Lcom/deepalhome/launcher/util/GestureHelper;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;)V

    iget-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->binding:Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    if-eqz p2, :cond_c

    iget-object p2, p2, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    new-instance v1, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1}, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object p1, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    iget-object p2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;->carInfoChangedListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/CarInfoUtil;->addOnCarInfoChangedListener(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->updateWallpaperVideoPlaybackState()V

    return-void

    :cond_c
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_d
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_e
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_f
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_10
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_11
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_12
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_13
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_14
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_15
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_16
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_17
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_18
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_19
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1a
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1b
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1c
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method
