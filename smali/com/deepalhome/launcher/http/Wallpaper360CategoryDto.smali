.class public final Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private final orderNum:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_num"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->orderNum:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->name:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->orderNum:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->orderNum:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;
    .locals 0

    new-instance p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;

    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;

    iget-object v1, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->orderNum:Ljava/lang/String;

    iget-object p1, p1, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->orderNum:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getOrderNum()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->orderNum:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->name:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->orderNum:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wallpaper360CategoryDto(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", orderNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/http/Wallpaper360CategoryDto;->orderNum:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
