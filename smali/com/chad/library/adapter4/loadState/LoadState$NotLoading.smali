.class public final Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;
.super Lcom/chad/library/adapter4/loadState/LoadState;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading$Companion;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;

    iget-boolean p1, p1, Lcom/chad/library/adapter4/loadState/LoadState;->endOfPaginationReached:Z

    iget-boolean p0, p0, Lcom/chad/library/adapter4/loadState/LoadState;->endOfPaginationReached:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-boolean p0, p0, Lcom/chad/library/adapter4/loadState/LoadState;->endOfPaginationReached:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotLoading(endOfPaginationReached="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/chad/library/adapter4/loadState/LoadState;->endOfPaginationReached:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
