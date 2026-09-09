.class public final Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$setSuppressedByStartupVideo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $suppressed:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$setSuppressedByStartupVideo$1;->$suppressed:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$setSuppressedByStartupVideo$1;->$suppressed:Z

    sput-boolean p0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->isSuppressedByStartupVideo:Z

    sget-object p0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;

    invoke-static {p0}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->access$updateState(Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
