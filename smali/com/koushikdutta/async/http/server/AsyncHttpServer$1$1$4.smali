.class public final Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/DataSink;
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# instance fields
.field public closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field public code:I

.field public ended:Z

.field public headWritten:Z

.field public final httpVersion:Ljava/lang/String;

.field public mContentLength:J

.field public final mRawHeaders:Lcom/koushikdutta/async/http/Headers;

.field public final mRequest:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

.field public mSink:Lcom/koushikdutta/async/DataSink;

.field public final mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

.field public final synthetic this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

.field public writable:Lcom/koushikdutta/async/callback/WritableCallback;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;Lcom/koushikdutta/async/AsyncNetworkSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    new-instance p1, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {p1}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mContentLength:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->headWritten:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->code:I

    const-string v0, "HTTP/1.1"

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->httpVersion:Ljava/lang/String;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    iput-object p3, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mRequest:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    sget-object p0, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    iget-object p0, p3, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string p2, "Connection"

    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "keep-alive"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const-string p0, "Keep-Alive"

    invoke-virtual {p1, p2, p0}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final end()V
    .locals 3

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->ended:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->ended:Z

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->headWritten:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mSink:Lcom/koushikdutta/async/DataSink;

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/koushikdutta/async/http/Headers;->map:Lcom/koushikdutta/async/http/Headers$1;

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mSink:Lcom/koushikdutta/async/DataSink;

    instance-of v1, v0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->end()V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->headWritten:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mRequest:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->method:Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "text/html"

    const-string v1, ""

    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->send(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_5
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->initFirstWrite()V

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->onEnd()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->onEnd()V

    :goto_1
    return-void
.end method

.method public final getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    iget-object p0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    return-object p0
.end method

.method public final getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mSink:Lcom/koushikdutta/async/DataSink;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->writable:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object p0
.end method

.method public final initFirstWrite()V
    .locals 11

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->headWritten:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->headWritten:Z

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/koushikdutta/async/http/Headers;->map:Lcom/koushikdutta/async/http/Headers$1;

    invoke-virtual {v5, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    :cond_1
    const-string v4, "Chunked"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "Connection"

    invoke-virtual {v1, v3}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "close"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    move v3, v6

    :goto_0
    iget-wide v7, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mContentLength:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-gez v5, :cond_4

    const-string v5, "Content-Length"

    invoke-virtual {v1, v5}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mContentLength:J

    :cond_4
    iget-wide v7, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mContentLength:J

    cmp-long v5, v7, v9

    if-gez v5, :cond_5

    if-eqz v3, :cond_5

    invoke-virtual {v1, v2, v4}, Lcom/koushikdutta/async/http/Headers;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v0, v6

    :goto_1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->code:I

    sget-object v3, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_6

    const-string v3, "Unknown"

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->httpVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/Headers;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$$ExternalSyntheticLambda0;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;Z)V

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-static {p0, v1, v2}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/AsyncNetworkSocket;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->end()V

    return-void
.end method

.method public final onEnd()V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    iput-boolean v0, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->responseComplete:Z

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    iget-object p0, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v0, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->handleOnCompleted()V

    return-void
.end method

.method public final send(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "text/html; charset=utf-8"

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->send(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final send(Ljava/lang/String;[B)V
    .locals 3

    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-direct {v1}, Lcom/koushikdutta/async/util/ArrayDeque;-><init>()V

    iput-object v1, v0, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v1, v0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    const/4 v1, 0x0

    iput v1, v0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    iget-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    iget-object p2, p2, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    new-instance v1, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v0, p1, v2}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mSink:Lcom/koushikdutta/async/DataSink;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    :goto_0
    return-void
.end method

.method public final setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mSink:Lcom/koushikdutta/async/DataSink;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->writable:Lcom/koushikdutta/async/callback/WritableCallback;

    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->code:I

    sget-object v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->mCodes:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "Unknown"

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->httpVersion:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/Headers;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->headWritten:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->initFirstWrite()V

    :cond_0
    iget v0, p1, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mSink:Lcom/koushikdutta/async/DataSink;

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-interface {p0, p1}, Lcom/koushikdutta/async/DataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method
