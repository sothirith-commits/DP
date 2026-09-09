.class public final Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final coord:Lcom/deepalhome/launcher/util/AssistantUtil$Coord;

.field public final destName:Ljava/lang/String;

.field public final hasEntities:Z

.field public final isShowOptionList:Z

.field public final isStartNavi:Z

.field public final query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZLjava/lang/String;Lcom/deepalhome/launcher/util/AssistantUtil$Coord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->query:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->isStartNavi:Z

    iput-boolean p3, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->isShowOptionList:Z

    iput-boolean p4, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->hasEntities:Z

    iput-object p5, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->destName:Ljava/lang/String;

    iput-object p6, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->coord:Lcom/deepalhome/launcher/util/AssistantUtil$Coord;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;

    iget-object v1, p1, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->query:Ljava/lang/String;

    iget-object v3, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->query:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->isStartNavi:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->isStartNavi:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->isShowOptionList:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->isShowOptionList:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->hasEntities:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->hasEntities:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->destName:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->destName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->coord:Lcom/deepalhome/launcher/util/AssistantUtil$Coord;

    iget-object p1, p1, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->coord:Lcom/deepalhome/launcher/util/AssistantUtil$Coord;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->isStartNavi:Z

    if-eqz v2, :cond_0

    move v2, v1

    :cond_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->isShowOptionList:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->hasEntities:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->destName:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->coord:Lcom/deepalhome/launcher/util/AssistantUtil$Coord;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/AssistantUtil$Coord;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParsedLog(query="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isStartNavi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->isStartNavi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShowOptionList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->isShowOptionList:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasEntities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->hasEntities:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", destName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->destName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", coord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->coord:Lcom/deepalhome/launcher/util/AssistantUtil$Coord;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
