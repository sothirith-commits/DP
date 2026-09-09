.class public Lcom/incall/serversdk/logcat/CrashHandlerProxy;
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
.field private static TAG:Ljava/lang/String; = "CrashHandlerProxy"

.field private static crashHandlerManager:Lcom/incall/serversdk/logcat/CrashHandlerProxy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCrashHandler:Lcom/incall/serversdk/logcat/CrashHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/incall/serversdk/base/BaseProxy;-><init>()V

    iput-object p1, p0, Lcom/incall/serversdk/logcat/CrashHandlerProxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/incall/serversdk/logcat/CrashHandlerProxy;
    .locals 1

    const-class v0, Lcom/incall/serversdk/logcat/CrashHandlerProxy;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/incall/serversdk/logcat/CrashHandlerProxy;->crashHandlerManager:Lcom/incall/serversdk/logcat/CrashHandlerProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/incall/serversdk/logcat/CrashHandlerProxy;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/logcat/CrashHandlerProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/incall/serversdk/logcat/CrashHandlerProxy;->crashHandlerManager:Lcom/incall/serversdk/logcat/CrashHandlerProxy;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-class p0, Lcom/incall/serversdk/logcat/CrashHandlerProxy;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/incall/serversdk/logcat/CrashHandlerProxy;->crashHandlerManager:Lcom/incall/serversdk/logcat/CrashHandlerProxy;

    return-object p0

    :goto_1
    :try_start_1
    const-class v0, Lcom/incall/serversdk/logcat/CrashHandlerProxy;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public getServerName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.incall.CRASH_LOG_SERVICE"

    return-object p0
.end method

.method public initCrashHandler()V
    .locals 2

    sget-object v0, Lcom/incall/serversdk/logcat/CrashHandlerProxy;->TAG:Ljava/lang/String;

    const-string v1, "initCrashHandler: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/incall/serversdk/logcat/CrashHandler;->getInstance()Lcom/incall/serversdk/logcat/CrashHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/logcat/CrashHandlerProxy;->mCrashHandler:Lcom/incall/serversdk/logcat/CrashHandler;

    iget-object v1, p0, Lcom/incall/serversdk/logcat/CrashHandlerProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/incall/serversdk/logcat/CrashHandler;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/incall/serversdk/logcat/CrashHandlerProxy;->mCrashHandler:Lcom/incall/serversdk/logcat/CrashHandler;

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;

    invoke-virtual {v0, p0}, Lcom/incall/serversdk/logcat/CrashHandler;->initInterface(Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;)V

    return-void
.end method
