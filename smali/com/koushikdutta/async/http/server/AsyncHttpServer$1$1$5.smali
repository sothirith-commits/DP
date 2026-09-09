.class public final Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$5;
.super Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;
.source "SourceFile"


# instance fields
.field public final synthetic this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$5;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-direct {p0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 0

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$5;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;->mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->close()V

    return-void
.end method
