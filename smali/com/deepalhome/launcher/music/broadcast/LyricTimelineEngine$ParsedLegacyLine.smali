.class public final Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final order:I

.field public final startMs:J

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->startMs:J

    iput p1, p0, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->order:I

    iput-object p4, p0, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;

    iget-wide v3, p1, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->startMs:J

    iget-wide v5, p0, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->startMs:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->order:I

    iget v3, p1, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->order:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->text:Ljava/lang/String;

    iget-object p1, p1, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->text:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->startMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->order:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->text:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParsedLegacyLine(startMs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->startMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->order:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/broadcast/LyricTimelineEngine$ParsedLegacyLine;->text:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
