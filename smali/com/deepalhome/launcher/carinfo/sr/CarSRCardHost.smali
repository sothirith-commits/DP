.class public final Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost$Companion;


# instance fields
.field public final container:Landroid/widget/FrameLayout;

.field public final context:Landroid/content/Context;

.field public eventManager:Lcom/tinnove/renderclient/CocosDataEventManager;

.field public hasFirstFrame:Z

.field public isNightMode:Z

.field public isRenderResumed:Z

.field public final onSrVisibilityChanged:Lkotlin/jvm/functions/Function1;

.field public shouldDisplaySr:Z

.field public srControl:Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost$CarSRViewControl;

.field public srView:Landroid/view/View;

.field public waitLayoutListener:Landroidx/camera/view/PreviewView$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->Companion:Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$initCarSrLayer$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->container:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->onSrVisibilityChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final native attach()V
.end method

.method public final native destroy()V
.end method

.method public final native onDrawFirstFrame()V
.end method

.method public final native onEngineLaunched()V
.end method

.method public final native onEngineShutdown()V
.end method

.method public final native onRenderServiceConnected()V
.end method

.method public final native onRenderServiceDisconnected()V
.end method

.method public final native onRenderServiceError(Ljava/lang/String;)V
.end method

.method public final native onViewSizeChanged(II)V
.end method

.method public final native syncDayNightMode(Lcom/tinnove/renderclient/CocosDataEventManager;)V
.end method

.method public final native updateSrVisibility(Z)V
.end method
