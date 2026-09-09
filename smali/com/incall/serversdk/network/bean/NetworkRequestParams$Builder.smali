.class public Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/network/bean/NetworkRequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bodyDataType:Ljava/lang/String;

.field private bodyParams:Ljava/lang/Object;

.field private headParams:Ljava/util/Map;

.field private methodType:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;->methodType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;->bodyDataType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;->headParams:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;->bodyParams:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public addBodyParams(Ljava/lang/Object;)Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;->bodyParams:Ljava/lang/Object;

    return-object p0
.end method

.method public addBodyParamsWithType(Ljava/lang/String;Ljava/lang/Object;)Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;->bodyDataType:Ljava/lang/String;

    iput-object p2, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;->bodyParams:Ljava/lang/Object;

    return-object p0
.end method

.method public addHeadParams(Ljava/util/Map;)Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;->headParams:Ljava/util/Map;

    return-object p0
.end method

.method public addMethodType(Ljava/lang/String;)Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;->methodType:Ljava/lang/String;

    return-object p0
.end method

.method public addUrl(Ljava/lang/String;)Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/incall/serversdk/network/bean/NetworkRequestParams;
    .locals 2

    new-instance v0, Lcom/incall/serversdk/network/bean/NetworkRequestParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/incall/serversdk/network/bean/NetworkRequestParams;-><init>(Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;Lcom/incall/serversdk/network/bean/NetworkRequestParams$1;)V

    return-object v0
.end method

.method public setBodyDataType(Ljava/lang/String;)Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/network/bean/NetworkRequestParams$Builder;->bodyDataType:Ljava/lang/String;

    return-object p0
.end method
