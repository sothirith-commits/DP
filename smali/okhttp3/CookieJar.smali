.class public interface abstract Lokhttp3/CookieJar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_COOKIES:Lokhttp3/CookieJar$Companion$NoCookies;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lokhttp3/CookieJar$Companion;->$r8$clinit:I

    new-instance v0, Lokhttp3/CookieJar$Companion$NoCookies;

    invoke-direct {v0}, Lokhttp3/CookieJar$Companion$NoCookies;-><init>()V

    sput-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar$Companion$NoCookies;

    return-void
.end method
