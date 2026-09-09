.class final Lcom/efs/sdk/net/OkHttpInterceptor$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/net/a/a/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/net/OkHttpInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lokhttp3/Request;

.field private final c:Lokhttp3/Response;

.field private final d:Lokhttp3/Connection;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lokhttp3/Request;Lokhttp3/Response;Lokhttp3/Connection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/efs/sdk/net/OkHttpInterceptor$c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/efs/sdk/net/OkHttpInterceptor$c;->b:Lokhttp3/Request;

    iput-object p3, p0, Lcom/efs/sdk/net/OkHttpInterceptor$c;->c:Lokhttp3/Response;

    iput-object p4, p0, Lcom/efs/sdk/net/OkHttpInterceptor$c;->d:Lokhttp3/Connection;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/efs/sdk/net/OkHttpInterceptor$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget-object p0, p0, Lcom/efs/sdk/net/OkHttpInterceptor$c;->c:Lokhttp3/Response;

    iget p0, p0, Lokhttp3/Response;->code:I

    return p0
.end method
