.class public Lcom/koushikdutta/async/FilteredDataEmitter;
.super Lcom/koushikdutta/async/DataEmitterBase;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# instance fields
.field public closed:Z

.field public mEmitter:Lcom/koushikdutta/async/DataEmitter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/DataEmitterBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final charset()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->charset()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->closed:Z

    iget-object p0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->close()V

    :cond_0
    return-void
.end method

.method public isPaused()Z
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->isPaused()Z

    move-result p0

    return p0
.end method

.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    iget-boolean p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->closed:Z

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    return-void

    :cond_0
    invoke-static {p0, p2}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method

.method public final setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {p1, p0}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    iget-object p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    new-instance v0, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method
