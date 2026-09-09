.class public final Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadCycleGrid$items$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $cycle:Lcom/deepalhome/launcher/event/CycleType;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;Lcom/deepalhome/launcher/event/CycleType;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadCycleGrid$items$1$1;->this$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadCycleGrid$items$1$1;->$cycle:Lcom/deepalhome/launcher/event/CycleType;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadCycleGrid$items$1$1;->this$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->tempEventActions:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->currentTab:Lcom/deepalhome/tuotuotie/EventType;

    sget-object v2, Lcom/deepalhome/launcher/event/EventActionSerializer;->INSTANCE:Lcom/deepalhome/launcher/event/EventActionSerializer;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadCycleGrid$items$1$1;->$cycle:Lcom/deepalhome/launcher/event/CycleType;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "cycleType"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "cycle:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/deepalhome/launcher/event/CycleType;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadCycleGrid$items$1$1;->this$0:Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->autoSave()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
