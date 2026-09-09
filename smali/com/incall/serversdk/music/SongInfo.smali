.class public Lcom/incall/serversdk/music/SongInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/incall/serversdk/music/SongInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private artist:Ljava/lang/String;

.field private artistId:Ljava/lang/String;

.field private composer:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private downloadUrl:Ljava/lang/String;

.field private duration:J

.field private favorites:I

.field private fileType:J

.field private genre:Ljava/lang/String;

.field private isPlaying:Z

.field private language:Ljava/lang/String;

.field private pinyinInitial:Ljava/lang/String;

.field private playCount:I

.field private proxyCompany:Ljava/lang/String;

.field private publishTime:Ljava/lang/String;

.field private site:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private songCover:Ljava/lang/String;

.field private songCoverBitmap:Landroid/graphics/Bitmap;

.field private songHDCover:Ljava/lang/String;

.field private songId:Ljava/lang/String;

.field private songName:Ljava/lang/String;

.field private songRectCover:Ljava/lang/String;

.field private songRoundCover:Ljava/lang/String;

.field private songSquareCover:Ljava/lang/String;

.field private songUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private trackNumber:I

.field private type:Ljava/lang/String;

.field private versions:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/incall/serversdk/music/SongInfo$1;

    invoke-direct {v0}, Lcom/incall/serversdk/music/SongInfo$1;-><init>()V

    sput-object v0, Lcom/incall/serversdk/music/SongInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songId:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songName:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songCover:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songHDCover:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songSquareCover:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songRectCover:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songRoundCover:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->genre:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->type:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, p0, Lcom/incall/serversdk/music/SongInfo;->size:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/incall/serversdk/music/SongInfo;->duration:J

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->artist:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->artistId:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->downloadUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->site:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/incall/serversdk/music/SongInfo;->favorites:I

    iput v1, p0, Lcom/incall/serversdk/music/SongInfo;->playCount:I

    iput v1, p0, Lcom/incall/serversdk/music/SongInfo;->trackNumber:I

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->country:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->proxyCompany:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->publishTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->versions:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->composer:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->title:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/incall/serversdk/music/SongInfo;->isPlaying:Z

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->pinyinInitial:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songId:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songName:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songCover:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songHDCover:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songSquareCover:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songRectCover:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songRoundCover:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->genre:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->type:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, p0, Lcom/incall/serversdk/music/SongInfo;->size:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/incall/serversdk/music/SongInfo;->duration:J

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->artist:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->artistId:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->downloadUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->site:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/incall/serversdk/music/SongInfo;->favorites:I

    iput v1, p0, Lcom/incall/serversdk/music/SongInfo;->playCount:I

    iput v1, p0, Lcom/incall/serversdk/music/SongInfo;->trackNumber:I

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->country:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->proxyCompany:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->publishTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->versions:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->composer:Ljava/lang/String;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->title:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/incall/serversdk/music/SongInfo;->isPlaying:Z

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->pinyinInitial:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/incall/serversdk/music/SongInfo;->fileType:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songCover:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songHDCover:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songSquareCover:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songRectCover:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songRoundCover:Ljava/lang/String;

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->genre:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->size:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/incall/serversdk/music/SongInfo;->duration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->artist:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->artistId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->site:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/music/SongInfo;->favorites:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/music/SongInfo;->playCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/incall/serversdk/music/SongInfo;->trackNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->language:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->country:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->proxyCompany:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->publishTime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->description:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->versions:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->composer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/incall/serversdk/music/SongInfo;->isPlaying:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/incall/serversdk/music/SongInfo;->pinyinInitial:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/incall/serversdk/music/SongInfo;

    iget-object p0, p0, Lcom/incall/serversdk/music/SongInfo;->songId:Ljava/lang/String;

    iget-object p1, p1, Lcom/incall/serversdk/music/SongInfo;->songId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/music/SongInfo;->artist:Ljava/lang/String;

    return-object p0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/music/SongInfo;->composer:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/incall/serversdk/music/SongInfo;->duration:J

    return-wide v0
.end method

.method public getFileType()J
    .locals 2

    iget-wide v0, p0, Lcom/incall/serversdk/music/SongInfo;->fileType:J

    return-wide v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/music/SongInfo;->genre:Ljava/lang/String;

    return-object p0
.end method

.method public getPinyinInitial()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/music/SongInfo;->pinyinInitial:Ljava/lang/String;

    return-object p0
.end method

.method public getSite()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/music/SongInfo;->site:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/music/SongInfo;->size:Ljava/lang/String;

    return-object p0
.end method

.method public getSongCover()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/music/SongInfo;->songCover:Ljava/lang/String;

    return-object p0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/music/SongInfo;->songId:Ljava/lang/String;

    return-object p0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/music/SongInfo;->songName:Ljava/lang/String;

    return-object p0
.end method

.method public getSongUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/music/SongInfo;->songUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/music/SongInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/music/SongInfo;->type:Ljava/lang/String;

    return-object p0
.end method

.method public isPlaying()Z
    .locals 0

    iget-boolean p0, p0, Lcom/incall/serversdk/music/SongInfo;->isPlaying:Z

    return p0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/music/SongInfo;->artist:Ljava/lang/String;

    return-void
.end method

.method public setComposer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/music/SongInfo;->composer:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/incall/serversdk/music/SongInfo;->duration:J

    return-void
.end method

.method public setFileType(J)V
    .locals 0

    iput-wide p1, p0, Lcom/incall/serversdk/music/SongInfo;->fileType:J

    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/music/SongInfo;->genre:Ljava/lang/String;

    return-void
.end method

.method public setPinyinInitial(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/music/SongInfo;->pinyinInitial:Ljava/lang/String;

    return-void
.end method

.method public setPlaying(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/incall/serversdk/music/SongInfo;->isPlaying:Z

    return-void
.end method

.method public setSite(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/music/SongInfo;->site:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/music/SongInfo;->size:Ljava/lang/String;

    return-void
.end method

.method public setSongCover(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/music/SongInfo;->songCover:Ljava/lang/String;

    return-void
.end method

.method public setSongCoverBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/music/SongInfo;->songCoverBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/music/SongInfo;->songId:Ljava/lang/String;

    return-void
.end method

.method public setSongName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/music/SongInfo;->songName:Ljava/lang/String;

    return-void
.end method

.method public setSongUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/music/SongInfo;->songUrl:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/music/SongInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/music/SongInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/incall/serversdk/music/SongInfo;->fileType:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songCover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songHDCover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songSquareCover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songRectCover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songRoundCover:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/incall/serversdk/music/SongInfo;->songCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/incall/serversdk/music/SongInfo;->songUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/music/SongInfo;->genre:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/music/SongInfo;->type:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/music/SongInfo;->size:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/incall/serversdk/music/SongInfo;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/incall/serversdk/music/SongInfo;->artist:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/music/SongInfo;->artistId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/music/SongInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/music/SongInfo;->site:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/incall/serversdk/music/SongInfo;->favorites:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/incall/serversdk/music/SongInfo;->playCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/incall/serversdk/music/SongInfo;->trackNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/incall/serversdk/music/SongInfo;->language:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/music/SongInfo;->country:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/music/SongInfo;->proxyCompany:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/music/SongInfo;->publishTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/music/SongInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/music/SongInfo;->versions:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/music/SongInfo;->composer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/incall/serversdk/music/SongInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/incall/serversdk/music/SongInfo;->isPlaying:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p0, p0, Lcom/incall/serversdk/music/SongInfo;->pinyinInitial:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
