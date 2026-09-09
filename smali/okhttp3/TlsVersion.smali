.class public final enum Lokhttp3/TlsVersion;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lokhttp3/TlsVersion;

.field public static final Companion:Lokhttp3/TlsVersion$Companion;

.field public static final enum SSL_3_0:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_0:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_1:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_2:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_3:Lokhttp3/TlsVersion;


# instance fields
.field private final javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lokhttp3/TlsVersion;

    const-string v1, "TLSv1.3"

    const-string v2, "TLS_1_3"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lokhttp3/TlsVersion;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;

    new-instance v1, Lokhttp3/TlsVersion;

    const-string v2, "TLSv1.2"

    const-string v4, "TLS_1_2"

    const/4 v5, 0x1

    invoke-direct {v1, v5, v4, v2}, Lokhttp3/TlsVersion;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    new-instance v2, Lokhttp3/TlsVersion;

    const-string v4, "TLSv1.1"

    const-string v5, "TLS_1_1"

    const/4 v6, 0x2

    invoke-direct {v2, v6, v5, v4}, Lokhttp3/TlsVersion;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    new-instance v4, Lokhttp3/TlsVersion;

    const-string v5, "TLSv1"

    const-string v6, "TLS_1_0"

    const/4 v7, 0x3

    invoke-direct {v4, v7, v6, v5}, Lokhttp3/TlsVersion;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    new-instance v5, Lokhttp3/TlsVersion;

    const-string v6, "SSLv3"

    const-string v7, "SSL_3_0"

    const/4 v8, 0x4

    invoke-direct {v5, v8, v7, v6}, Lokhttp3/TlsVersion;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    filled-new-array {v0, v1, v2, v4, v5}, [Lokhttp3/TlsVersion;

    move-result-object v0

    sput-object v0, Lokhttp3/TlsVersion;->$VALUES:[Lokhttp3/TlsVersion;

    new-instance v0, Lokhttp3/TlsVersion$Companion;

    invoke-direct {v0, v3}, Lokhttp3/TlsVersion$Companion;-><init>(I)V

    sput-object v0, Lokhttp3/TlsVersion;->Companion:Lokhttp3/TlsVersion$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lokhttp3/TlsVersion;->javaName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/TlsVersion;
    .locals 1

    const-class v0, Lokhttp3/TlsVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lokhttp3/TlsVersion;

    return-object p0
.end method

.method public static values()[Lokhttp3/TlsVersion;
    .locals 1

    sget-object v0, Lokhttp3/TlsVersion;->$VALUES:[Lokhttp3/TlsVersion;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/TlsVersion;

    return-object v0
.end method


# virtual methods
.method public final javaName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokhttp3/TlsVersion;->javaName:Ljava/lang/String;

    return-object p0
.end method
