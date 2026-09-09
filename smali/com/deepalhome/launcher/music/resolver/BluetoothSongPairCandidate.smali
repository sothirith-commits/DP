.class public final Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final fromDirectFields:Z

.field public final orientation:Lcom/deepalhome/launcher/music/resolver/PairOrientation;

.field public final reasons:Ljava/util/List;

.field public final score:I

.field public final separator:Ljava/lang/String;

.field public final singer:Ljava/lang/String;

.field public final source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;Lcom/deepalhome/launcher/music/resolver/PairOrientation;Ljava/lang/String;ILjava/util/List;Z)V
    .locals 1

    const-string v0, "source"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "orientation"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "separator"

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "reasons"

    invoke-static {v0, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->singer:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    iput-object p4, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->orientation:Lcom/deepalhome/launcher/music/resolver/PairOrientation;

    iput-object p5, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->separator:Ljava/lang/String;

    iput p6, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->score:I

    iput-object p7, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->reasons:Ljava/util/List;

    iput-boolean p8, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->fromDirectFields:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;

    iget-object v1, p1, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->title:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->singer:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->singer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    iget-object v3, p1, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->orientation:Lcom/deepalhome/launcher/music/resolver/PairOrientation;

    iget-object v3, p1, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->orientation:Lcom/deepalhome/launcher/music/resolver/PairOrientation;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->separator:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->separator:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->score:I

    iget v3, p1, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->score:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->reasons:Ljava/util/List;

    iget-object v3, p1, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->reasons:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean p0, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->fromDirectFields:Z

    iget-boolean p1, p1, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->fromDirectFields:Z

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->singer:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->orientation:Lcom/deepalhome/launcher/music/resolver/PairOrientation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->separator:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->score:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->reasons:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean p0, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->fromDirectFields:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v2, p0

    return v2
.end method

.method public final sameSongAs(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "targetTitle"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "targetSinger"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->INSTANCE:Lcom/deepalhome/launcher/music/MusicMetadataMatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->buildProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;

    move-result-object p1

    iget-object p2, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->title:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isTitleMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->singer:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isSingerMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BluetoothSongPairCandidate(title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", singer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->singer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->source:Lcom/deepalhome/launcher/music/resolver/BluetoothFieldSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->orientation:Lcom/deepalhome/launcher/music/resolver/PairOrientation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", separator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reasons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->reasons:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromDirectFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/music/resolver/BluetoothSongPairCandidate;->fromDirectFields:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
