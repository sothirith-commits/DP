.class public final Lretrofit2/ParameterHandler$QueryName;
.super Lretrofit2/ParameterHandler;
.source "SourceFile"


# instance fields
.field public final encoded:Z

.field public final nameConverter:Lretrofit2/Converter;


# direct methods
.method public constructor <init>(Lretrofit2/BuiltInConverters$ToStringConverter;Z)V
    .locals 0

    invoke-direct {p0}, Lretrofit2/ParameterHandler;-><init>()V

    iput-object p1, p0, Lretrofit2/ParameterHandler$QueryName;->nameConverter:Lretrofit2/Converter;

    iput-boolean p2, p0, Lretrofit2/ParameterHandler$QueryName;->encoded:Z

    return-void
.end method


# virtual methods
.method public final apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lretrofit2/ParameterHandler$QueryName;->nameConverter:Lretrofit2/Converter;

    invoke-interface {v0, p2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x0

    iget-boolean p0, p0, Lretrofit2/ParameterHandler$QueryName;->encoded:Z

    invoke-virtual {p1, p2, v0, p0}, Lretrofit2/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
