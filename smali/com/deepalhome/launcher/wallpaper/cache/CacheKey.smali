.class public final Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CURRENT_SCHEMA_VERSION:I = 0x1

.field public static final Companion:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey$Companion;


# instance fields
.field private final categoryId:I

.field private final page:I

.field private final pageSize:I

.field private final schemaVersion:I

.field private final source:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->Companion:Lcom/deepalhome/launcher/wallpaper/cache/CacheKey$Companion;

    return-void
.end method

.method public constructor <init>(ILcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;III)V
    .locals 1

    const-string v0, "source"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->schemaVersion:I

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->source:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    iput p3, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->categoryId:I

    iput p4, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->page:I

    iput p5, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->pageSize:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    const/4 p7, 0x1

    and-int/2addr p6, p7

    if-eqz p6, :cond_0

    move v1, p7

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;-><init>(ILcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;III)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;ILcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;IIIILjava/lang/Object;)Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->schemaVersion:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->source:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->categoryId:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->page:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->pageSize:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->copy(ILcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;III)Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->schemaVersion:I

    return p0
.end method

.method public final component2()Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->source:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->categoryId:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->page:I

    return p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->pageSize:I

    return p0
.end method

.method public final copy(ILcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;III)Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;
    .locals 6

    const-string p0, "source"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;-><init>(ILcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;III)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;

    iget v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->schemaVersion:I

    iget v3, p1, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->schemaVersion:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->source:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    iget-object v3, p1, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->source:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->categoryId:I

    iget v3, p1, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->categoryId:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->page:I

    iget v3, p1, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->page:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->pageSize:I

    iget p1, p1, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->pageSize:I

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCategoryId()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->categoryId:I

    return p0
.end method

.method public final getPage()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->page:I

    return p0
.end method

.method public final getPageSize()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->pageSize:I

    return p0
.end method

.method public final getSchemaVersion()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->schemaVersion:I

    return p0
.end method

.method public final getSource()Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->source:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->schemaVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->source:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->categoryId:I

    invoke-static {v0, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->page:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->pageSize:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toFilePath()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->source:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v0, "dynamic"

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const-string v0, "daily"

    goto :goto_0

    :cond_2
    const-string v0, "static"

    goto :goto_0

    :cond_3
    const-string v0, "qh360"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->schemaVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/c"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->categoryId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/p"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->page:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->pageSize:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".json"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CacheKey(schemaVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->schemaVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->source:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->categoryId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/cache/CacheKey;->pageSize:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
