.class final Lcom/efs/sdk/net/NetConfigManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/observer/IConfigCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/net/NetConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/efs/sdk/net/NetConfigManager;


# direct methods
.method public constructor <init>(Lcom/efs/sdk/net/NetConfigManager;)V
    .locals 0

    iput-object p1, p0, Lcom/efs/sdk/net/NetConfigManager$1;->a:Lcom/efs/sdk/net/NetConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "apm_netperf_sampling_rate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/efs/sdk/net/NetConfigManager$1;->a:Lcom/efs/sdk/net/NetConfigManager;

    invoke-static {v0}, Lcom/efs/sdk/net/NetConfigManager;->a(Lcom/efs/sdk/net/NetConfigManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "net_launch"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/efs/sdk/net/NetConfigManager$1$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/efs/sdk/net/NetConfigManager$1$1;-><init>(Lcom/efs/sdk/net/NetConfigManager$1;Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
