.class public final Lcom/deepalhome/launcher/wallpaper/Category;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CACHE_DURATION_MS:J = 0x5265c00L

.field public static final Companion:Lcom/deepalhome/launcher/wallpaper/Category$Companion;

.field public static final ID_DAILY:I = -0x4

.field public static final ID_DYNAMIC:I = -0x5

.field public static final ID_SELF:I = -0x3

.field private static final KEY_CACHE_TIME:Ljava/lang/String; = "cache_time"

.field private static final KEY_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final PREF_NAME:Ljava/lang/String; = "wallpaper_category_cache"


# instance fields
.field private final cover:Ljava/lang/String;

.field private final id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "cid",
            "categoryId"
        }
        value = "id"
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "name",
            "title"
        }
        value = "categoryName"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/Category$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/Category$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/Category;->Companion:Lcom/deepalhome/launcher/wallpaper/Category$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "cover"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/wallpaper/Category;->id:I

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/Category;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/Category;->cover:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const-string p3, ""

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/wallpaper/Category;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/wallpaper/Category;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/wallpaper/Category;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/deepalhome/launcher/wallpaper/Category;->id:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/Category;->title:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/deepalhome/launcher/wallpaper/Category;->cover:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/deepalhome/launcher/wallpaper/Category;->copy(ILjava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/wallpaper/Category;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/Category;->id:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/Category;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/Category;->cover:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/wallpaper/Category;
    .locals 0

    const-string p0, "title"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "cover"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/deepalhome/launcher/wallpaper/Category;

    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/wallpaper/Category;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/wallpaper/Category;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/wallpaper/Category;

    iget v1, p0, Lcom/deepalhome/launcher/wallpaper/Category;->id:I

    iget v3, p1, Lcom/deepalhome/launcher/wallpaper/Category;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/Category;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/wallpaper/Category;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/Category;->cover:Ljava/lang/String;

    iget-object p1, p1, Lcom/deepalhome/launcher/wallpaper/Category;->cover:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCover()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/Category;->cover:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/Category;->id:I

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/Category;->title:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/Category;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/Category;->title:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/Category;->cover:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Category(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/deepalhome/launcher/wallpaper/Category;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/Category;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cover="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/Category;->cover:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
