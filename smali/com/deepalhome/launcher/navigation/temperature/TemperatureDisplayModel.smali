.class public final Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final decimalPart:Ljava/lang/String;

.field public final integerPart:Ljava/lang/String;

.field public final isPlaceholder:Z

.field public final unitPart:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->integerPart:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->decimalPart:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->unitPart:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->isPlaceholder:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;

    iget-object v1, p1, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->integerPart:Ljava/lang/String;

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->integerPart:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->decimalPart:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->decimalPart:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->unitPart:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->unitPart:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->isPlaceholder:Z

    iget-boolean p1, p1, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->isPlaceholder:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->integerPart:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->decimalPart:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->unitPart:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->isPlaceholder:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TemperatureDisplayModel(integerPart="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->integerPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", decimalPart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->decimalPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", unitPart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->unitPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPlaceholder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->isPlaceholder:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
