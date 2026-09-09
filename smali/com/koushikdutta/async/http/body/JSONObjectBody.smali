.class public final Lcom/koushikdutta/async/http/body/JSONObjectBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lcom/koushikdutta/async/FilteredDataEmitter;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;)V
    .locals 4

    new-instance v0, Lcom/koushikdutta/async/parser/JSONObjectParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/JSONObjectParser;-><init>()V

    new-instance v0, Lcom/koushikdutta/async/parser/StringParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/StringParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/parser/StringParser;->parse(Lcom/koushikdutta/async/FilteredDataEmitter;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object p1

    new-instance v0, Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v1, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;

    const/16 v2, 0xd

    invoke-direct {v1, v2, v0}, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    monitor-enter v0

    :try_start_0
    iget-boolean v2, v0, Lcom/koushikdutta/async/future/SimpleCancellable;->complete:Z

    if-eqz v2, :cond_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iput-object p1, v0, Lcom/koushikdutta/async/future/SimpleCancellable;->parent:Lcom/koushikdutta/async/future/Cancellable;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    new-instance v2, Lcom/koushikdutta/async/future/SimpleFuture$$ExternalSyntheticLambda2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Lcom/koushikdutta/async/future/SimpleFuture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallbackInternal(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    new-instance p1, Landroidx/cardview/widget/CardView$1;

    const/16 v1, 0x14

    invoke-direct {p1, v1, p0, p2}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallback(Landroidx/cardview/widget/CardView$1;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final readFullyOnRequest()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
