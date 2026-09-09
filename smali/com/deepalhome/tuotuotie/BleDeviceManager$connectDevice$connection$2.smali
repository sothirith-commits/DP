.class public final Lcom/deepalhome/tuotuotie/BleDeviceManager$connectDevice$connection$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $address:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/tuotuotie/BleDeviceManager$connectDevice$connection$2;->$address:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v7, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    iget-object p0, p0, Lcom/deepalhome/tuotuotie/BleDeviceManager$connectDevice$connection$2;->$address:Ljava/lang/String;

    monitor-enter v7

    :try_start_0
    const-string v0, "address"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v2, v2, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    move v8, v1

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    :goto_2
    if-gez v8, :cond_2

    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceStorage;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->updateBatteryLevel(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    goto :goto_3

    :cond_2
    :try_start_1
    sget-object v9, Lcom/deepalhome/tuotuotie/BleDeviceManager;->devices:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/tuotuotie/BleDevice;

    iget v1, v0, Lcom/deepalhome/tuotuotie/BleDevice;->batteryLevel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, p1, :cond_3

    monitor-exit v7

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    const/16 v6, 0x37

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p1

    :try_start_2
    invoke-static/range {v0 .. v6}, Lcom/deepalhome/tuotuotie/BleDevice;->copy$default(Lcom/deepalhome/tuotuotie/BleDevice;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/deepalhome/tuotuotie/BleConnectionState;I)Lcom/deepalhome/tuotuotie/BleDevice;

    move-result-object v0

    invoke-virtual {v9, v8, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceStorage;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->updateBatteryLevel(ILjava/lang/String;)V

    invoke-virtual {v7}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->emitDeviceSnapshot()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :goto_4
    monitor-exit v7

    throw p0
.end method
