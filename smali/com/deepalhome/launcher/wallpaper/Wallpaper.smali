.class public final Lcom/deepalhome/launcher/wallpaper/Wallpaper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final filePath:Ljava/lang/String;

.field private final resId:I

.field private final type:Lcom/deepalhome/launcher/wallpaper/WallpaperType;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperType;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperType;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "type"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "filePath"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->type:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->filePath:Ljava/lang/String;

    iput p3, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->resId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperType;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->IMAGE_RES:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const-string p2, ""

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperType;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/wallpaper/Wallpaper;Lcom/deepalhome/launcher/wallpaper/WallpaperType;Ljava/lang/String;IILjava/lang/Object;)Lcom/deepalhome/launcher/wallpaper/Wallpaper;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->type:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->filePath:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->resId:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->copy(Lcom/deepalhome/launcher/wallpaper/WallpaperType;Ljava/lang/String;I)Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/deepalhome/launcher/wallpaper/WallpaperType;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->type:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->resId:I

    return p0
.end method

.method public final copy(Lcom/deepalhome/launcher/wallpaper/WallpaperType;Ljava/lang/String;I)Lcom/deepalhome/launcher/wallpaper/Wallpaper;
    .locals 0

    const-string p0, "type"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "filePath"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperType;Ljava/lang/String;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->type:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    iget-object v3, p1, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->type:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->filePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->filePath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->resId:I

    iget p1, p1, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->resId:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getResId()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->resId:I

    return p0
.end method

.method public final getType()Lcom/deepalhome/launcher/wallpaper/WallpaperType;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->type:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->type:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->filePath:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->resId:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wallpaper(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->type:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->resId:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
