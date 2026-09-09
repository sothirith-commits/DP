.class public abstract Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# instance fields
.field public mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

.field public final mHeaderCallback:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;

.field public final mRawHeaders:Lcom/koushikdutta/async/http/Headers;

.field public final mReporter:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;

.field public mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

.field public method:Ljava/lang/String;

.field public statusLine:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    new-instance v0, Lcom/koushikdutta/async/http/Headers;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Headers;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mReporter:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;

    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mHeaderCallback:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;

    return-void
.end method


# virtual methods
.method public final getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    iget-object p0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mDataHandler:Lcom/koushikdutta/async/callback/DataCallback;

    return-object p0
.end method

.method public final isPaused()Z
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    iget-boolean p0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mPaused:Z

    return p0
.end method

.method public onBody()V
    .locals 0

    return-void
.end method

.method public abstract onHeadersReceived()V
.end method

.method public onUnknownBody(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mDataHandler:Lcom/koushikdutta/async/callback/DataCallback;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->statusLine:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/Headers;->toPrefixString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
