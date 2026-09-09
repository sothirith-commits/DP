.class public final Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;

.field public static final aliasListener:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$aliasListener$1;

.field public static autoStarted:Z

.field public static currentDirection:I

.field public static hostActivityRef:Ljava/lang/ref/WeakReference;

.field public static isListenerRegistered:Z

.field public static isSettingsPreviewEnabled:Z

.field public static isStreaming:Z

.field public static lastPreviewAngle:I

.field public static leftSignalValue:I

.field public static final mainHandler:Landroid/os/Handler;

.field public static overlayController:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrOverlayController;

.field public static previewContainerRef:Ljava/lang/ref/WeakReference;

.field public static previewSurface:Landroid/view/Surface;

.field public static previewViewRef:Ljava/lang/ref/WeakReference;

.field public static rightSignalValue:I

.field public static final signalEvaluateRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

.field public static final stopRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->stopRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->signalEvaluateRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/4 v0, 0x3

    sput v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->lastPreviewAngle:I

    const/4 v0, 0x1

    sput v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->leftSignalValue:I

    sput v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->rightSignalValue:I

    sget-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$aliasListener$1;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$aliasListener$1;

    sput-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->aliasListener:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$aliasListener$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native access$requestCurrentTurnSignalState(Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;)V
.end method

.method public static native applyFitCenterToPreview()V
.end method

.method public static native dispatchOnMain(Lkotlin/jvm/functions/Function0;)V
.end method

.method public static native ensureOverlayController(Landroid/app/Application;Landroid/view/Display;)Lcom/deepalhome/launcher/hud/s05dvr/HudDvrOverlayController;
.end method

.method public static native onSettingChanged()V
.end method

.method public static native openDvr(ILandroid/view/Surface;Lcom/deepalhome/launcher/hud/s05dvr/HudDvrOverlayController;)V
.end method

.method public static native parseTurnSignalValue(Ljava/lang/Object;)I
.end method

.method public static native removeLocalPreview()V
.end method

.method public static native shouldEnableFeature()Z
.end method

.method public static native stopStreaming(Z)V
.end method


# virtual methods
.method public final native attachPreviewTextureListener(Landroid/view/TextureView;)V
.end method

.method public final native ensureLocalPreview()V
.end method

.method public final native handleTurnSignalStateChanged()V
.end method

.method public final native startSettingsPreviewIfNeeded()V
.end method

.method public final native startStreamingForDirection(IZ)V
.end method
