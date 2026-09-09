.class public final Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# instance fields
.field public final synthetic this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    return-void
.end method


# virtual methods
.method public final onAccepted(Lcom/koushikdutta/async/AsyncNetworkSocket;)V
    .locals 2

    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    iput-object p1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    new-instance p0, Lcom/koushikdutta/async/LineEmitter;

    invoke-direct {p0}, Lcom/koushikdutta/async/LineEmitter;-><init>()V

    iget-object v1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    iput-object p0, v1, Lcom/koushikdutta/async/AsyncNetworkSocket;->mDataHandler:Lcom/koushikdutta/async/callback/DataCallback;

    iget-object v0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mHeaderCallback:Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;

    iput-object v0, p0, Lcom/koushikdutta/async/LineEmitter;->mLineCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    new-instance p0, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;

    invoke-direct {p0}, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;-><init>()V

    iput-object p0, v1, Lcom/koushikdutta/async/AsyncNetworkSocket;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-virtual {p1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->resume()V

    return-void
.end method

.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
