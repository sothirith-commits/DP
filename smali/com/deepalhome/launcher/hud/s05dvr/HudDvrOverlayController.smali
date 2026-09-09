.class public final Lcom/deepalhome/launcher/hud/s05dvr/HudDvrOverlayController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final appContext:Landroid/content/Context;

.field public currentAngle:I

.field public final display:Landroid/view/Display;

.field public onSurfaceReady:Lkotlin/jvm/functions/Function0;

.field public renderSurface:Landroid/view/Surface;

.field public renderView:Landroid/view/TextureView;

.field public rootView:Landroid/widget/FrameLayout;

.field public showing:Z

.field public windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrOverlayController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrOverlayController$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroid/view/Display;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrOverlayController;->display:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrOverlayController;->appContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final native applyConfig()V
.end method

.method public final native dismiss()V
.end method

.method public final native showMirror(I)V
.end method
