.class public interface abstract Lokhttp3/Authenticator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NONE:Lokhttp3/Authenticator$Companion$AuthenticatorNone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lokhttp3/Authenticator$Companion;->$r8$clinit:I

    new-instance v0, Lokhttp3/Authenticator$Companion$AuthenticatorNone;

    invoke-direct {v0}, Lokhttp3/Authenticator$Companion$AuthenticatorNone;-><init>()V

    sput-object v0, Lokhttp3/Authenticator;->NONE:Lokhttp3/Authenticator$Companion$AuthenticatorNone;

    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns$Companion$DnsSystem;

    const-string v1, "defaultDns"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
.end method
