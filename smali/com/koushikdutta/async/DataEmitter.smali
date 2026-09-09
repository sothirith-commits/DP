.class public interface abstract Lcom/koushikdutta/async/DataEmitter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract charset()Ljava/lang/String;
.end method

.method public abstract close()V
.end method

.method public abstract getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
.end method

.method public abstract isPaused()Z
.end method

.method public abstract setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
.end method

.method public abstract setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end method
