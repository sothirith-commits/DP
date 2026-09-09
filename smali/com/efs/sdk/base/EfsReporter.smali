.class public Lcom/efs/sdk/base/EfsReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/EfsReporter$Builder;
    }
.end annotation


# static fields
.field private static sControllerCenter:Lcom/efs/sdk/base/core/controller/ControllerCenter;


# direct methods
.method private constructor <init>(Lcom/efs/sdk/base/EfsReporter$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Lcom/efs/sdk/base/core/controller/ControllerCenter;

    invoke-direct {p0, p1}, Lcom/efs/sdk/base/core/controller/ControllerCenter;-><init>(Lcom/efs/sdk/base/EfsReporter$Builder;)V

    sput-object p0, Lcom/efs/sdk/base/EfsReporter;->sControllerCenter:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/efs/sdk/base/EfsReporter$Builder;Lcom/efs/sdk/base/EfsReporter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/efs/sdk/base/EfsReporter;-><init>(Lcom/efs/sdk/base/EfsReporter$Builder;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/efs/sdk/base/EfsReporter;)Lcom/efs/sdk/base/core/config/GlobalEnvStruct;
    .locals 0

    invoke-direct {p0}, Lcom/efs/sdk/base/EfsReporter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object p0

    return-object p0
.end method

.method private getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;
    .locals 0

    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addPublicParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/efs/sdk/base/EfsReporter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->addPublicParams(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public flushRecordLogImmediately(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/efs/sdk/base/core/b/a$b;->a()Lcom/efs/sdk/base/core/b/a;

    move-result-object p0

    iget-object p0, p0, Lcom/efs/sdk/base/core/b/a;->c:Lcom/efs/sdk/base/core/b/b;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/efs/sdk/base/core/b/b;->a(B)Lcom/efs/sdk/base/core/b/e;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/efs/sdk/base/core/b/e;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAllConfig()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/efs/sdk/base/core/config/a/c;->a()Lcom/efs/sdk/base/core/config/a/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/efs/sdk/base/core/config/a/c;->c()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getAllSdkConfig()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/efs/sdk/base/core/config/a/c;->a()Lcom/efs/sdk/base/core/config/a/c;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    iget-object p0, p0, Lcom/efs/sdk/base/core/config/a/b;->f:Ljava/util/Map;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getAllSdkConfig([Ljava/lang/String;Lcom/efs/sdk/base/observer/IConfigCallback;)V
    .locals 1

    invoke-static {}, Lcom/efs/sdk/base/core/config/a/c;->a()Lcom/efs/sdk/base/core/config/a/c;

    move-result-object p0

    iget-object v0, p0, Lcom/efs/sdk/base/core/config/a/c;->e:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/efs/sdk/base/core/config/a/c;->d:Lcom/efs/sdk/base/core/config/a/b;

    iget-object p1, p1, Lcom/efs/sdk/base/core/config/a/b;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/efs/sdk/base/core/config/a/c;->d()V

    :cond_0
    return-void
.end method

.method public refreshConfig(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/efs/sdk/base/core/config/a/c;->a()Lcom/efs/sdk/base/core/config/a/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/config/a/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public registerCallback(ILandroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/webkit/ValueCallback<",
            "Landroid/util/Pair<",
            "Landroid/os/Message;",
            "Landroid/os/Message;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/efs/sdk/base/EfsReporter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->registerCallback(ILandroid/webkit/ValueCallback;)V

    return-void
.end method

.method public send(Lcom/efs/sdk/base/protocol/ILogProtocol;)V
    .locals 0

    sget-object p0, Lcom/efs/sdk/base/EfsReporter;->sControllerCenter:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->send(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    return-void
.end method

.method public sendSyncImediatelly(Ljava/lang/String;ILjava/lang/String;Ljava/io/File;)Lcom/efs/sdk/base/http/HttpResponse;
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/efs/sdk/base/EfsReporter;->sendSyncImediatelly(Ljava/lang/String;ILjava/lang/String;ZLjava/io/File;)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public sendSyncImediatelly(Ljava/lang/String;ILjava/lang/String;ZLjava/io/File;)Lcom/efs/sdk/base/http/HttpResponse;
    .locals 6

    sget-object v0, Lcom/efs/sdk/base/EfsReporter;->sControllerCenter:Lcom/efs/sdk/base/core/controller/ControllerCenter;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->sendSyncImmediately(Ljava/lang/String;ILjava/lang/String;ZLjava/io/File;)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object p0

    return-object p0
.end method

.method public setEnableRefreshConfigFromRemote(Z)V
    .locals 0

    invoke-static {}, Lcom/efs/sdk/base/core/config/a/c;->a()Lcom/efs/sdk/base/core/config/a/c;

    move-result-object p0

    iput-boolean p1, p0, Lcom/efs/sdk/base/core/config/a/c;->c:Z

    return-void
.end method
