.class public final Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05ResponseCommand$1$1;
.super Ln8/IPCResponseObserver$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic $onFailure:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onSuccess:Lkotlin/jvm/functions/Function0;

.field public final synthetic $successLog:Ljava/lang/String;

.field public final synthetic $this_runCatching:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05ResponseCommand$1$1;->$this_runCatching:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    iput-object p2, p0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05ResponseCommand$1$1;->$successLog:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05ResponseCommand$1$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$requestS05ResponseCommand$1$1;->$onFailure:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ln8/IPCResponseObserver$Stub;-><init>()V

    return-void
.end method
