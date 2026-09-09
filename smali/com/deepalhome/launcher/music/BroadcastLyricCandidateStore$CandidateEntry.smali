.class public final Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final artist:Ljava/lang/String;

.field public final normalizedArtist:Ljava/lang/String;

.field public final normalizedTitle:Ljava/lang/String;

.field public final payload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

.field public final provider:Lcom/deepalhome/launcher/music/BroadcastLyricProvider;

.field public final recordedAtMs:J

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/music/BroadcastLyricProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/ttml/LyricPayload;J)V
    .locals 1

    const-string v0, "payload"

    invoke-static {v0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->provider:Lcom/deepalhome/launcher/music/BroadcastLyricProvider;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->artist:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->normalizedTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->normalizedArtist:Ljava/lang/String;

    iput-object p6, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->payload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    iput-wide p7, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->recordedAtMs:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;

    iget-object v1, p1, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->provider:Lcom/deepalhome/launcher/music/BroadcastLyricProvider;

    iget-object v3, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->provider:Lcom/deepalhome/launcher/music/BroadcastLyricProvider;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->artist:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->artist:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->normalizedTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->normalizedTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->normalizedArtist:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->normalizedArtist:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->payload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    iget-object v3, p1, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->payload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->recordedAtMs:J

    iget-wide p0, p1, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->recordedAtMs:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->provider:Lcom/deepalhome/launcher/music/BroadcastLyricProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->title:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->artist:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->normalizedTitle:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->normalizedArtist:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->payload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v0, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->recordedAtMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CandidateEntry(provider="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->provider:Lcom/deepalhome/launcher/music/BroadcastLyricProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", normalizedTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->normalizedTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", normalizedArtist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->normalizedArtist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->payload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", recordedAtMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/deepalhome/launcher/music/BroadcastLyricCandidateStore$CandidateEntry;->recordedAtMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
