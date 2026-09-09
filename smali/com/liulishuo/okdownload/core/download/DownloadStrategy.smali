.class public final Lcom/liulishuo/okdownload/core/download/DownloadStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TMP_FILE_NAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public isHasAccessNetworkStatePermission:Ljava/lang/Boolean;

.field public manager:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".*\\\\|/([^\\\\|/|?]*)\\??"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->TMP_FILE_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->isHasAccessNetworkStatePermission:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->manager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public static getPreconditionFailedCause(IZLcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Ljava/lang/String;)Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;
    .locals 1

    iget-object p2, p2, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->etag:Ljava/lang/String;

    const/16 v0, 0x19c

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_PRECONDITION_FAILED:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object p0

    :cond_0
    invoke-static {p2}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_ETAG_CHANGED:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object p0

    :cond_1
    const/16 p2, 0xc9

    if-ne p0, p2, :cond_2

    if-eqz p1, :cond_2

    sget-object p0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_CREATED_RANGE_NOT_FROM_0:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object p0

    :cond_2
    const/16 p2, 0xcd

    if-ne p0, p2, :cond_3

    if-eqz p1, :cond_3

    sget-object p0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->RESPONSE_RESET_RANGE_NOT_FROM_0:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final inspectNetworkAvailable()V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->isHasAccessNetworkStatePermission:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    sget-object v0, Lcom/liulishuo/okdownload/core/Util;->logger:Lcom/liulishuo/okdownload/core/Util$EmptyLogger;

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    iget-object v0, v0, Lcom/liulishuo/okdownload/OkDownload;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->isHasAccessNetworkStatePermission:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->isHasAccessNetworkStatePermission:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->manager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    iget-object v0, v0, Lcom/liulishuo/okdownload/OkDownload;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->manager:Landroid/net/ConnectivityManager;

    :cond_3
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->manager:Landroid/net/ConnectivityManager;

    if-nez p0, :cond_4

    const-string p0, "Util"

    const-string v0, "failed to get connectivity manager!"

    invoke-static {p0, v0}, Lcom/liulishuo/okdownload/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/liulishuo/okdownload/core/Util;->logger:Lcom/liulishuo/okdownload/core/Util$EmptyLogger;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_5

    :goto_1
    return-void

    :cond_5
    new-instance p0, Ljava/net/UnknownHostException;

    const-string v0, "network is not available!"

    invoke-direct {p0, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final inspectNetworkOnWifi(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->isHasAccessNetworkStatePermission:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/liulishuo/okdownload/core/Util;->logger:Lcom/liulishuo/okdownload/core/Util$EmptyLogger;

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    iget-object v0, v0, Lcom/liulishuo/okdownload/OkDownload;->context:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->isHasAccessNetworkStatePermission:Ljava/lang/Boolean;

    :cond_1
    iget-boolean p1, p1, Lcom/liulishuo/okdownload/DownloadTask;->wifiRequired:Z

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->isHasAccessNetworkStatePermission:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->manager:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_3

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p1

    iget-object p1, p1, Lcom/liulishuo/okdownload/OkDownload;->context:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->manager:Landroid/net/ConnectivityManager;

    :cond_3
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->manager:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_4

    sget-object p1, Lcom/liulishuo/okdownload/core/Util;->logger:Lcom/liulishuo/okdownload/core/Util$EmptyLogger;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne p0, v1, :cond_5

    return-void

    :cond_4
    const-string p0, "Util"

    const-string p1, "failed to get connectivity manager!"

    invoke-static {p0, p1}, Lcom/liulishuo/okdownload/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance p0, Lcom/liulishuo/okdownload/core/exception/NetworkPolicyException;

    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/exception/NetworkPolicyException;-><init>()V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "required for access network state but don\'t have the permission of Manifest.permission.ACCESS_NETWORK_STATE, please declare this permission first on your AndroidManifest, so we can handle the case of downloading required wifi state."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
