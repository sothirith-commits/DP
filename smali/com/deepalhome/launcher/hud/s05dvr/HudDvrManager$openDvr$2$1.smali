.class public final Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$openDvr$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $openAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field final synthetic $success:Z


# direct methods
.method public constructor <init>(ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$openDvr$2$1;->$success:Z

    iput-object p2, p0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$openDvr$2$1;->$openAction:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final native invoke()Ljava/lang/Object;
.end method
