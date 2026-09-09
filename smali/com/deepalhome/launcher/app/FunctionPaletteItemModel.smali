.class public final Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final groupId:Ljava/lang/String;

.field public final isPlaceholder:Z

.field public final size:Lcom/deepalhome/launcher/app/FunctionPaletteSize;

.field public final type:Lcom/deepalhome/launcher/navigation/model/GridItemType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/app/FunctionPaletteSize;Z)V
    .locals 1

    const-string v0, "groupId"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->groupId:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iput-object p3, p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->size:Lcom/deepalhome/launcher/app/FunctionPaletteSize;

    iput-boolean p4, p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->isPlaceholder:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;

    iget-object v1, p1, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->groupId:Ljava/lang/String;

    iget-object v3, p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->groupId:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iget-object v3, p1, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->size:Lcom/deepalhome/launcher/app/FunctionPaletteSize;

    iget-object v3, p1, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->size:Lcom/deepalhome/launcher/app/FunctionPaletteSize;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->isPlaceholder:Z

    iget-boolean p1, p1, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->isPlaceholder:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->groupId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->size:Lcom/deepalhome/launcher/app/FunctionPaletteSize;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/app/FunctionPaletteSize;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean p0, p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->isPlaceholder:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    :cond_1
    add-int/2addr v1, p0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FunctionPaletteItemModel(groupId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->size:Lcom/deepalhome/launcher/app/FunctionPaletteSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPlaceholder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/app/FunctionPaletteItemModel;->isPlaceholder:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
