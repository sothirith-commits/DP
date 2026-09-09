.class public final Lkotlin/ranges/LongRange;
.super Lkotlin/ranges/LongProgression;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/ranges/LongRange$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/ranges/LongRange$Companion;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    instance-of v0, p1, Lkotlin/ranges/LongRange;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->first:J

    iget-wide v2, p0, Lkotlin/ranges/LongProgression;->last:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    move-object p0, p1

    check-cast p0, Lkotlin/ranges/LongRange;

    iget-wide v4, p0, Lkotlin/ranges/LongProgression;->first:J

    iget-wide v6, p0, Lkotlin/ranges/LongProgression;->last:J

    cmp-long p0, v4, v6

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lkotlin/ranges/LongRange;

    iget-wide v4, p1, Lkotlin/ranges/LongProgression;->first:J

    cmp-long p0, v0, v4

    if-nez p0, :cond_1

    iget-wide p0, p1, Lkotlin/ranges/LongProgression;->last:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final hashCode()I
    .locals 8

    iget-wide v0, p0, Lkotlin/ranges/LongProgression;->first:J

    iget-wide v2, p0, Lkotlin/ranges/LongProgression;->last:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x1f

    int-to-long v4, p0

    const/16 p0, 0x20

    ushr-long v6, v0, p0

    xor-long/2addr v0, v6

    mul-long/2addr v4, v0

    ushr-long v0, v2, p0

    xor-long/2addr v0, v2

    add-long/2addr v4, v0

    long-to-int p0, v4

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->first:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlin/ranges/LongProgression;->last:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
