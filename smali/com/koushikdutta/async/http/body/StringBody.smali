.class public final Lcom/koushikdutta/async/http/body/StringBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# instance fields
.field public string:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lcom/koushikdutta/async/FilteredDataEmitter;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl$1;)V
    .locals 2

    new-instance v0, Lcom/koushikdutta/async/parser/StringParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/StringParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/parser/StringParser;->parse(Lcom/koushikdutta/async/FilteredDataEmitter;)Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object p1

    new-instance v0, Landroidx/cardview/widget/CardView$1;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0, p2}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallback(Landroidx/cardview/widget/CardView$1;)V

    return-void
.end method

.method public final readFullyOnRequest()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/body/StringBody;->string:Ljava/lang/String;

    return-object p0
.end method
