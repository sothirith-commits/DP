.class public Lcom/incall/serversdk/autocheck/AutoCheckManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TERMINAL_CONFIG:Ljava/lang/String; = "{HU:0, THU:1, RMU:0, TBOX:0}"

.field private static mAutoCheckManager:Lcom/incall/serversdk/autocheck/AutoCheckManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/incall/serversdk/autocheck/AutoCheckManager;
    .locals 2

    const-class v0, Lcom/incall/serversdk/autocheck/AutoCheckManager;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/incall/serversdk/autocheck/AutoCheckManager;->mAutoCheckManager:Lcom/incall/serversdk/autocheck/AutoCheckManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/incall/serversdk/autocheck/AutoCheckManager;

    invoke-direct {v0}, Lcom/incall/serversdk/autocheck/AutoCheckManager;-><init>()V

    sput-object v0, Lcom/incall/serversdk/autocheck/AutoCheckManager;->mAutoCheckManager:Lcom/incall/serversdk/autocheck/AutoCheckManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/incall/serversdk/autocheck/AutoCheckManager;->mAutoCheckManager:Lcom/incall/serversdk/autocheck/AutoCheckManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lcom/incall/serversdk/autocheck/AutoCheckManager;

    monitor-exit v1

    return-object v0

    :goto_1
    const-class v1, Lcom/incall/serversdk/autocheck/AutoCheckManager;

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public checkNetTBOX(Lcom/incall/serversdk/autocheck/NetworkCallable;)V
    .locals 1

    new-instance v0, Lcom/incall/serversdk/autocheck/AutoCheckManager$1;

    invoke-direct {v0, p0, p1}, Lcom/incall/serversdk/autocheck/AutoCheckManager$1;-><init>(Lcom/incall/serversdk/autocheck/AutoCheckManager;Lcom/incall/serversdk/autocheck/NetworkCallable;)V

    invoke-static {}, Lcom/incall/serversdk/tbox/TboxManagerProxy;->getInstance()Lcom/incall/serversdk/tbox/TboxManagerProxy;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/incall/serversdk/tbox/TboxManagerProxy;->queryTboxPropertyInfo(ILcom/incall/serversdk/tbox/IResultInterface;)V

    return-void
.end method

.method public checkNetworkHU(Landroid/content/Context;Lcom/incall/serversdk/autocheck/NetworkCallable;)V
    .locals 4

    const-string p0, "connectivity"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    const-string p1, "AutoManager"

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkNetworkHU: networkCapabilities = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    move v1, v0

    :cond_1
    const-string p0, "checkNetworkHU: networkStatus = "

    invoke-static {v1, p0, p1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-ne v1, v0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-string p0, "No WiFi or 4G network available, network unreachable"

    :goto_1
    invoke-interface {p2, v1, p0}, Lcom/incall/serversdk/autocheck/NetworkCallable;->networkStatus(ILjava/lang/String;)V

    return-void
.end method

.method public getTerminalConfig()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/incall/serversdk/autocheck/AutoCheckManager;->TERMINAL_CONFIG:Ljava/lang/String;

    return-object p0
.end method

.method public isNeedCheckTHU()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
