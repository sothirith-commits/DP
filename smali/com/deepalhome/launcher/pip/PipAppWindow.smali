.class public final Lcom/deepalhome/launcher/pip/PipAppWindow;
.super Lcom/deepalhome/launcher/window/BaseAppWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/window/BaseAppWindow<",
        "Lcom/deepalhome/launcher/databinding/PipAppWindowBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public cardPosition:I

.field public currentClassName:Ljava/lang/String;

.field public currentPackageName:Ljava/lang/String;

.field public inputForwarder:Ljava/lang/Object;

.field public final mainHandler:Landroid/os/Handler;

.field public pendingLaunch:Z

.field public startRequestVersion:I

.field public touchInjectFailed:Z

.field public virtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field public virtualDisplayId:I

.field public virtualDisplaySurface:Landroid/view/Surface;

.field public virtualSurfaceReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/pip/PipAppWindow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/pip/PipAppWindow$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/pip/PipAppWindow;->mainHandler:Landroid/os/Handler;

    const/4 p1, -0x1

    iput p1, p0, Lcom/deepalhome/launcher/pip/PipAppWindow;->cardPosition:I

    iput p1, p0, Lcom/deepalhome/launcher/pip/PipAppWindow;->virtualDisplayId:I

    const-string p1, ""

    iput-object p1, p0, Lcom/deepalhome/launcher/pip/PipAppWindow;->currentPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/deepalhome/launcher/pip/PipAppWindow;->currentClassName:Ljava/lang/String;

    return-void
.end method

.method public static native injectInputEvent(Landroid/view/InputEvent;)Z
.end method

.method public static native setInputEventDisplayId(Landroid/view/InputEvent;I)Z
.end method


# virtual methods
.method public final native buildMappedMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
.end method

.method public final native dispatchVirtualKeyEvent(Landroid/view/KeyEvent;)V
.end method

.method public final native drawDragSnapshot(Landroid/graphics/Canvas;)V
.end method

.method public final native endDrag()V
.end method

.method public final native ensureInputForwarder()V
.end method

.method public final native ensureVirtualDisplay(II)Z
.end method

.method public final native forwardInputEvent(Landroid/view/InputEvent;)Z
.end method

.method public final native getCardPosition()I
.end method

.method public native getLayoutId()I
.end method

.method public final native launchApp()V
.end method

.method public final native onDetachedFromWindow()V
.end method

.method public final native onInit()V
.end method

.method public final native releaseVirtualDisplay()V
.end method

.method public final native resizeRunningTask(Landroid/graphics/Rect;)V
.end method

.method public final native resizeVirtualDisplay(II)Z
.end method

.method public final native setCardPosition(I)V
.end method

.method public final native showAppPicker()V
.end method

.method public final native stopCurrentAppAndReleaseResources()V
.end method

.method public final native updateCardBackgroundState()V
.end method

.method public final native updateUIMode(Z)V
.end method
