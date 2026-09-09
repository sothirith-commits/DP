.class public final Lretrofit2/ParameterHandler$Tag;
.super Lretrofit2/ParameterHandler;
.source "SourceFile"


# instance fields
.field public final cls:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Lretrofit2/ParameterHandler;-><init>()V

    iput-object p1, p0, Lretrofit2/ParameterHandler$Tag;->cls:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p1, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/Request$Builder;

    iget-object p0, p0, Lretrofit2/ParameterHandler$Tag;->cls:Ljava/lang/Class;

    invoke-virtual {p1, p0, p2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
