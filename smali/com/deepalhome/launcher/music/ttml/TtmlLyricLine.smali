.class public final Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final endMs:J

.field public final startMs:J

.field public final text:Ljava/lang/String;

.field public final tokens:Ljava/util/List;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/util/List;)V
    .locals 1

    const-string v0, "text"

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->startMs:J

    iput-wide p3, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->endMs:J

    iput-object p5, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->text:Ljava/lang/String;

    iput-object p6, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->tokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;

    iget-wide v3, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->startMs:J

    iget-wide v5, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->startMs:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->endMs:J

    iget-wide v5, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->endMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->tokens:Ljava/util/List;

    iget-object p1, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->tokens:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->startMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->endMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->text:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->tokens:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TtmlLyricLine(startMs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->startMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->endMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->tokens:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
