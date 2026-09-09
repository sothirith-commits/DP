.class public final Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

.field public static volatile activeGuidePoiSignature:Ljava/lang/String;

.field public static volatile appContext:Landroid/content/Context;

.field public static volatile bound:Z

.field public static final forecastObserver:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$forecastObserver$1;

.field public static final guideInfoObserver:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$guideInfoObserver$1;

.field public static volatile handoffStopRequested:Z

.field public static volatile ignoreNextSystemNaviStop:Z

.field public static volatile ipcSkillDispatcher:Lm8/IPCSkillDispatcher;

.field public static volatile lastNaviProgressPercent:F

.field public static volatile lastPoiDispatchAt:J

.field public static volatile lastPoiSignature:Ljava/lang/String;

.field public static volatile lastRouteQueryAt:J

.field public static volatile lastRouteQueryKey:Ljava/lang/String;

.field public static final mainPathChangeObserver:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$mainPathChangeObserver$1;

.field public static volatile pendingSystemStartedPoiSignature:Ljava/lang/String;

.field public static final pushMessageObserver:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$pushMessageObserver$1;

.field public static final serviceConnection:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$serviceConnection$1;

.field public static volatile started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    const-string v0, ""

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->lastPoiSignature:Ljava/lang/String;

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->lastRouteQueryKey:Ljava/lang/String;

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->pendingSystemStartedPoiSignature:Ljava/lang/String;

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->activeGuidePoiSignature:Ljava/lang/String;

    const/high16 v0, 0x7fc00000    # Float.NaN

    sput v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->lastNaviProgressPercent:F

    new-instance v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$forecastObserver$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$forecastObserver$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->forecastObserver:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$forecastObserver$1;

    new-instance v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$pushMessageObserver$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$pushMessageObserver$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->pushMessageObserver:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$pushMessageObserver$1;

    new-instance v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$mainPathChangeObserver$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$mainPathChangeObserver$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->mainPathChangeObserver:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$mainPathChangeObserver$1;

    new-instance v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$guideInfoObserver$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$guideInfoObserver$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->guideInfoObserver:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$guideInfoObserver$1;

    new-instance v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$serviceConnection$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$serviceConnection$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->serviceConnection:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$serviceConnection$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$queryS05CurrentDestination(Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->isS05VoiceAutoNaviEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    sget-boolean v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->handoffStopRequested:Z

    if-eqz v0, :cond_1

    const-string p0, "Navigation handoff triggered, ignoring subsequent destination query trigger="

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1
    const-string v0, "GuideInfo.onNaviProgress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->activeGuidePoiSignature:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    if-eqz v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Current navigation takeover completed, ignoring periodic destination query trigger="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", pathId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    goto/16 :goto_8

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-static {p2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    move-object v1, p2

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_5

    :cond_4
    move-object v1, p1

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    monitor-enter p0

    :try_start_1
    sget-object v4, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->lastRouteQueryKey:Ljava/lang/String;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-wide v4, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->lastRouteQueryAt:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sub-long v4, v2, v4

    const-wide/16 v6, 0x5dc

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    monitor-exit p0

    goto/16 :goto_8

    :catchall_1
    move-exception p1

    goto/16 :goto_9

    :cond_6
    :try_start_2
    sput-object v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->lastRouteQueryKey:Ljava/lang/String;

    sput-wide v2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->lastRouteQueryAt:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    sget-object p0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->ipcSkillDispatcher:Lm8/IPCSkillDispatcher;

    if-nez p0, :cond_7

    const-string p0, "Query current route destination failed: IPCSkillDispatcher not ready trigger="

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_7
    const-string v1, "Get current route destination information"

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->buildS05QueryRequest(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    :try_start_3
    sget v2, Lkotlin/Result;->$r8$clinit:I

    check-cast p0, Lm8/IPCSkillDispatcher$Stub$Proxy;

    invoke-virtual {p0, v1}, Lm8/IPCSkillDispatcher$Stub$Proxy;->queryInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_1
    instance-of v1, p0, Lkotlin/Result$Failure;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_f

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    const-string v3, "Active query current route destination trigger="

    const-string v4, ", pathId="

    const-string v5, ", response="

    invoke-static {v3, p1, v4, p2, v5}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Payload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    if-eqz v1, :cond_b

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_6

    :cond_8
    :try_start_4
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "responseCode"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "data"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "toString(...)"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->parseS05BasicPoiJson(Ljava/lang/String;)Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;

    move-result-object p2

    goto :goto_2

    :catchall_3
    move-exception p2

    goto :goto_3

    :cond_9
    move-object p2, v0

    :goto_2
    new-instance v2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05QueryResult;

    invoke-direct {v2, v1, p2}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05QueryResult;-><init>(ILcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :goto_3
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v2

    :goto_4
    instance-of p2, v2, Lkotlin/Result$Failure;

    if-eqz p2, :cond_a

    goto :goto_5

    :cond_a
    move-object v0, v2

    :goto_5
    check-cast v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05QueryResult;

    :cond_b
    :goto_6
    if-nez v0, :cond_c

    sget-object p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    const-string p2, "Active query current route destination returned unparseable result"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    iget p2, v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05QueryResult;->responseCode:I

    if-eqz p2, :cond_d

    sget-object p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Active query current route destination failed responseCode="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05QueryResult;->responseCode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    iget-object p2, v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05QueryResult;->poi:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;

    if-nez p2, :cond_e

    sget-object p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    const-string p2, "Active query current route destination succeeded, but data is empty"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    sget-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    const-string v1, "SkillDispatcher/"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->handleS05PoiFromSystem(Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;Ljava/lang/String;)V

    :cond_f
    :goto_7
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_10

    sget-object p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Active query current route destination exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    :cond_10
    :goto_8
    return-void

    :goto_9
    monitor-exit p0

    throw p1
.end method

.method public static bindS05NaviSkillService(Landroid/content/Context;)V
    .locals 5

    sget-boolean v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->bound:Z

    if-eqz v0, :cond_0

    const-string p0, "bindS05NaviSkillService() skip: System navigation IPC already connected"

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tinnove.skill.service-new"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tinnove.wecarnavi"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    sget-object v2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->serviceConnection:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$serviceConnection$1;

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_0
    instance-of v0, p0, Lkotlin/Result$Failure;

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->bound:Z

    sget-object v2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Initiate system navigation IPC binding result="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    if-nez v0, :cond_1

    sput-boolean v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->started:Z

    :cond_1
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    sput-boolean v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->bound:Z

    sput-boolean v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->started:Z

    sget-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initiate system navigation IPC binding exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static buildHudEtaText(JJ)Lkotlin/Pair;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Distance(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Duration(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " | "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05ArrivalTime(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Arrive"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lkotlin/Pair;

    const-string p2, ""

    invoke-direct {p1, p0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static buildS05QueryRequest(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->appContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    const-string v2, "com.deepalhome.launcher"

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :cond_2
    :try_start_0
    sget v3, Lkotlin/Result;->$r8$clinit:I

    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_4
    :goto_1
    move-object v0, v2

    goto :goto_3

    :goto_2
    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_3
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-eqz v3, :cond_5

    move-object v0, v2

    :cond_5
    check-cast v0, Ljava/lang/String;

    const-string v3, "0.0.0"

    if-nez v1, :cond_6

    :goto_4
    move-object v1, v3

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_7

    goto :goto_4

    :catchall_1
    move-exception v1

    sget v4, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    :cond_7
    :goto_5
    instance-of v4, v1, Lkotlin/Result$Failure;

    if-eqz v4, :cond_8

    move-object v1, v3

    :cond_8
    check-cast v1, Ljava/lang/String;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "packageName"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appName"

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "appVersion"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sdkVersion"

    invoke-virtual {v5, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v0, "caller"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "command"

    invoke-virtual {v4, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez p1, :cond_9

    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_9
    const-string p0, "businessParam"

    invoke-virtual {v4, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static extractS05Coordinate(Lorg/json/JSONObject;)Lkotlin/Pair;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "mLongitude"

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-string v1, "mLatitude"

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static formatS05ArrivalTime(J)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long/2addr p0, v2

    add-long/2addr p0, v0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static formatS05Distance(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7c73

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    long-to-double p0, p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f km"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static formatS05Duration(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const-string p0, "Unknown"

    return-object p0

    :cond_0
    const-wide/16 v2, 0x3c

    cmp-long v4, p0, v2

    if-gez v4, :cond_1

    const-string p0, "Less than 1 minute"

    return-object p0

    :cond_1
    const/16 v4, 0x3c

    int-to-long v4, v4

    div-long/2addr p0, v4

    cmp-long v2, p0, v2

    if-gez v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " min"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    div-long v2, p0, v4

    rem-long/2addr p0, v4

    cmp-long v0, p0, v0

    const-string v1, " hr"

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x5206

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static formatS05Payload(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    const/16 v1, 0x20

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_1

    invoke-static {v1, p0}, Lkotlin/text/StringsKt___StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "...(truncated)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const-string p0, "null"

    return-object p0
.end method

.method public static isS05VoiceAutoNaviEnabled()Z
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getVoiceAutoNavi()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static logS05NaviIpc(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[S05-IPC] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "NaviIpcBridge"

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static parseS05BasicPoiJson(Ljava/lang/String;)Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "naviCoordinate"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "displayCoordinate"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->extractS05Coordinate(Lorg/json/JSONObject;)Lkotlin/Pair;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {v2}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->extractS05Coordinate(Lorg/json/JSONObject;)Lkotlin/Pair;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    :goto_0
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    goto :goto_3

    :cond_3
    move-object p0, v0

    :goto_3
    new-instance v3, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;

    invoke-direct {v3, v1, v2, p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v3

    :goto_5
    instance-of p0, v3, Lkotlin/Result$Failure;

    if-eqz p0, :cond_4

    goto :goto_6

    :cond_4
    move-object v0, v3

    :goto_6
    check-cast v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;

    return-object v0
.end method

.method public static parseS05PositionResponse(Ljava/lang/String;)Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "responseCode"

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    :goto_0
    move-object p0, v0

    goto :goto_1

    :cond_2
    const-string p0, "data"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "mLongitude"

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-string v1, "mLatitude"

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    invoke-direct {p0, v4, v5, v1, v2}, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;-><init>(DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_1
    instance-of v1, p0, Lkotlin/Result$Failure;

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, p0

    :goto_2
    check-cast v0, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    :cond_6
    :goto_3
    return-object v0
.end method

.method public static start(Landroid/app/Application;)V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Current vehicle is not S05, skip system navigation IPC startup"

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->appContext:Landroid/content/Context;

    sget-boolean v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->started:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sput-boolean v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->started:Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "start() called, started="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->started:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bound="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->bound:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", voiceAutoNavi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getVoiceAutoNavi()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", autoNaviMode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getS05VoiceAutoNaviMode()I

    move-result v2

    if-ne v2, v1, :cond_2

    const-string v1, "Takeover system navigation as soon as coordinates are obtained"

    goto :goto_0

    :cond_2
    const-string v1, "Wait for system navigation to start before takeover"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getApplicationContext(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->bindS05NaviSkillService(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final dispatchS05Poi(Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;Ljava/lang/String;)V
    .locals 12

    invoke-static {}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->isS05VoiceAutoNaviEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;->latitude:Ljava/lang/Double;

    if-eqz v0, :cond_7

    iget-object v1, p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;->longitude:Ljava/lang/Double;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iget-object v0, p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;->longitude:Ljava/lang/Double;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object p1, p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;->name:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v3, p1

    goto :goto_3

    :cond_3
    :goto_2
    const-string p1, "Destination"

    goto :goto_1

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->activeGuidePoiSignature:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    if-eqz p1, :cond_4

    const-string p0, "Current navigation has already processed the same destination, skip duplicate takeover source="

    const-string p1, ", name="

    const-string v0, ", lat="

    invoke-static {p0, p2, p1, v3, v0}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", lon="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    monitor-enter p0

    :try_start_1
    sget-object v2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->lastPoiSignature:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-wide v8, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->lastPoiDispatchAt:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v8, v0, v8

    const-wide/16 v10, 0x3e8

    cmp-long v2, v8, v10

    if-gez v2, :cond_5

    monitor-exit p0

    const-string p0, "Duplicate POI detected, skip this dispatch source="

    const-string p1, ", name="

    const-string v0, ", lat="

    invoke-static {p0, p2, p1, v3, v0}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", lon="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_5
    :try_start_2
    sput-object p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->activeGuidePoiSignature:Ljava/lang/String;

    sput-object p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->lastPoiSignature:Ljava/lang/String;

    sput-wide v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->lastPoiDispatchAt:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    const-string p0, "Received navigation IPC POI source="

    const-string p1, ", name="

    const-string v0, ", lat="

    invoke-static {p0, p2, p1, v3, v0}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", lon="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    new-instance p0, Lcom/deepalhome/launcher/util/AssistantUtil$$ExternalSyntheticLambda3;

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/deepalhome/launcher/util/AssistantUtil$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;DDI)V

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :goto_4
    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_6
    return-void

    :cond_7
    const-string p0, "Returned POI does not contain valid coordinates, ignoring name="

    invoke-static {p2, p0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    return-void
.end method

.method public final handleS05PoiFromSystem(Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x0

    const-string v1, "Navigation handoff already triggered, ignore duplicate destination source="

    invoke-static {}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->isS05VoiceAutoNaviEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getS05VoiceAutoNaviMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    if-nez v3, :cond_a

    const-string v0, "Detected destination change, update pending destination record source="

    const-string v1, "Current is wait-for-system-navigation mode, first destination is only recorded, waiting for second fix source="

    const-string v2, "BehaviorPrediction"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "Current is wait-for-system-navigation route selection mode, ignoring predicted destination first"

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    iget-object v2, p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;->latitude:Ljava/lang/Double;

    iget-object v3, p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;->longitude:Ljava/lang/Double;

    iget-object v5, p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;->name:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v4, v6

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_5

    :cond_4
    const-string v5, "Destination"

    :cond_5
    if-eqz v2, :cond_9

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x7c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-enter p0

    :try_start_0
    sget-object v3, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->pendingSystemStartedPoiSignature:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    sput-object v2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->pendingSystemStartedPoiSignature:Ljava/lang/String;

    sget-object p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_7
    :try_start_1
    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->pendingSystemStartedPoiSignature:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    sput-object v2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->pendingSystemStartedPoiSignature:Ljava/lang/String;

    sget-object p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_4

    :cond_8
    :try_start_2
    const-string v0, ""

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->pendingSystemStartedPoiSignature:Ljava/lang/String;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->dispatchS05Poi(Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;Ljava/lang/String;)V

    goto :goto_4

    :goto_2
    monitor-exit p0

    throw p1

    :cond_9
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Current is wait-for-system-navigation route selection mode, but this destination lacks coordinates, ignoring source="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_a
    monitor-enter p0

    :try_start_3
    sget-boolean v3, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->handoffStopRequested:Z

    if-eqz v3, :cond_b

    sget-object p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto/16 :goto_d

    :cond_b
    :try_start_4
    sput-boolean v4, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->handoffStopRequested:Z

    sput-boolean v4, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->ignoreNextSystemNaviStop:Z

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    sget-object v1, Lcom/deepalhome/launcher/hud/s05utils/S05HudWakeHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05utils/S05HudWakeHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v1

    const-string v3, "HudWakeHelper"

    if-nez v1, :cond_c

    sget-object v1, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    const-string v2, "skip: Current vehicle is not S05"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getS05VoiceAutoNaviMode()I

    move-result v1

    if-eq v1, v4, :cond_d

    sget-object v1, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "skip: Current is not interrupt mode mode="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getS05VoiceAutoNaviMode()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getCarS05SrShowOnHud()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getHudDvrEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    const-string v2, "skip: HUD video capability not enabled"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    invoke-static {}, Lcom/deepalhome/launcher/hud/s05utils/S05HudWakeHelper;->wakeHud()V

    :goto_5
    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->appContext:Landroid/content/Context;

    if-nez v1, :cond_f

    goto :goto_8

    :cond_f
    :try_start_5
    sget v2, Lkotlin/Result;->$r8$clinit:I

    sget-object v2, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->Companion:Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$Companion;

    invoke-virtual {v2, v1}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$Companion;->getInstance(Landroid/content/Context;)Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;

    move-result-object v1

    const-string v2, "Start navigation"

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_10

    goto :goto_6

    :cond_10
    iget-object v3, v1, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;->mainHandler:Landroid/os/Handler;

    new-instance v5, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1, v2, v0}, Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/util/s05/voice/SpeechTtsHelper;Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_6
    const-string v1, "Handoff prompt audio played text=Start navigation"

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v1

    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    :goto_7
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_11

    sget-object v2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Play handoff prompt audio failed: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    :cond_11
    :goto_8
    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->appContext:Landroid/content/Context;

    if-nez v1, :cond_12

    goto :goto_a

    :cond_12
    :try_start_6
    sget v2, Lkotlin/Result;->$r8$clinit:I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.tinnove.wecarspeech.Launch"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.tinnove.wecarspeech"

    const-string v5, "com.tinnove.wecarspeech.app.LaunchService"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extra_launch_type"

    const/16 v5, 0x8

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v1

    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    :goto_9
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_13

    sget-object v3, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Request speech service to exit AI interaction failed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    :cond_13
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v3, v1, Lkotlin/Result$Failure;

    if-eqz v3, :cond_14

    move-object v1, v2

    :cond_14
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "Requested to exit AI assistant interaction"

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    goto :goto_b

    :cond_15
    :goto_a
    const-string v1, "Exit AI assistant interaction failed, continue directly to navigation"

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    :goto_b
    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->dispatchS05Poi(Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;Ljava/lang/String;)V

    sget-object v6, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->ipcSkillDispatcher:Lm8/IPCSkillDispatcher;

    if-nez v6, :cond_16

    const-string p1, "Stop system navigation after handoff failed: IPCSkillDispatcher not ready"

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_7
    sput-boolean v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->handoffStopRequested:Z

    sput-boolean v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->ignoreNextSystemNaviStop:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    monitor-exit p0

    goto :goto_c

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_16
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "value"

    invoke-virtual {v8, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v10, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05StopGuideForHandoff$2;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05StopGuideForHandoff$2;

    sget-object v11, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05StopGuideForHandoff$3;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05StopGuideForHandoff$3;

    const-string v7, "Stop navigation"

    const-string v9, "Requested system to stop navigation"

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->requestS05ResponseCommand(Lm8/IPCSkillDispatcher;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    :goto_c
    return-void

    :goto_d
    monitor-exit p0

    throw p1
.end method

.method public final queryCurrentPosition()Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;
    .locals 3

    sget-object p0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->ipcSkillDispatcher:Lm8/IPCSkillDispatcher;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "Get current vehicle position"

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->buildS05QueryRequest(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    check-cast p0, Lm8/IPCSkillDispatcher$Stub$Proxy;

    invoke-virtual {p0, v1}, Lm8/IPCSkillDispatcher$Stub$Proxy;->queryInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->parseS05PositionResponse(Ljava/lang/String;)Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_0
    instance-of v1, p0, Lkotlin/Result$Failure;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    check-cast v0, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    return-object v0
.end method

.method public final requestS05ResponseCommand(Lm8/IPCSkillDispatcher;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    invoke-static {p2, p3}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->buildS05QueryRequest(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p3

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    new-instance v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05ResponseCommand$1$1;

    invoke-direct {v0, p0, p4, p5, p6}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05ResponseCommand$1$1;-><init>(Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast p1, Lm8/IPCSkillDispatcher$Stub$Proxy;

    invoke-virtual {p1, p3, v0}, Lm8/IPCSkillDispatcher$Stub$Proxy;->sendRequest(Ljava/lang/String;Ln8/IPCResponseObserver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    const-string p3, "Send system control command failed command="

    const-string p4, ", error="

    invoke-static {p3, p2, p4}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    if-eqz p6, :cond_0

    invoke-interface {p6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final resetS05GuideState()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->handoffStopRequested:Z

    sput-boolean v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->ignoreNextSystemNaviStop:Z

    const-string v0, ""

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->pendingSystemStartedPoiSignature:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->activeGuidePoiSignature:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->lastPoiSignature:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->lastPoiDispatchAt:J

    const-string v2, ""

    sput-object v2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->lastRouteQueryKey:Ljava/lang/String;

    sput-wide v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->lastRouteQueryAt:J

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method