.class public final Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final file:Ljava/io/File;

.field private final lastModified:J

.field private final name:Ljava/lang/String;

.field private final size:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    const-string v0, "file"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->size:J

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->lastModified:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;Ljava/io/File;ILjava/lang/Object;)Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->file:Ljava/io/File;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->copy(Ljava/io/File;)Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->file:Ljava/io/File;

    return-object p0
.end method

.method public final copy(Ljava/io/File;)Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;
    .locals 0

    const-string p0, "file"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->file:Ljava/io/File;

    iget-object p1, p1, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->file:Ljava/io/File;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->file:Ljava/io/File;

    return-object p0
.end method

.method public final getLastModified()J
    .locals 2

    iget-wide v0, p0, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->lastModified:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->size:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownloadedWallpaper(file="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->file:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
