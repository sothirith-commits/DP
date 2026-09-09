.class public final Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$openDvr$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $controller:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrOverlayController;

.field final synthetic $direction:I

.field final synthetic $surface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(ILandroid/view/Surface;Lcom/deepalhome/launcher/hud/s05dvr/HudDvrOverlayController;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$openDvr$1;->$direction:I

    iput-object p2, p0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$openDvr$1;->$surface:Landroid/view/Surface;

    iput-object p3, p0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$openDvr$1;->$controller:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrOverlayController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final native invoke()Ljava/lang/Object;
.end method
