.class public final Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;
.super Lcom/deepalhome/launcher/task/model/TaskCondition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeRange"
.end annotation


# instance fields
.field private final endHour:I

.field private final endMinute:I

.field private final startHour:I

.field private final startMinute:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 3

    const-string v0, "Time range"

    const/4 v1, 0x0

    const-string v2, "time_range"

    invoke-direct {p0, v2, v0, v1}, Lcom/deepalhome/launcher/task/model/TaskCondition;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->startHour:I

    iput p2, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->startMinute:I

    iput p3, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->endHour:I

    iput p4, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->endMinute:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;IIIIILjava/lang/Object;)Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->startHour:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->startMinute:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->endHour:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->endMinute:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->copy(IIII)Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->startHour:I

    return p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->startMinute:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->endHour:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->endMinute:I

    return p0
.end method

.method public final copy(IIII)Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;
    .locals 0

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;-><init>(IIII)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;

    iget v1, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->startHour:I

    iget v3, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->startHour:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->startMinute:I

    iget v3, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->startMinute:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->endHour:I

    iget v3, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->endHour:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->endMinute:I

    iget p1, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->endMinute:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 4

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget v0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->startHour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->startMinute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%02d:%02d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->endHour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->endMinute:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEndHour()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->endHour:I

    return p0
.end method

.method public final getEndMinute()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->endMinute:I

    return p0
.end method

.method public final getStartHour()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->startHour:I

    return p0
.end method

.method public final getStartMinute()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->startMinute:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->startHour:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->startMinute:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->endHour:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->endMinute:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeRange(startHour="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->startHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->startMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->endHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->endMinute:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
