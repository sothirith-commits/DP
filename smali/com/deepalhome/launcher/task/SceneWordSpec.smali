.class public final Lcom/deepalhome/launcher/task/SceneWordSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final isAppScene:Z

.field public final isOnlyCommand:Z

.field public final operation:Ljava/lang/String;

.field public final priority:I

.field public final sceneId:I

.field public final targetComponent:Landroid/content/ComponentName;

.field public final type:Ljava/lang/String;

.field public final word:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    const-string p4, "scene_click"

    :cond_0
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_1

    move-object p5, p4

    :cond_1
    sget-object p2, Lcom/deepalhome/launcher/task/SceneActionExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/SceneActionExecutor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/deepalhome/launcher/task/SceneActionExecutor;->defaultTargetComponent:Landroid/content/ComponentName;

    const-string v0, "type"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "operation"

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "targetComponent"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->word:Ljava/lang/String;

    iput p1, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->sceneId:I

    iput-object p4, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->type:Ljava/lang/String;

    iput-object p5, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->operation:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->targetComponent:Landroid/content/ComponentName;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->isAppScene:Z

    iput-boolean p1, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->isOnlyCommand:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->priority:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/task/SceneWordSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/task/SceneWordSpec;

    iget-object v1, p1, Lcom/deepalhome/launcher/task/SceneWordSpec;->word:Ljava/lang/String;

    iget-object v3, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->word:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->sceneId:I

    iget v3, p1, Lcom/deepalhome/launcher/task/SceneWordSpec;->sceneId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/task/SceneWordSpec;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->operation:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/task/SceneWordSpec;->operation:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->targetComponent:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/deepalhome/launcher/task/SceneWordSpec;->targetComponent:Landroid/content/ComponentName;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->isAppScene:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/task/SceneWordSpec;->isAppScene:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->isOnlyCommand:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/task/SceneWordSpec;->isOnlyCommand:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget p0, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->priority:I

    iget p1, p1, Lcom/deepalhome/launcher/task/SceneWordSpec;->priority:I

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->word:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->sceneId:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->type:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->operation:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->targetComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x1

    iget-boolean v3, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->isAppScene:Z

    if-eqz v3, :cond_0

    move v3, v0

    :cond_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-boolean v3, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->isOnlyCommand:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget p0, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->priority:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SceneWordSpec(word="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->word:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sceneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->sceneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", operation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->operation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", targetComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->targetComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAppScene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->isAppScene:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOnlyCommand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->isOnlyCommand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/deepalhome/launcher/task/SceneWordSpec;->priority:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
