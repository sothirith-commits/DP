.class public final Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;
.super Lcom/deepalhome/launcher/task/model/TaskTrigger;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedRange"
.end annotation


# instance fields
.field private lastTrigged:Z

.field private final maxSpeed:I

.field private final minSpeed:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "speed_range_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Speed range"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/deepalhome/launcher/task/model/TaskTrigger;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->minSpeed:I

    iput p2, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->maxSpeed:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;IIILjava/lang/Object;)Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->minSpeed:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->maxSpeed:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->copy(II)Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->minSpeed:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->maxSpeed:I

    return p0
.end method

.method public final copy(II)Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;
    .locals 0

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;-><init>(II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;

    iget v1, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->minSpeed:I

    iget v3, p1, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->minSpeed:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->maxSpeed:I

    iget p1, p1, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->maxSpeed:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Speed range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->minSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ~ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->maxSpeed:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLastTrigged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->lastTrigged:Z

    return p0
.end method

.method public final getMaxSpeed()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->maxSpeed:I

    return p0
.end method

.method public final getMinSpeed()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->minSpeed:I

    return p0
.end method

.method public getPickerDisplayName()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->minSpeed:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->maxSpeed:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setLastTrigged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->lastTrigged:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpeedRange(minSpeed="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->minSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;->maxSpeed:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
