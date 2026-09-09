.class public final Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy$Companion;

.field private static final DEFAULT_TTL_MS:J = 0x36ee80L


# instance fields
.field private final allowStale:Z

.field private final revalidateWhenStale:Z

.field private final ttlMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->Companion:Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy$Companion;

    return-void
.end method

.method public constructor <init>(JZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->ttlMs:J

    iput-boolean p3, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->allowStale:Z

    iput-boolean p4, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->revalidateWhenStale:Z

    return-void
.end method

.method public synthetic constructor <init>(JZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    const-wide/32 p1, 0x36ee80

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;-><init>(JZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;JZZILjava/lang/Object;)Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->ttlMs:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p3, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->allowStale:Z

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-boolean p4, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->revalidateWhenStale:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->copy(JZZ)Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->ttlMs:J

    return-wide v0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->allowStale:Z

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->revalidateWhenStale:Z

    return p0
.end method

.method public final copy(JZZ)Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;
    .locals 0

    new-instance p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;-><init>(JZZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;

    iget-wide v3, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->ttlMs:J

    iget-wide v5, p1, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->ttlMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->allowStale:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->allowStale:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->revalidateWhenStale:Z

    iget-boolean p1, p1, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->revalidateWhenStale:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAllowStale()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->allowStale:Z

    return p0
.end method

.method public final getRevalidateWhenStale()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->revalidateWhenStale:Z

    return p0
.end method

.method public final getTtlMs()J
    .locals 2

    iget-wide v0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->ttlMs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->ttlMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->allowStale:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->revalidateWhenStale:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p0

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public final isExpired(J)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->ttlMs:J

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CachePolicy(ttlMs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->ttlMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", allowStale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->allowStale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", revalidateWhenStale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CachePolicy;->revalidateWhenStale:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
