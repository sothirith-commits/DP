.class public Lcom/incall/serversdk/logcat/LogReportProxy;
.super Lcom/incall/serversdk/base/BaseProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/incall/serversdk/base/BaseProxy<",
        "Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;",
        ">;"
    }
.end annotation


# static fields
.field private static mLogReportProxy:Lcom/incall/serversdk/logcat/LogReportProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/incall/serversdk/base/BaseProxy;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/incall/serversdk/logcat/LogReportProxy;
    .locals 2

    const-class v0, Lcom/incall/serversdk/logcat/LogReportProxy;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/incall/serversdk/logcat/LogReportProxy;->mLogReportProxy:Lcom/incall/serversdk/logcat/LogReportProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/incall/serversdk/logcat/LogReportProxy;

    invoke-direct {v0}, Lcom/incall/serversdk/logcat/LogReportProxy;-><init>()V

    sput-object v0, Lcom/incall/serversdk/logcat/LogReportProxy;->mLogReportProxy:Lcom/incall/serversdk/logcat/LogReportProxy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-class v0, Lcom/incall/serversdk/logcat/LogReportProxy;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/incall/serversdk/logcat/LogReportProxy;->mLogReportProxy:Lcom/incall/serversdk/logcat/LogReportProxy;

    return-object v0

    :goto_1
    :try_start_1
    const-class v1, Lcom/incall/serversdk/logcat/LogReportProxy;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public exportLogFile(Lcom/incall/serversdk/logcat/ExportLogFileListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast v0, Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;

    new-instance v1, Lcom/incall/serversdk/logcat/LogReportProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/incall/serversdk/logcat/LogReportProxy$1;-><init>(Lcom/incall/serversdk/logcat/LogReportProxy;Lcom/incall/serversdk/logcat/ExportLogFileListener;)V

    invoke-interface {v0, v1}, Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;->exportLogFiles(Lcom/incall/serversdk/logcat/IExportLogListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getServerName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.incall.CRASH_LOG_SERVICE"

    return-object p0
.end method

.method public reportLogFiles(JJLcom/incall/serversdk/logcat/ILogReportCallback;)V
    .locals 6

    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;->reportLogFiles(JJLcom/incall/serversdk/logcat/ILogReportCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
