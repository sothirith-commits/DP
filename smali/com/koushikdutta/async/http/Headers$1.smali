.class public final Lcom/koushikdutta/async/http/Headers$1;
.super Lcom/koushikdutta/async/http/Multimap;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/Headers;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/Headers;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/Headers$1;->this$0:Lcom/koushikdutta/async/http/Headers;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    return-void
.end method


# virtual methods
.method public final newList()Ljava/util/List;
    .locals 0

    new-instance p0, Lcom/koushikdutta/async/util/TaggedList;

    invoke-direct {p0}, Lcom/koushikdutta/async/util/TaggedList;-><init>()V

    return-object p0
.end method
