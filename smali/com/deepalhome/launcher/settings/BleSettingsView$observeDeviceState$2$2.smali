.class public final synthetic Lcom/deepalhome/launcher/settings/BleSettingsView$observeDeviceState$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $tmp0:Lcom/deepalhome/launcher/settings/BleSettingsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/BleSettingsView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$observeDeviceState$2$2;->$tmp0:Lcom/deepalhome/launcher/settings/BleSettingsView;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    sget p2, Lcom/deepalhome/launcher/settings/BleSettingsView;->$r8$clinit:I

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$observeDeviceState$2$2;->$tmp0:Lcom/deepalhome/launcher/settings/BleSettingsView;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/BleSettingsView;->updateDeviceList(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    instance-of v0, p1, Lkotlinx/coroutines/flow/FlowCollector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/deepalhome/launcher/settings/BleSettingsView$observeDeviceState$2$2;

    if-eqz v0, :cond_0

    new-instance v0, Lkotlin/jvm/internal/AdaptedFunctionReference;

    iget-object v5, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$observeDeviceState$2$2;->$tmp0:Lcom/deepalhome/launcher/settings/BleSettingsView;

    const-string v7, "updateDeviceList(Ljava/util/List;)V"

    const/4 v3, 0x2

    const-class v4, Lcom/deepalhome/launcher/settings/BleSettingsView;

    const-string v6, "updateDeviceList"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/deepalhome/launcher/settings/BleSettingsView$observeDeviceState$2$2;

    new-instance p0, Lkotlin/jvm/internal/AdaptedFunctionReference;

    iget-object v4, p1, Lcom/deepalhome/launcher/settings/BleSettingsView$observeDeviceState$2$2;->$tmp0:Lcom/deepalhome/launcher/settings/BleSettingsView;

    const-string v6, "updateDeviceList(Ljava/util/List;)V"

    const/4 v2, 0x2

    const-class v3, Lcom/deepalhome/launcher/settings/BleSettingsView;

    const-string v5, "updateDeviceList"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 7

    new-instance v6, Lkotlin/jvm/internal/AdaptedFunctionReference;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/BleSettingsView$observeDeviceState$2$2;->$tmp0:Lcom/deepalhome/launcher/settings/BleSettingsView;

    const-string v5, "updateDeviceList(Ljava/util/List;)V"

    const/4 v1, 0x2

    const-class v2, Lcom/deepalhome/launcher/settings/BleSettingsView;

    const-string v4, "updateDeviceList"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;->hashCode()I

    move-result p0

    return p0
.end method
