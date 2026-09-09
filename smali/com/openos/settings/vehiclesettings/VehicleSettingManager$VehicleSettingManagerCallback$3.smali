.class public final Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$4()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$40()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$41()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$42()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$43()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$44()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$45()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$46()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$47()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$48()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$49()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$5()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$50()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$51()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$52()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$53()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$54()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$55()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$56()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$57()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$58()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$59()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$60()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$61()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$62()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$63()V
    .locals 2

    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$63()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$62()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$61()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$60()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$5()V

    return-void

    :pswitch_5
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$59()V

    return-void

    :pswitch_6
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$58()V

    return-void

    :pswitch_7
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$57()V

    return-void

    :pswitch_8
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$56()V

    return-void

    :pswitch_9
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$55()V

    return-void

    :pswitch_a
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$54()V

    return-void

    :pswitch_b
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$53()V

    return-void

    :pswitch_c
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$52()V

    return-void

    :pswitch_d
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$51()V

    return-void

    :pswitch_e
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$50()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$4()V

    return-void

    :pswitch_10
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$49()V

    return-void

    :pswitch_11
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$48()V

    return-void

    :pswitch_12
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$47()V

    return-void

    :pswitch_13
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$46()V

    return-void

    :pswitch_14
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$45()V

    return-void

    :pswitch_15
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$44()V

    return-void

    :pswitch_16
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$43()V

    return-void

    :pswitch_17
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$42()V

    return-void

    :pswitch_18
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$41()V

    return-void

    :pswitch_19
    invoke-direct {p0}, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingManagerCallback$3;->run$com$openos$settings$vehiclesettings$VehicleSettingManager$VehicleSettingManagerCallback$40()V

    return-void

    :pswitch_1a
    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_1
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_1b
    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_2
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :pswitch_1c
    sget-object p0, Lcom/openos/settings/vehiclesettings/VehicleSettingManager;->vehicleSettingStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openos/settings/vehiclesettings/VehicleSettingManager$VehicleSettingStateChangedListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_7

    :cond_3
    monitor-exit p0

    return-void

    :goto_7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
