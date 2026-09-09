.class public interface abstract Lcom/koushikdutta/async/DataSink;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getServer()Lcom/koushikdutta/async/AsyncServer;
.end method

.method public abstract getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
.end method

.method public abstract setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end method

.method public abstract setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
.end method

.method public abstract write(Lcom/koushikdutta/async/ByteBufferList;)V
.end method
