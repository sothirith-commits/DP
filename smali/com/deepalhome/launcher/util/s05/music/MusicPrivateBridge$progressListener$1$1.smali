.class public final Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$progressListener$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $duration:J

.field final synthetic $progress:J

.field final synthetic this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$progressListener$1$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    iput-wide p2, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$progressListener$1$1;->$progress:J

    iput-wide p4, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$progressListener$1$1;->$duration:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$progressListener$1$1;->this$0:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    iget-wide v1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$progressListener$1$1;->$progress:J

    iget-wide v3, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$progressListener$1$1;->$duration:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->handleProgress(JJ)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
