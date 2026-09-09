.class final Lcom/efs/sdk/base/core/controller/ControllerCenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/efs/sdk/base/core/controller/ControllerCenter;->b(Lcom/efs/sdk/base/protocol/ILogProtocol;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/efs/sdk/base/protocol/ILogProtocol;

.field final synthetic b:Lcom/efs/sdk/base/core/controller/ControllerCenter;


# direct methods
.method public constructor <init>(Lcom/efs/sdk/base/core/controller/ControllerCenter;Lcom/efs/sdk/base/protocol/ILogProtocol;)V
    .locals 0

    iput-object p1, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;->b:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    iput-object p2, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    invoke-static {}, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->getInstance()Lcom/efs/sdk/base/core/config/GlobalInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/efs/sdk/base/core/config/GlobalInfoManager;->getGlobalInfo()Lcom/efs/sdk/base/core/config/GlobalInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/efs/sdk/base/protocol/ILogProtocol;->insertGlobal(Lcom/efs/sdk/base/core/config/GlobalInfo;)V

    const-string v0, "wa"

    iget-object v1, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    invoke-interface {v1}, Lcom/efs/sdk/base/protocol/ILogProtocol;->getLogType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    invoke-static {v0}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->isEnableSendLog()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/efs/sdk/base/core/controller/ControllerCenter$1;->a:Lcom/efs/sdk/base/protocol/ILogProtocol;

    invoke-static {p0}, Lcom/efs/sdk/base/core/d/b;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)Lcom/efs/sdk/base/core/d/b;

    move-result-object p0

    invoke-static {}, Lcom/efs/sdk/base/core/e/d$a;->a()Lcom/efs/sdk/base/core/e/d;

    move-result-object v0

    new-instance v1, Lcom/efs/sdk/base/core/e/d$1;

    invoke-direct {v1, v0, p0}, Lcom/efs/sdk/base/core/e/d$1;-><init>(Lcom/efs/sdk/base/core/e/d;Lcom/efs/sdk/base/core/d/b;)V

    invoke-static {v1}, Lcom/efs/sdk/base/core/util/concurrent/WorkThreadUtil;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const-string v0, "efs.base"

    const-string v1, "log send error"

    invoke-static {v0, v1, p0}, Lcom/efs/sdk/base/core/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
