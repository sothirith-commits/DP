.class public final Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/ConflictChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConflictResult"
.end annotation


# instance fields
.field private final conflictType:Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;

.field private final hasConflict:Z


# direct methods
.method public constructor <init>(ZLcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->hasConflict:Z

    iput-object p2, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->conflictType:Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;-><init>(ZLcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;ZLcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;ILjava/lang/Object;)Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->hasConflict:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->conflictType:Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->copy(ZLcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;)Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->hasConflict:Z

    return p0
.end method

.method public final component2()Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->conflictType:Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;

    return-object p0
.end method

.method public final copy(ZLcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;)Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;
    .locals 0

    new-instance p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;-><init>(ZLcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->hasConflict:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->hasConflict:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->conflictType:Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;

    iget-object p1, p1, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->conflictType:Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getConflictType()Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->conflictType:Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;

    return-object p0
.end method

.method public final getHasConflict()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->hasConflict:Z

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->hasConflict:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->conflictType:Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConflictResult(hasConflict="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->hasConflict:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", conflictType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictResult;->conflictType:Lcom/deepalhome/launcher/task/model/ConflictChecker$ConflictType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
