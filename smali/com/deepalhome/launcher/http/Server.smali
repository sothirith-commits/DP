.class public final Lcom/deepalhome/launcher/http/Server;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/http/Server;

.field public static final api:Lcom/deepalhome/launcher/http/Api;

.field public static final dailyApi:Lcom/deepalhome/launcher/http/DailyWallpaperApi;

.field public static final openListProxyApi:Lcom/deepalhome/launcher/http/OpenListProxyApi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/http/Server;

    invoke-direct {v0}, Lcom/deepalhome/launcher/http/Server;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/http/Server;->INSTANCE:Lcom/deepalhome/launcher/http/Server;

    sget-object v0, Lcom/deepalhome/launcher/http/ServerUtil;->INSTANCE:Lcom/deepalhome/launcher/http/ServerUtil;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "http://wallpaper.apc.360.cn/"

    const-class v2, Lcom/deepalhome/launcher/http/Api;

    invoke-static {v0, v2, v1}, Lcom/deepalhome/launcher/http/ServerUtil;->init(Ljava/lang/String;Ljava/lang/Class;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/http/Api;

    sput-object v0, Lcom/deepalhome/launcher/http/Server;->api:Lcom/deepalhome/launcher/http/Api;

    sget-object v0, Lcom/deepalhome/launcher/http/OpenListProxy;->INSTANCE:Lcom/deepalhome/launcher/http/OpenListProxy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/http/OpenListProxy;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/http/OpenListProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lokhttp3/Interceptor;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const-class v2, Lcom/deepalhome/launcher/http/OpenListProxyApi;

    invoke-static {v0, v2, v1}, Lcom/deepalhome/launcher/http/ServerUtil;->init(Ljava/lang/String;Ljava/lang/Class;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/http/OpenListProxyApi;

    sput-object v0, Lcom/deepalhome/launcher/http/Server;->openListProxyApi:Lcom/deepalhome/launcher/http/OpenListProxyApi;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "https://cnb.cool/"

    const-class v2, Lcom/deepalhome/launcher/http/DailyWallpaperApi;

    invoke-static {v1, v2, v0}, Lcom/deepalhome/launcher/http/ServerUtil;->init(Ljava/lang/String;Ljava/lang/Class;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/http/DailyWallpaperApi;

    sput-object v0, Lcom/deepalhome/launcher/http/Server;->dailyApi:Lcom/deepalhome/launcher/http/DailyWallpaperApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
