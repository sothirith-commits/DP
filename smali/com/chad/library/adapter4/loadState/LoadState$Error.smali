.class public final Lcom/chad/library/adapter4/loadState/LoadState$Error;
.super Lcom/chad/library/adapter4/loadState/LoadState;
.source "SourceFile"


# instance fields
.field public final error:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "error"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chad/library/adapter4/loadState/LoadState;-><init>(Z)V

    iput-object p1, p0, Lcom/chad/library/adapter4/loadState/LoadState$Error;->error:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/chad/library/adapter4/loadState/LoadState$Error;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/chad/library/adapter4/loadState/LoadState$Error;

    iget-boolean v0, p1, Lcom/chad/library/adapter4/loadState/LoadState;->endOfPaginationReached:Z

    iget-boolean v1, p0, Lcom/chad/library/adapter4/loadState/LoadState;->endOfPaginationReached:Z

    if-ne v1, v0, :cond_0

    iget-object p0, p0, Lcom/chad/library/adapter4/loadState/LoadState$Error;->error:Ljava/lang/Throwable;

    iget-object p1, p1, Lcom/chad/library/adapter4/loadState/LoadState$Error;->error:Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/chad/library/adapter4/loadState/LoadState;->endOfPaginationReached:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    iget-object p0, p0, Lcom/chad/library/adapter4/loadState/LoadState$Error;->error:Ljava/lang/Throwable;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error(endOfPaginationReached="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/chad/library/adapter4/loadState/LoadState;->endOfPaginationReached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chad/library/adapter4/loadState/LoadState$Error;->error:Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
