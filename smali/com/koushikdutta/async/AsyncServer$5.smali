.class public final Lcom/koushikdutta/async/AsyncServer$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Ljava/net/InetAddress;

    check-cast p2, Ljava/net/InetAddress;

    instance-of p0, p1, Ljava/net/Inet4Address;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    instance-of v1, p2, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of p1, p1, Ljava/net/Inet6Address;

    if-eqz p1, :cond_1

    instance-of p1, p2, Ljava/net/Inet6Address;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    instance-of p0, p2, Ljava/net/Inet6Address;

    if-eqz p0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
