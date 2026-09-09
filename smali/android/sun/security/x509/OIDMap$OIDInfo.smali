.class public final Landroid/sun/security/x509/OIDMap$OIDInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final className:Ljava/lang/String;

.field public volatile clazz:Ljava/lang/Class;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/sun/security/x509/OIDMap$OIDInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Landroid/sun/security/x509/OIDMap$OIDInfo;->className:Ljava/lang/String;

    return-void
.end method
