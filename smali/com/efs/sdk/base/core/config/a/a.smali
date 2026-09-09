.class public final Lcom/efs/sdk/base/core/config/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/IConfigRefreshAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/base/core/config/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/efs/sdk/base/core/config/a/a;
    .locals 1

    invoke-static {}, Lcom/efs/sdk/base/core/config/a/a$a;->a()Lcom/efs/sdk/base/core/config/a/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final refresh()Ljava/lang/String;
    .locals 9

    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object p0

    iget-object p0, p0, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->mAppContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/efs/sdk/base/core/util/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "efs.config"

    const-string v1, ""

    if-nez p0, :cond_0

    const-string p0, "Config refresh fail, network is disconnected."

    invoke-static {v0, p0}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/efs/sdk/base/core/config/a/c;->a()Lcom/efs/sdk/base/core/config/a/c;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/efs/sdk/base/core/config/a/c;->a(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/efs/sdk/base/core/a/c;->a()Lcom/efs/sdk/base/core/a/c;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_5

    invoke-static {}, Lcom/efs/sdk/base/core/a/a;->a()Lcom/efs/sdk/base/core/a/a;

    move-result-object v5

    invoke-virtual {v3}, Lcom/efs/sdk/base/core/a/c;->b()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/apm_cc"

    invoke-static {p0, v7}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v5, v5, Lcom/efs/sdk/base/core/a/a;->a:Z

    if-eqz v5, :cond_1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "get config from server, url is "

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "efs.px.api"

    invoke-static {v8, v5}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v8, "wpk-header"

    invoke-virtual {v5, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/efs/sdk/base/core/util/a/d;

    invoke-direct {v6, v7}, Lcom/efs/sdk/base/core/util/a/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/efs/sdk/base/core/util/a/d;->a(Ljava/util/Map;)Lcom/efs/sdk/base/core/util/a/d;

    move-result-object v5

    invoke-static {}, Lcom/efs/sdk/base/core/a/b;->a()Lcom/efs/sdk/base/core/a/b;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/efs/sdk/base/core/util/a/d;->a(Lcom/efs/sdk/base/http/AbsHttpListener;)Lcom/efs/sdk/base/core/util/a/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/efs/sdk/base/core/util/a/d;->a()Lcom/efs/sdk/base/core/util/a/c;

    move-result-object v5

    iget-object v6, v5, Lcom/efs/sdk/base/core/util/a/c;->a:Lcom/efs/sdk/base/core/util/a/b;

    const-string v7, "get"

    iput-object v7, v6, Lcom/efs/sdk/base/core/util/a/b;->e:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/efs/sdk/base/core/util/concurrent/d;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/efs/sdk/base/http/HttpResponse;

    iget-boolean v6, v5, Lcom/efs/sdk/base/core/d/d;->succ:Z

    if-eqz v6, :cond_2

    iget-object v1, v5, Lcom/efs/sdk/base/core/d/d;->data:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Lcom/efs/sdk/base/http/HttpResponse;->getBizCode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "1000"

    invoke-virtual {v5}, Lcom/efs/sdk/base/http/HttpResponse;->getBizCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1

    :cond_5
    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "config request succ, config is:\n "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
