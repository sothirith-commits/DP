.class public final Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;
.super Lcom/deepalhome/launcher/task/model/TaskCondition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedRange"
.end annotation


# instance fields
.field private final maxSpeed:Ljava/lang/Integer;

.field private final minSpeed:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    const-string v0, "Speed range"

    const/4 v1, 0x0

    const-string v2, "speed_range"

    invoke-direct {p0, v2, v0, v1}, Lcom/deepalhome/launcher/task/model/TaskCondition;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->minSpeed:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->maxSpeed:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->minSpeed:Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->maxSpeed:Ljava/lang/Integer;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->copy(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->minSpeed:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->maxSpeed:Ljava/lang/Integer;

    return-object p0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;
    .locals 0

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->minSpeed:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->minSpeed:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->maxSpeed:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->maxSpeed:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->minSpeed:Ljava/lang/Integer;

    const-string v1, " km/h"

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->maxSpeed:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->minSpeed:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->maxSpeed:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u2265"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->minSpeed:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->maxSpeed:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u2264"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->maxSpeed:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, "Any speed"

    :goto_0
    return-object p0
.end method

.method public final getMaxSpeed()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->maxSpeed:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getMinSpeed()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->minSpeed:Ljava/lang/Integer;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->minSpeed:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->maxSpeed:Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpeedRange(minSpeed="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->minSpeed:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->maxSpeed:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method