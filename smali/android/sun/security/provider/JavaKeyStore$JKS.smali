.class public final Landroid/sun/security/provider/JavaKeyStore$JKS;
.super Landroid/sun/security/provider/JavaKeyStore;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/sun/security/provider/JavaKeyStore;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
