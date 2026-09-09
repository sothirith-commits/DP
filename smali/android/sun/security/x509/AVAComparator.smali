.class public final Landroid/sun/security/x509/AVAComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final INSTANCE:Landroid/sun/security/x509/AVAComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/sun/security/x509/AVAComparator;

    invoke-direct {v0}, Landroid/sun/security/x509/AVAComparator;-><init>()V

    sput-object v0, Landroid/sun/security/x509/AVAComparator;->INSTANCE:Landroid/sun/security/x509/AVAComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Landroid/sun/security/x509/AVA;

    check-cast p2, Landroid/sun/security/x509/AVA;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroid/sun/security/x509/AVAKeyword;->oidMap:Ljava/util/HashMap;

    iget-object v0, p1, Landroid/sun/security/x509/AVA;->oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sun/security/x509/AVAKeyword;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/sun/security/x509/AVAKeyword;->isCompliant(I)Z

    move-result v0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p2, Landroid/sun/security/x509/AVA;->oid:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/sun/security/x509/AVAKeyword;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/sun/security/x509/AVAKeyword;->isCompliant(I)Z

    move-result v2

    :goto_1
    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/sun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/sun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    const/4 p0, -0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x1

    :goto_2
    return p0
.end method
