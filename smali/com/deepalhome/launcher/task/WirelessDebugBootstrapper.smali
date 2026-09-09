.class public final Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final connectAdb:Lkotlin/jvm/functions/Function1;

.field public final disableWirelessDebugging:Lkotlin/jvm/functions/Function0;

.field public final enableWirelessDebugging:Lkotlin/jvm/functions/Function0;

.field public final halfEnabledResetDelayMs:J

.field public final hasSecureSettingsPermission:Lkotlin/jvm/functions/Function0;

.field public final isAdbConnected:Lkotlin/jvm/functions/Function0;

.field public final isWifiConnected:Lkotlin/jvm/functions/Function0;

.field public final isWirelessDebuggingEnabled:Lkotlin/jvm/functions/Function0;

.field public final nowMs:Lkotlin/jvm/functions/Function0;

.field public final pollIntervalMs:J

.field public final resolvePortCandidates:Lkotlin/jvm/functions/Function0;

.field public final scheduleAutoAllow:Lkotlin/jvm/functions/Function0;

.field public final sleep:Lkotlin/jvm/functions/Function1;

.field public final timeoutMs:J


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/task/MagiskActivationManager$performRuntimePrecheck$prepareResult$1;Landroidx/activity/OnBackPressedDispatcher$addCallback$1;Lcom/deepalhome/launcher/task/MagiskActivationManager$performRuntimePrecheck$prepareResult$3;Lcom/deepalhome/launcher/task/MagiskActivationManager$performRuntimePrecheck$prepareResult$4;Lcom/deepalhome/launcher/task/MagiskActivationManager$performRuntimePrecheck$prepareResult$5;Lcom/deepalhome/launcher/task/MagiskActivationManager$performRuntimePrecheck$prepareResult$6;Landroidx/activity/OnBackPressedDispatcher$addCallback$1;Lcom/deepalhome/launcher/task/MagiskActivationManager$performRuntimePrecheck$prepareResult$8;Lcom/deepalhome/launcher/task/MagiskActivationManager$performRuntimePrecheck$prepareResult$9;Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;)V
    .locals 2

    sget-object p8, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper$2;->INSTANCE:Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper$2;

    sget-object v0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper$3;->INSTANCE:Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper$3;

    const-string v1, "isWifiConnected"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "sleep"

    invoke-static {v1, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "nowMs"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper;->isWifiConnected:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper;->isAdbConnected:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper;->isWirelessDebuggingEnabled:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper;->hasSecureSettingsPermission:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper;->enableWirelessDebugging:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper;->disableWirelessDebugging:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper;->scheduleAutoAllow:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper;->resolvePortCandidates:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper;->connectAdb:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper;->sleep:Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper;->nowMs:Lkotlin/jvm/functions/Function0;

    const-wide/16 p1, 0x3a98

    iput-wide p1, p0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper;->timeoutMs:J

    const-wide/16 p1, 0x1f4

    iput-wide p1, p0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper;->pollIntervalMs:J

    const-wide/16 p1, 0xfa0

    iput-wide p1, p0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper;->halfEnabledResetDelayMs:J

    return-void
.end method


# virtual methods
.method public final enableWirelessDebuggingOrFailure()Lcom/deepalhome/launcher/task/WirelessDebugPrepareResult;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper;->hasSecureSettingsPermission:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p0, Lcom/deepalhome/launcher/task/WirelessDebugPrepareResult;

    sget-object v0, Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;->MissingSecureSettingsPermission:Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

    invoke-direct {p0, v1, v0}, Lcom/deepalhome/launcher/task/WirelessDebugPrepareResult;-><init>(ZLcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper;->enableWirelessDebugging:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Lcom/deepalhome/launcher/task/WirelessDebugPrepareResult;

    sget-object v0, Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;->EnableWirelessDebuggingFailed:Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

    invoke-direct {p0, v1, v0}, Lcom/deepalhome/launcher/task/WirelessDebugPrepareResult;-><init>(ZLcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;)V

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/task/WirelessDebugBootstrapper;->scheduleAutoAllow:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method
