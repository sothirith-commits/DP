.class public interface abstract Lokhttp3/Dns;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SYSTEM:Lokhttp3/Dns$Companion$DnsSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lokhttp3/Dns$Companion;->$r8$clinit:I

    new-instance v0, Lokhttp3/Dns$Companion$DnsSystem;

    invoke-direct {v0}, Lokhttp3/Dns$Companion$DnsSystem;-><init>()V

    sput-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns$Companion$DnsSystem;

    return-void
.end method
