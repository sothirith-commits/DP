.class public final Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final data:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;",
            ">;"
        }
    .end annotation
.end field

.field private final errmsg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errmsg"
    .end annotation
.end field

.field private final errno:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errno"
    .end annotation
.end field

.field private final total:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->data:Ljava/util/Map;

    iput-object p2, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->total:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->errno:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->errmsg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->data:Ljava/util/Map;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->total:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->errno:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->errmsg:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->copy(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->data:Ljava/util/Map;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->total:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->errno:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->errmsg:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;"
        }
    .end annotation

    new-instance p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;

    iget-object v1, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->data:Ljava/util/Map;

    iget-object v3, p1, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->data:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->total:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->total:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->errno:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->errno:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->errmsg:Ljava/lang/String;

    iget-object p1, p1, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->errmsg:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getData()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->data:Ljava/util/Map;

    return-object p0
.end method

.method public final getErrmsg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->errmsg:Ljava/lang/String;

    return-object p0
.end method

.method public final getErrno()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->errno:Ljava/lang/String;

    return-object p0
.end method

.method public final getTotal()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->total:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->data:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->total:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->errno:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->errmsg:Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wallpaper360CategoriesResponse(data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->data:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->total:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errno="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->errno:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errmsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoriesResponse;->errmsg:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
