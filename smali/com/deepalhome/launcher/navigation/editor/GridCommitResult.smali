.class public final Lcom/deepalhome/launcher/navigation/editor/GridCommitResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final committedConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/editor/GridCommitResult;->committedConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/navigation/editor/GridCommitResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/navigation/editor/GridCommitResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/editor/GridCommitResult;->committedConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    iget-object p1, p1, Lcom/deepalhome/launcher/navigation/editor/GridCommitResult;->committedConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/editor/GridCommitResult;->committedConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->hashCode()I

    move-result p0

    add-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GridCommitResult(accepted=true, committedConfig="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/editor/GridCommitResult;->committedConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
