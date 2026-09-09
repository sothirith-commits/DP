.class public final Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper$virtualReadyListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/openos/virtualcar/VirtualServiceReadyListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serviceReadyFailed()V
    .locals 2

    const-string p0, "virtual car service ready failed"

    const-string v0, "S05CarControlHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    const-string v1, "[S05-CTRL] virtual car service ready failed"

    invoke-static {p0, v0, v1}, Lcom/deepalhome/launcher/util/DebugLogger;->e$default(Lcom/deepalhome/launcher/util/DebugLogger;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final serviceReadySuccess()V
    .locals 1

    sget-object p0, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->INSTANCE:Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->bindVirtualPropertyManager()V

    const-string p0, "S05CarControlHelper"

    const-string v0, "virtual car service ready success"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "[S05-CTRL] virtual car service ready success"

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
