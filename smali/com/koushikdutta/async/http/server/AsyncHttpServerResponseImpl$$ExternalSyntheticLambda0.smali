.class public final synthetic Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# instance fields
.field public final synthetic f$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$$ExternalSyntheticLambda0;->f$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;

    iput-boolean p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$$ExternalSyntheticLambda0;->f$0:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;

    if-eqz p1, :cond_0

    iget-object p0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    new-instance v0, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    iput-object v0, p1, Lcom/koushikdutta/async/AsyncNetworkSocket;->mDataHandler:Lcom/koushikdutta/async/callback/DataCallback;

    new-instance p1, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;

    invoke-direct {p1}, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;-><init>()V

    iget-object p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket;->mCompletedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-virtual {p0}, Lcom/koushikdutta/async/AsyncNetworkSocket;->close()V

    goto :goto_1

    :cond_0
    iget-object p1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mSocket:Lcom/koushikdutta/async/AsyncNetworkSocket;

    iget-boolean p0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$$ExternalSyntheticLambda0;->f$1:Z

    if-eqz p0, :cond_1

    new-instance p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;-><init>(Lcom/koushikdutta/async/AsyncNetworkSocket;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mMaxBuffer:I

    iput-object p0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mSink:Lcom/koushikdutta/async/DataSink;

    goto :goto_0

    :cond_1
    iput-object p1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mSink:Lcom/koushikdutta/async/DataSink;

    :goto_0
    iget-object p0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mSink:Lcom/koushikdutta/async/DataSink;

    iget-object v1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {p0, v1}, Lcom/koushikdutta/async/DataSink;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    iget-object v1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->mSink:Lcom/koushikdutta/async/DataSink;

    iget-object v2, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->writable:Lcom/koushikdutta/async/callback/WritableCallback;

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    iput-object p0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->writable:Lcom/koushikdutta/async/callback/WritableCallback;

    iget-boolean p0, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->ended:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$4;->end()V

    goto :goto_1

    :cond_2
    iget-object p0, p1, Lcom/koushikdutta/async/AsyncNetworkSocket;->mServer:Lcom/koushikdutta/async/AsyncServer;

    new-instance p1, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    const/16 v1, 0x18

    invoke-direct {p1, v1, v0}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
