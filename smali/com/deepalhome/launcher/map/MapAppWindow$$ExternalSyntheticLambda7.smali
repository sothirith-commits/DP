.class public final synthetic Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/deepalhome/launcher/map/MapAppWindow;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLcom/deepalhome/launcher/map/MapAppWindow;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda7;->f$0:Z

    iput-object p2, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda7;->f$1:Lcom/deepalhome/launcher/map/MapAppWindow;

    iput-boolean p3, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda7;->f$2:Z

    iput-object p4, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    sget v0, Lcom/deepalhome/launcher/map/MapAppWindow;->$r8$clinit:I

    const-string v0, "Allowed SYSTEM_ALERT_WINDOW for "

    const-string v1, "Granted ACCESS_BACKGROUND_LOCATION to "

    const-string v2, "this$0"

    iget-object v3, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda7;->f$1:Lcom/deepalhome/launcher/map/MapAppWindow;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    const-string v3, "$packageName"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v3, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda7;->f$0:Z

    const-string v10, "MapAppWindow"

    if-eqz v3, :cond_0

    :try_start_0
    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "pm"

    const-string v5, "grant"

    const-string v6, "android.permission.ACCESS_BACKGROUND_LOCATION"

    filled-new-array {v4, v5, v2, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "Failed to grant ACCESS_BACKGROUND_LOCATION to "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-boolean p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda7;->f$2:Z

    if-eqz p0, :cond_1

    :try_start_1
    sget p0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string v4, "cmd"

    const-string v5, "appops"

    const-string v6, "set"

    const-string v8, "SYSTEM_ALERT_WINDOW"

    const-string v9, "allow"

    move-object v7, v2

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "Failed to allow SYSTEM_ALERT_WINDOW for "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Permission authorization completed"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
