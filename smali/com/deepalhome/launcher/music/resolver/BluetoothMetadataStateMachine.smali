.class public final Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public lockState:Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;

.field public pendingState:Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static touch(Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;I)Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;
    .locals 10

    iget-wide v0, p1, Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;->duration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1
    move-wide v5, v0

    goto :goto_2

    :cond_1
    iget-wide v0, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->duration:J

    goto :goto_1

    :goto_2
    const-string v0, "title"

    iget-object v3, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->title:Ljava/lang/String;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "singer"

    iget-object v4, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;->singer:Ljava/lang/String;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;

    iget-wide v8, p1, Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;->receivedAt:J

    move-object v2, p0

    move v7, p2

    invoke-direct/range {v2 .. v9}, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;-><init>(Ljava/lang/String;Ljava/lang/String;JIJ)V

    return-object p0
.end method


# virtual methods
.method public final switchTo(Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;Ljava/lang/String;)Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolution;
    .locals 9

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->pendingState:Lcom/deepalhome/launcher/music/resolver/BluetoothPendingState;

    new-instance v0, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;

    iget v6, p1, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->score:I

    iget-wide v7, p2, Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;->receivedAt:J

    iget-object v2, p1, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->singer:Ljava/lang/String;

    iget-wide v4, p2, Lcom/deepalhome/launcher/music/resolver/MetadataSnapshot;->duration:J

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;-><init>(Ljava/lang/String;Ljava/lang/String;JIJ)V

    iput-object v0, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataStateMachine;->lockState:Lcom/deepalhome/launcher/music/resolver/BluetoothLockState;

    new-instance p0, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolution;

    sget-object p2, Lcom/deepalhome/launcher/music/resolver/ResolveDecision;->SWITCH:Lcom/deepalhome/launcher/music/resolver/ResolveDecision;

    iget-object v0, p1, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->singer:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/deepalhome/launcher/music/resolver/BluetoothMetadataResolution;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/resolver/ResolveDecision;Ljava/lang/String;)V

    return-object p0
.end method
