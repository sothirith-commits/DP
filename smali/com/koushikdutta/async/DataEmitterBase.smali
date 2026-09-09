.class public abstract Lcom/koushikdutta/async/DataEmitterBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;


# instance fields
.field public endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field public ended:Z

.field public mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public charset()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/DataEmitterBase;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    return-object p0
.end method

.method public onCompleted(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method public report(Ljava/lang/Exception;)V
    .locals 1

    iget-boolean v0, p0, Lcom/koushikdutta/async/DataEmitterBase;->ended:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/DataEmitterBase;->ended:Z

    iget-object p0, p0, Lcom/koushikdutta/async/DataEmitterBase;->endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/DataEmitterBase;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    return-void
.end method

.method public final setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/DataEmitterBase;->endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method
