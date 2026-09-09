.class public final Landroid/sun/security/util/ByteArrayTagOrder;
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
    .locals 0

    check-cast p1, [B

    check-cast p2, [B

    const/4 p0, 0x0

    aget-byte p1, p1, p0

    or-int/lit8 p1, p1, 0x20

    aget-byte p0, p2, p0

    or-int/lit8 p0, p0, 0x20

    sub-int/2addr p1, p0

    return p1
.end method
