.class public final Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05StopGuideForHandoff$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05StopGuideForHandoff$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05StopGuideForHandoff$2;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05StopGuideForHandoff$2;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05StopGuideForHandoff$2;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05StopGuideForHandoff$2;

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
    .locals 7

    sget-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->ipcSkillDispatcher:Lm8/IPCSkillDispatcher;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Failed to close system map App: IPCSkillDispatcher not ready"

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const-string v4, "Requested to close system map App"

    const-string v2, "CloseMapApp"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->requestS05ResponseCommand(Lm8/IPCSkillDispatcher;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method