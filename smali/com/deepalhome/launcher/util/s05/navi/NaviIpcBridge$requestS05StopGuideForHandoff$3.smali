.class public final Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05StopGuideForHandoff$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05StopGuideForHandoff$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05StopGuideForHandoff$3;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05StopGuideForHandoff$3;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05StopGuideForHandoff$3;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05StopGuideForHandoff$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget-object p0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->handoffStopRequested:Z

    sput-boolean v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->ignoreNextSystemNaviStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
