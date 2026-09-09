.class public final Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$aliasListener$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $alias:Ljava/lang/String;

.field final synthetic $signalValue:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$aliasListener$1$1;->$alias:Ljava/lang/String;

    iput p2, p0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$aliasListener$1$1;->$signalValue:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final native invoke()Ljava/lang/Object;
.end method
