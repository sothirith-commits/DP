.class public final Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final canCollect:Z

.field public final canSeek:Z

.field public final isCollected:Z

.field public final music:Lcom/deepalhome/launcher/music/Music;

.field public final source:Lcom/deepalhome/launcher/util/s05/music/MusicSource;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/music/Music;Lcom/deepalhome/launcher/util/s05/music/MusicSource;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->music:Lcom/deepalhome/launcher/music/Music;

    iput-object p2, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->source:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    iput-boolean p3, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->canSeek:Z

    iput-boolean p4, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->canCollect:Z

    iput-boolean p5, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->isCollected:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;

    iget-object v1, p1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->music:Lcom/deepalhome/launcher/music/Music;

    iget-object v3, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->music:Lcom/deepalhome/launcher/music/Music;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->source:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    iget-object v3, p1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->source:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->canSeek:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->canSeek:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->canCollect:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->canCollect:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->isCollected:Z

    iget-boolean p1, p1, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->isCollected:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->music:Lcom/deepalhome/launcher/music/Music;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->source:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->canSeek:Z

    if-eqz v2, :cond_0

    move v2, v0

    :cond_0
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->canCollect:Z

    if-eqz v2, :cond_1

    move v2, v0

    :cond_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->isCollected:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, p0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrivateMusicSnapshot(music="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->music:Lcom/deepalhome/launcher/music/Music;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->source:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canSeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->canSeek:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canCollect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->canCollect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCollected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge$PrivateMusicSnapshot;->isCollected:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
