.class public final Lcom/deepalhome/launcher/navigation/editor/GridEditResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final accepted:Z

.field public final config:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

.field public final state:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;->VALID:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;-><init>(ZLcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;)V

    return-void
.end method

.method public constructor <init>(ZLcom/deepalhome/launcher/navigation/model/NavBarGridConfig;Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;)V
    .locals 1

    const-string v0, "config"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "state"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;->accepted:Z

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;->config:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;->state:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;

    iget-boolean v1, p1, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;->accepted:Z

    iget-boolean v3, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;->accepted:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;->config:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;->config:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;->state:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    iget-object p1, p1, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;->state:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;->accepted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;->config:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;->state:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GridEditResult(accepted="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;->accepted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;->config:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/editor/GridEditResult;->state:Lcom/deepalhome/launcher/navigation/editor/DragPreviewState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
