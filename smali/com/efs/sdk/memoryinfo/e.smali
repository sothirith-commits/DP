.class Lcom/efs/sdk/memoryinfo/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/efs/sdk/base/protocol/record/EfsJSONLog;",
            ">;"
        }
    .end annotation
.end field

.field volatile C:Z

.field private final a:Lcom/efs/sdk/base/EfsReporter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/efs/sdk/base/EfsReporter;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/memoryinfo/e;->B:Ljava/util/List;

    iput-object p2, p0, Lcom/efs/sdk/memoryinfo/e;->a:Lcom/efs/sdk/base/EfsReporter;

    sget-object v0, Lcom/umeng/commonsdk/utils/UMUtils;->KEY_SHARED_PREFERENCES_NAME:Ljava/lang/String;

    const-string v0, "umid"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->imprintProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {p1, v2}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/efs/sdk/memoryinfo/e;->C:Z

    iget-boolean v2, p0, Lcom/efs/sdk/memoryinfo/e;->C:Z

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    move-result-object p2

    new-instance v1, Lcom/efs/sdk/memoryinfo/e$1;

    invoke-direct {v1, p0, p1}, Lcom/efs/sdk/memoryinfo/e$1;-><init>(Lcom/efs/sdk/memoryinfo/e;Landroid/content/Context;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    return-void

    :cond_1
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string p1, "um_umid_header"

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p0}, Lcom/efs/sdk/base/EfsReporter;->addPublicParams(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lcom/efs/sdk/memoryinfo/e;)Lcom/efs/sdk/base/EfsReporter;
    .locals 0

    iget-object p0, p0, Lcom/efs/sdk/memoryinfo/e;->a:Lcom/efs/sdk/base/EfsReporter;

    return-object p0
.end method

.method public static synthetic a(Lcom/efs/sdk/memoryinfo/e;Lcom/efs/sdk/base/protocol/record/EfsJSONLog;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/efs/sdk/memoryinfo/e;->a(Lcom/efs/sdk/base/protocol/record/EfsJSONLog;)V

    return-void
.end method

.method public static synthetic b(Lcom/efs/sdk/memoryinfo/e;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/efs/sdk/memoryinfo/e;->C:Z

    return v0
.end method

.method public static synthetic c(Lcom/efs/sdk/memoryinfo/e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/efs/sdk/memoryinfo/e;->B:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/protocol/record/EfsJSONLog;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/efs/sdk/memoryinfo/e;->a:Lcom/efs/sdk/base/EfsReporter;

    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/EfsReporter;->send(Lcom/efs/sdk/base/protocol/ILogProtocol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "send"

    invoke-static {p1, p0}, Lcom/efs/sdk/memoryinfo/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
