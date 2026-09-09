.class public final Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final endMs:Ljava/lang/Long;

.field public final startMs:J

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->text:Ljava/lang/String;

    iput-wide p2, p0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->startMs:J

    iput-object p4, p0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->endMs:Ljava/lang/Long;

    return-void
.end method

.method public static copy$default(Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;
    .locals 3

    const-string v0, "text"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;

    iget-wide v1, p0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->startMs:J

    iget-object p0, p0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->endMs:Ljava/lang/Long;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;-><init>(Ljava/lang/String;JLjava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;

    iget-object v1, p1, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->text:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->startMs:J

    iget-wide v5, p1, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->startMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->endMs:Ljava/lang/Long;

    iget-object p1, p1, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->endMs:Ljava/lang/Long;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->startMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->endMs:Ljava/lang/Long;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v1, p0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RawToken(text="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->startMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/ttml/AppleMusicTtmlParser$RawToken;->endMs:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
