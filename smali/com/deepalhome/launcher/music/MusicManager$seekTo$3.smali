.class public final Lcom/deepalhome/launcher/music/MusicManager$seekTo$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $position:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    iput-wide p1, p0, Lcom/deepalhome/launcher/music/MusicManager$seekTo$3;->$position:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    const-string v0, "$this$tryPrivateControl"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/deepalhome/launcher/music/MusicManager$seekTo$3;->$position:J

    invoke-virtual {p1, v0, v1}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->seekTo(J)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
