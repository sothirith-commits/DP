.class public enum Lcom/koushikdutta/async/http/Protocol;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/koushikdutta/async/http/Protocol;

.field public static final enum HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

.field public static final protocols:Ljava/util/Hashtable;


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x2

    new-instance v2, Lcom/koushikdutta/async/http/Protocol;

    const-string v3, "http/1.0"

    const-string v4, "HTTP_1_0"

    const/4 v5, 0x0

    invoke-direct {v2, v5, v4, v3}, Lcom/koushikdutta/async/http/Protocol;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/koushikdutta/async/http/Protocol;

    const-string v4, "http/1.1"

    const-string v6, "HTTP_1_1"

    const/4 v7, 0x1

    invoke-direct {v3, v7, v6, v4}, Lcom/koushikdutta/async/http/Protocol;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/koushikdutta/async/http/Protocol;->HTTP_1_1:Lcom/koushikdutta/async/http/Protocol;

    new-instance v4, Lcom/koushikdutta/async/http/Protocol$1;

    const-string v6, "spdy/3.1"

    const-string v8, "SPDY_3"

    invoke-direct {v4, v1, v8, v6}, Lcom/koushikdutta/async/http/Protocol;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/koushikdutta/async/http/Protocol$2;

    const-string v8, "h2-13"

    const-string v9, "HTTP_2"

    invoke-direct {v6, v0, v9, v8}, Lcom/koushikdutta/async/http/Protocol;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/koushikdutta/async/http/Protocol;

    aput-object v2, v8, v5

    aput-object v3, v8, v7

    aput-object v4, v8, v1

    aput-object v6, v8, v0

    sput-object v8, Lcom/koushikdutta/async/http/Protocol;->$VALUES:[Lcom/koushikdutta/async/http/Protocol;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/Protocol;->protocols:Ljava/util/Hashtable;

    iget-object v1, v2, Lcom/koushikdutta/async/http/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v3, Lcom/koushikdutta/async/http/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v4, Lcom/koushikdutta/async/http/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v6, Lcom/koushikdutta/async/http/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/koushikdutta/async/http/Protocol;->protocol:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/koushikdutta/async/http/Protocol;
    .locals 1

    const-class v0, Lcom/koushikdutta/async/http/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/koushikdutta/async/http/Protocol;

    return-object p0
.end method

.method public static values()[Lcom/koushikdutta/async/http/Protocol;
    .locals 1

    sget-object v0, Lcom/koushikdutta/async/http/Protocol;->$VALUES:[Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v0}, [Lcom/koushikdutta/async/http/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/koushikdutta/async/http/Protocol;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/Protocol;->protocol:Ljava/lang/String;

    return-object p0
.end method
