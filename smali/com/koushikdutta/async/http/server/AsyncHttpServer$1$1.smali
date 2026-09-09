.class public final Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;
.super Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;
.source "SourceFile"


# instance fields
.field public hasContinued:Z

.field public requestCallback:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;

.field public requestComplete:Z

.field public res:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;

.field public responseComplete:Z

.field public final self:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

.field public final synthetic this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

.field public final synthetic val$socket:Lcom/koushikdutta/async/AsyncNetworkSocket;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;Lcom/koushikdutta/async/AsyncNetworkSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    iget-object p1, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;-><init>()V

    iput-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->self:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    return-void
.end method


# virtual methods
.method public final handleOnCompleted()V
    .locals 4

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->requestComplete:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->responseComplete:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->code:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;

    iget-object v2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->httpVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->self:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    iget-object v2, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    if-nez v2, :cond_2

    if-nez v1, :cond_1

    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/koushikdutta/async/http/Protocol;->protocols:Ljava/util/Hashtable;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/Protocol;

    :goto_0
    sget-object v2, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_2
    const-string v1, "keep-alive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->onAccepted(Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->close()V

    :cond_4
    :goto_2
    return-void
.end method

.method public final onBody()V
    .locals 3

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->statusLine:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string v2, "\\?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->method:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v2, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-virtual {v2, v0, v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerRouter;->route(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/FilteredDataEmitter$1;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->requestCallback:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;

    return-void
.end method

.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->code:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->requestComplete:Z

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->report(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    new-instance v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$5;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$5;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V

    iput-object v1, v0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mDataHandler:Lcom/koushikdutta/async/callback/DataCallback;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->close()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->handleOnCompleted()V

    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->readFullyOnRequest()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->onRequest()V

    :cond_2
    return-void
.end method

.method public final onHeadersReceived()V
    .locals 4

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->hasContinued:Z

    if-nez v0, :cond_0

    const-string v0, "Expect"

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mRawHeaders:Lcom/koushikdutta/async/http/Headers;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "100-continue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->pause()V

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    const-string v1, "HTTP/1.1 100 Continue\r\n\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/16 v3, 0x18

    invoke-direct {v2, v3, p0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/AsyncNetworkSocket;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void

    :cond_0
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-direct {v0, p0, v1, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;Lcom/koushikdutta/async/AsyncNetworkSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->requestCallback:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;

    const/16 v0, 0x194

    iput v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->code:I

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->end()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mBody:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;->readFullyOnRequest()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->requestComplete:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->onRequest()V

    :cond_3
    return-void
.end method

.method public final onRequest()V
    .locals 3

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->requestCallback:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;

    iget-object v2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->res:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1, p0, v2}, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$$ExternalSyntheticLambda0;->onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AsyncHttpServer"

    const-string v1, "request callback raised uncaught exception. Catching versus crashing process"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, 0x1f4

    iput p0, v2, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->code:I

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->end()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final onUnknownBody(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .locals 1

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/bumptech/glide/GlideBuilder$1;

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    const/16 p1, 0x13

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/GlideBuilder$1;-><init>(BI)V

    return-object p0
.end method
