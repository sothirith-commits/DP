.class public final Lcom/deepalhome/launcher/ble/BleEventHandler$init$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/ble/BleEventHandler$init$1$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepalhome/launcher/ble/BleEventHandler$init$1$1;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/ble/BleEventHandler$init$1$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/ble/BleEventHandler$init$1$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/ble/BleEventHandler$init$1$1;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventHandler$init$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object/from16 v6, p1

    check-cast v6, Lcom/deepalhome/tuotuotie/BleEvent;

    sget-object v7, Lcom/deepalhome/launcher/ble/BleEventHandler;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventHandler;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->INSTANCE:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;

    iget-object v8, v6, Lcom/deepalhome/tuotuotie/BleEvent;->eventType:Lcom/deepalhome/tuotuotie/EventType;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "eventType"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v9, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->currentState:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;

    sget-object v10, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;->HIDDEN:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;

    const-string v11, "RadialMenuManager"

    const/4 v12, 0x0

    const/4 v13, -0x1

    if-eq v9, v10, :cond_8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v5, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_2a

    :cond_0
    invoke-static {v3}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->handleRotate(I)V

    goto/16 :goto_2a

    :cond_1
    invoke-static {v13}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->handleRotate(I)V

    goto/16 :goto_2a

    :cond_2
    invoke-static {v12}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->hideMenu(Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_2a

    :cond_3
    sget-object v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->currentState:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;

    sget-object v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;->SHOWING:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;

    if-eq v0, v1, :cond_4

    goto/16 :goto_2a

    :cond_4
    sget-object v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->overlay:Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;->menuView:Lcom/deepalhome/launcher/ble/menu/RadialMenuView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->getSelectedItem()Lcom/deepalhome/launcher/ble/menu/MenuItem;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v12

    :goto_0
    if-nez v0, :cond_6

    const-string v0, "No item selected"

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v12}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->hideMenu(Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_2a

    :cond_6
    sget-object v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;->CONFIRMED:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;

    sput-object v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->currentState:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;

    sget-object v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->autoHideRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    if-eqz v1, :cond_7

    sget-object v2, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sput-object v12, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->autoHideRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    :cond_7
    new-instance v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$handleConfirm$1;

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$handleConfirm$1;-><init>(Lcom/deepalhome/launcher/ble/menu/MenuItem;)V

    invoke-static {v1}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->hideMenu(Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_2a

    :cond_8
    sget-object v8, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/deepalhome/tuotuotie/BleDeviceManager;->deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v8}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v10, v10, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    iget-object v14, v6, Lcom/deepalhome/tuotuotie/BleEvent;->deviceAddress:Ljava/lang/String;

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_1

    :cond_a
    move-object v9, v12

    :goto_1
    move-object v14, v9

    check-cast v14, Lcom/deepalhome/tuotuotie/BleDevice;

    const-string v8, "BleEventHandler"

    if-nez v14, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v6, Lcom/deepalhome/tuotuotie/BleEvent;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    :cond_b
    iget-object v9, v6, Lcom/deepalhome/tuotuotie/BleEvent;->eventType:Lcom/deepalhome/tuotuotie/EventType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eq v9, v5, :cond_c

    if-eq v9, v2, :cond_c

    iget-object v9, v6, Lcom/deepalhome/tuotuotie/BleEvent;->eventType:Lcom/deepalhome/tuotuotie/EventType;

    goto :goto_2

    :cond_c
    sget-object v9, Lcom/deepalhome/tuotuotie/EventType;->ROTATE_CW:Lcom/deepalhome/tuotuotie/EventType;

    :goto_2
    iget-object v10, v14, Lcom/deepalhome/tuotuotie/BleDevice;->eventActions:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_d

    goto/16 :goto_2a

    :cond_d
    sget-object v15, Lcom/deepalhome/launcher/event/EventActionSerializer;->INSTANCE:Lcom/deepalhome/launcher/event/EventActionSerializer;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/deepalhome/launcher/event/EventActionSerializer;->decode(Ljava/lang/String;)Lcom/deepalhome/launcher/event/EventAction;

    move-result-object v15

    instance-of v13, v15, Lcom/deepalhome/launcher/event/EventAction$ExecuteAction;

    if-eqz v13, :cond_e

    check-cast v15, Lcom/deepalhome/launcher/event/EventAction$ExecuteAction;

    goto :goto_3

    :cond_e
    move-object v15, v12

    :goto_3
    if-nez v15, :cond_f

    goto :goto_7

    :cond_f
    iget-object v13, v15, Lcom/deepalhome/launcher/event/EventAction$ExecuteAction;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    instance-of v15, v13, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    if-eqz v15, :cond_10

    check-cast v13, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    goto :goto_4

    :cond_10
    move-object v13, v12

    :goto_4
    if-eqz v13, :cond_11

    invoke-virtual {v13}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;->getCommand()Lcom/deepalhome/launcher/hvac/HvacCommand;

    move-result-object v13

    goto :goto_5

    :cond_11
    move-object v13, v12

    :goto_5
    instance-of v15, v13, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;

    if-eqz v15, :cond_12

    check-cast v13, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;

    goto :goto_6

    :cond_12
    move-object v13, v12

    :goto_6
    if-nez v13, :cond_13

    goto :goto_7

    :cond_13
    iget-boolean v13, v13, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;->enabled:Z

    if-nez v13, :cond_14

    goto :goto_7

    :cond_14
    sget-object v13, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAirCondition;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAirCondition;

    invoke-static {v13}, Lcom/deepalhome/launcher/event/EventActionSerializer;->encodeAction(Lcom/deepalhome/launcher/task/model/TaskAction;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    goto :goto_7

    :cond_15
    iget-object v10, v14, Lcom/deepalhome/tuotuotie/BleDevice;->eventActions:Ljava/util/Map;

    invoke-static {v10}, Lkotlin/collections/MapsKt__MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v10

    invoke-interface {v10, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x2f

    move-object/from16 v18, v10

    invoke-static/range {v14 .. v20}, Lcom/deepalhome/tuotuotie/BleDevice;->copy$default(Lcom/deepalhome/tuotuotie/BleDevice;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/deepalhome/tuotuotie/BleConnectionState;I)Lcom/deepalhome/tuotuotie/BleDevice;

    move-result-object v9

    sget-object v10, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/tuotuotie/Tuotuotie;->updateDevice(Lcom/deepalhome/tuotuotie/BleDevice;)V

    move-object v10, v13

    :goto_7
    invoke-static {v10}, Lcom/deepalhome/launcher/event/EventActionSerializer;->decode(Ljava/lang/String;)Lcom/deepalhome/launcher/event/EventAction;

    move-result-object v9

    if-eqz v9, :cond_5f

    sget-object v8, Lcom/deepalhome/launcher/event/EventActionExecutor;->INSTANCE:Lcom/deepalhome/launcher/event/EventActionExecutor;

    iget-object v6, v6, Lcom/deepalhome/tuotuotie/BleEvent;->eventType:Lcom/deepalhome/tuotuotie/EventType;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v7, v9, Lcom/deepalhome/launcher/event/EventAction$CycleAction;

    const-string v8, "getString(...)"

    const v10, 0x7f08025e

    if-nez v7, :cond_20

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v13

    instance-of v14, v9, Lcom/deepalhome/launcher/event/EventAction$ExecuteTask;

    if-eqz v14, :cond_1a

    sget-object v14, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    invoke-virtual {v14}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->getTasks()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_17

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v15

    check-cast v16, Lcom/deepalhome/launcher/task/model/ScheduledTask;

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v12, v9

    check-cast v12, Lcom/deepalhome/launcher/event/EventAction$ExecuteTask;

    iget-object v12, v12, Lcom/deepalhome/launcher/event/EventAction$ExecuteTask;->taskId:Ljava/lang/String;

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_9

    :cond_16
    const/4 v12, 0x0

    goto :goto_8

    :cond_17
    const/4 v15, 0x0

    :goto_9
    check-cast v15, Lcom/deepalhome/launcher/task/model/ScheduledTask;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v15, :cond_18

    invoke-virtual {v15}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getName()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_19

    :cond_18
    const v12, 0x7f130426

    invoke-virtual {v13, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_19
    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v0, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_1a
    instance-of v0, v9, Lcom/deepalhome/launcher/event/EventAction$ExecuteAction;

    if-eqz v0, :cond_1c

    move-object v0, v9

    check-cast v0, Lcom/deepalhome/launcher/event/EventAction$ExecuteAction;

    iget-object v12, v0, Lcom/deepalhome/launcher/event/EventAction$ExecuteAction;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    instance-of v13, v12, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;

    if-eqz v13, :cond_1b

    sget-object v13, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    check-cast v12, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;

    invoke-virtual {v12}, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;->getEventId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->getTriggerlessTaskNameOrFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :cond_1b
    invoke-virtual {v12}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    :goto_a
    iget-object v0, v0, Lcom/deepalhome/launcher/event/EventAction$ExecuteAction;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    invoke-static {v0}, Lcom/deepalhome/launcher/event/EventActionExecutor;->getActionIcon(Lcom/deepalhome/launcher/task/model/TaskAction;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v0, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_1c
    if-eqz v7, :cond_1d

    move-object v0, v9

    check-cast v0, Lcom/deepalhome/launcher/event/EventAction$CycleAction;

    iget-object v12, v0, Lcom/deepalhome/launcher/event/EventAction$CycleAction;->cycleType:Lcom/deepalhome/launcher/event/CycleType;

    invoke-virtual {v12}, Lcom/deepalhome/launcher/event/CycleType;->getIconRes()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v0, v0, Lcom/deepalhome/launcher/event/EventAction$CycleAction;->cycleType:Lcom/deepalhome/launcher/event/CycleType;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/event/CycleType;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v12, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_1d
    instance-of v0, v9, Lcom/deepalhome/launcher/event/EventAction$ShowMenu;

    if-eqz v0, :cond_1e

    const v0, 0x7f0800cb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v12, v9

    check-cast v12, Lcom/deepalhome/launcher/event/EventAction$ShowMenu;

    iget-object v12, v12, Lcom/deepalhome/launcher/event/EventAction$ShowMenu;->menuType:Lcom/deepalhome/launcher/event/MenuType;

    invoke-virtual {v12}, Lcom/deepalhome/launcher/event/MenuType;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v0, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_1e
    instance-of v0, v9, Lcom/deepalhome/launcher/event/EventAction$BodyControl;

    if-eqz v0, :cond_1f

    move-object v0, v9

    check-cast v0, Lcom/deepalhome/launcher/event/EventAction$BodyControl;

    iget-object v12, v0, Lcom/deepalhome/launcher/event/EventAction$BodyControl;->bodyControlType:Lcom/deepalhome/launcher/event/BodyControlType;

    invoke-virtual {v12}, Lcom/deepalhome/launcher/event/BodyControlType;->getIconRes()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v0, v0, Lcom/deepalhome/launcher/event/EventAction$BodyControl;->bodyControlType:Lcom/deepalhome/launcher/event/BodyControlType;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/event/BodyControlType;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v12, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_b
    invoke-virtual {v13}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v13}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    sget-object v13, Lcom/deepalhome/launcher/ble/BleEventToast;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventToast;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v12}, Lcom/deepalhome/launcher/ble/BleEventToast;->show(ILjava/lang/String;)V

    goto :goto_c

    :cond_1f
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_20
    :goto_c
    instance-of v0, v9, Lcom/deepalhome/launcher/event/EventAction$ExecuteTask;

    const-string v12, "EventActionExecutor"

    if-eqz v0, :cond_24

    check-cast v9, Lcom/deepalhome/launcher/event/EventAction$ExecuteTask;

    iget-object v0, v9, Lcom/deepalhome/launcher/event/EventAction$ExecuteTask;->taskId:Ljava/lang/String;

    sget-object v1, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->getTasks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/deepalhome/launcher/task/model/ScheduledTask;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_d

    :cond_22
    const/4 v2, 0x0

    :goto_d
    check-cast v2, Lcom/deepalhome/launcher/task/model/ScheduledTask;

    if-nez v2, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scheduled task does not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    :cond_23
    sget-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/task/TaskExecutor;->execute(Lcom/deepalhome/launcher/task/model/ScheduledTask;)V

    goto/16 :goto_2a

    :cond_24
    instance-of v0, v9, Lcom/deepalhome/launcher/event/EventAction$ExecuteAction;

    if-eqz v0, :cond_27

    check-cast v9, Lcom/deepalhome/launcher/event/EventAction$ExecuteAction;

    iget-object v0, v9, Lcom/deepalhome/launcher/event/EventAction$ExecuteAction;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    instance-of v1, v0, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;

    if-eqz v1, :cond_26

    sget-object v1, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    check-cast v0, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;->getEventId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->getTriggerlessTask(Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/ScheduledTask;

    move-result-object v1

    if-nez v1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Scheduled task does not exist: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;->getEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    :cond_25
    sget-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/task/TaskExecutor;->execute(Lcom/deepalhome/launcher/task/model/ScheduledTask;)V

    goto/16 :goto_2a

    :cond_26
    sget-object v1, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeSingle(Lcom/deepalhome/launcher/task/model/TaskAction;)V

    goto/16 :goto_2a

    :cond_27
    const v14, 0x7f080123

    const v15, 0x7f08010f

    const v16, 0x7f080111

    const v17, 0x7f080113

    const v18, 0x7f080115

    if-eqz v7, :cond_3c

    check-cast v9, Lcom/deepalhome/launcher/event/EventAction$CycleAction;

    iget-object v7, v9, Lcom/deepalhome/launcher/event/EventAction$CycleAction;->cycleType:Lcom/deepalhome/launcher/event/CycleType;

    sget-object v9, Lcom/deepalhome/tuotuotie/EventType;->ROTATE_CCW:Lcom/deepalhome/tuotuotie/EventType;

    if-ne v6, v9, :cond_28

    move v6, v3

    goto :goto_e

    :cond_28
    move v6, v4

    :goto_e
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v12, 0x7f08010d

    const/16 v0, 0x6863

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_2a

    :pswitch_0
    const v0, 0x7f0801f0

    const-string v1, "Navigation volume"

    const/16 v2, 0x9

    invoke-static {v2, v0, v1, v6}, Lcom/deepalhome/launcher/event/EventActionExecutor;->cycleStreamVolume(IILjava/lang/String;Z)V

    goto/16 :goto_2a

    :pswitch_1
    const v0, 0x7f0801aa

    const-string v1, "Media volume"

    invoke-static {v2, v0, v1, v6}, Lcom/deepalhome/launcher/event/EventActionExecutor;->cycleStreamVolume(IILjava/lang/String;Z)V

    goto/16 :goto_2a

    :pswitch_2
    if-eqz v6, :cond_29

    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskAction$MediaPrevious;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$MediaPrevious;

    goto :goto_f

    :cond_29
    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskAction$MediaNext;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$MediaNext;

    :goto_f
    sget-object v1, Lcom/deepalhome/launcher/ble/BleEventToast;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventToast;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0800db

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/ble/BleEventToast;->show(ILjava/lang/String;)V

    sget-object v1, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeSingle(Lcom/deepalhome/launcher/task/model/TaskAction;)V

    goto/16 :goto_2a

    :pswitch_3
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v0, 0x46

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v0, 0x50

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v7 .. v16}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/event/CycleType;->SCREEN_BRIGHTNESS:Lcom/deepalhome/launcher/event/CycleType;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2, v6}, Lcom/deepalhome/launcher/event/EventActionExecutor;->cycleIndex(Lcom/deepalhome/launcher/event/CycleType;IZ)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lcom/deepalhome/launcher/ble/BleEventToast;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventToast;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Brightness "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0800d8

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/ble/BleEventToast;->show(ILjava/lang/String;)V

    sget-object v1, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    new-instance v2, Lcom/deepalhome/launcher/task/model/TaskAction$SetScreenBrightness;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/task/model/TaskAction$SetScreenBrightness;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeSingle(Lcom/deepalhome/launcher/task/model/TaskAction;)V

    goto/16 :goto_2a

    :pswitch_4
    filled-new-array {v9, v13, v11, v10}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v7, Lcom/deepalhome/launcher/event/CycleType;->SEAT_HEATING:Lcom/deepalhome/launcher/event/CycleType;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v8, v6}, Lcom/deepalhome/launcher/event/EventActionExecutor;->cycleIndex(Lcom/deepalhome/launcher/event/CycleType;IZ)I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_2a

    move v4, v3

    :cond_2a
    if-eqz v4, :cond_2b

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Driver heating"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_2b
    const-string v0, "Turn off driver heating"

    :goto_10
    if-eq v1, v3, :cond_2e

    if-eq v1, v5, :cond_2d

    if-eq v1, v2, :cond_2c

    move/from16 v15, v18

    goto :goto_11

    :cond_2c
    move/from16 v15, v17

    goto :goto_11

    :cond_2d
    move/from16 v15, v16

    :cond_2e
    :goto_11
    sget-object v2, Lcom/deepalhome/launcher/ble/BleEventToast;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventToast;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15, v0}, Lcom/deepalhome/launcher/ble/BleEventToast;->show(ILjava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    new-instance v2, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v3, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;

    sget-object v5, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_LEFT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    if-eqz v4, :cond_2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_12

    :cond_2f
    const/4 v12, 0x0

    :goto_12
    invoke-direct {v3, v4, v5, v12}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeSingle(Lcom/deepalhome/launcher/task/model/TaskAction;)V

    goto/16 :goto_2a

    :pswitch_5
    filled-new-array {v9, v13, v11, v10}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v7, Lcom/deepalhome/launcher/event/CycleType;->SEAT_VENTILATION:Lcom/deepalhome/launcher/event/CycleType;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v8, v6}, Lcom/deepalhome/launcher/event/EventActionExecutor;->cycleIndex(Lcom/deepalhome/launcher/event/CycleType;IZ)I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_30

    move v4, v3

    :cond_30
    if-eqz v4, :cond_31

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Driver ventilation"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_31
    const-string v0, "Turn off driver ventilation"

    :goto_13
    if-eq v1, v3, :cond_34

    if-eq v1, v5, :cond_33

    if-eq v1, v2, :cond_32

    goto :goto_14

    :cond_32
    const v14, 0x7f080121

    goto :goto_14

    :cond_33
    const v14, 0x7f08011f

    goto :goto_14

    :cond_34
    const v14, 0x7f08011d

    :goto_14
    sget-object v2, Lcom/deepalhome/launcher/ble/BleEventToast;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventToast;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v0}, Lcom/deepalhome/launcher/ble/BleEventToast;->show(ILjava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    new-instance v2, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v3, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;

    sget-object v5, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_LEFT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    if-eqz v4, :cond_35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_15

    :cond_35
    const/4 v12, 0x0

    :goto_15
    invoke-direct {v3, v4, v5, v12}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeSingle(Lcom/deepalhome/launcher/task/model/TaskAction;)V

    goto/16 :goto_2a

    :pswitch_6
    if-eqz v6, :cond_36

    const/4 v3, -0x1

    :cond_36
    if-eqz v6, :cond_37

    const-string v0, "Decrease temperature"

    goto :goto_16

    :cond_37
    const-string v0, "Increase temperature"

    :goto_16
    sget-object v1, Lcom/deepalhome/launcher/ble/BleEventToast;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventToast;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12, v0}, Lcom/deepalhome/launcher/ble/BleEventToast;->show(ILjava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeSingle(Lcom/deepalhome/launcher/task/model/TaskAction;)V

    goto/16 :goto_2a

    :pswitch_7
    sget-object v0, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->Companion:Lcom/deepalhome/launcher/navigation/WindDirectionMode$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->ordered:Ljava/util/List;

    sget-object v1, Lcom/deepalhome/launcher/event/CycleType;->WIND_DIRECTION:Lcom/deepalhome/launcher/event/CycleType;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2, v6}, Lcom/deepalhome/launcher/event/EventActionExecutor;->cycleIndex(Lcom/deepalhome/launcher/event/CycleType;IZ)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    sget-object v1, Lcom/deepalhome/launcher/navigation/WindDirectionCommandMapper;->INSTANCE:Lcom/deepalhome/launcher/navigation/WindDirectionCommandMapper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/WindDirectionCommandMapper;->spec(Lcom/deepalhome/launcher/navigation/WindDirectionMode;)Lcom/deepalhome/launcher/navigation/WindDirectionCommandSpec;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/ble/BleEventToast;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventToast;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->getIconRes()I

    move-result v0

    iget-object v1, v1, Lcom/deepalhome/launcher/navigation/WindDirectionCommandSpec;->windMode:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v3}, Lcom/deepalhome/launcher/ble/BleEventToast;->show(ILjava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    new-instance v2, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v3, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    invoke-direct {v3, v1}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeSingle(Lcom/deepalhome/launcher/task/model/TaskAction;)V

    goto/16 :goto_2a

    :pswitch_8
    sget-object v1, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;

    sget-object v5, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    sget-object v7, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v7}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getWindLevelFront()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "state"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5, v7, v4}, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->resolveCommittedLevel(Lcom/deepalhome/launcher/carinfo/AirConditionState;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_38

    goto :goto_17

    :cond_38
    invoke-static {v2, v7}, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->resolveRememberedNonZeroLevel(ILjava/lang/String;)I

    move-result v1

    :goto_17
    const/16 v2, 0x8

    invoke-static {v1, v4, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v5

    if-eqz v6, :cond_39

    const/4 v3, -0x1

    :cond_39
    add-int/2addr v5, v3

    invoke-static {v5, v4, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v2

    if-ne v2, v1, :cond_3a

    goto/16 :goto_2a

    :cond_3a
    if-nez v2, :cond_3b

    sget-object v0, Lcom/deepalhome/launcher/ble/BleEventToast;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventToast;

    const-string v1, "Turn off A/C"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12, v1}, Lcom/deepalhome/launcher/ble/BleEventToast;->show(ILjava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;

    invoke-direct {v2, v4}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;-><init>(Z)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeSingle(Lcom/deepalhome/launcher/task/model/TaskAction;)V

    goto/16 :goto_2a

    :cond_3b
    invoke-static {v2}, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->rememberNonZeroLevel(I)V

    sget-object v1, Lcom/deepalhome/launcher/ble/BleEventToast;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventToast;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fan speed"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12, v0}, Lcom/deepalhome/launcher/ble/BleEventToast;->show(ILjava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v3, Lcom/deepalhome/launcher/hvac/HvacCommand$SetFanSpeed;

    invoke-direct {v3, v2}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetFanSpeed;-><init>(I)V

    invoke-direct {v1, v3}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeSingle(Lcom/deepalhome/launcher/task/model/TaskAction;)V

    goto/16 :goto_2a

    :pswitch_9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/ble/BleEventToast;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventToast;

    const v2, 0x7f130125

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f08017a

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/ble/BleEventToast;->show(ILjava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskAction$NextWallpaper;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$NextWallpaper;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeSingle(Lcom/deepalhome/launcher/task/model/TaskAction;)V

    goto/16 :goto_2a

    :pswitch_a
    new-array v0, v2, [Lcom/deepalhome/launcher/task/model/TaskAction;

    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitNormal;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitNormal;

    aput-object v1, v0, v4

    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitLowPower;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitLowPower;

    aput-object v1, v0, v3

    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitClose;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitClose;

    aput-object v1, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/event/CycleType;->COCKPIT_MODE:Lcom/deepalhome/launcher/event/CycleType;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2, v6}, Lcom/deepalhome/launcher/event/EventActionExecutor;->cycleIndex(Lcom/deepalhome/launcher/event/CycleType;IZ)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/task/model/TaskAction;

    sget-object v1, Lcom/deepalhome/launcher/ble/BleEventToast;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventToast;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0800e1

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/ble/BleEventToast;->show(ILjava/lang/String;)V

    sget-object v1, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeSingle(Lcom/deepalhome/launcher/task/model/TaskAction;)V

    goto/16 :goto_2a

    :pswitch_b
    new-array v0, v2, [Lcom/deepalhome/launcher/task/model/TaskAction;

    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetDarkTheme;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$SetDarkTheme;

    aput-object v1, v0, v4

    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetLightTheme;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$SetLightTheme;

    aput-object v1, v0, v3

    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetAutoTheme;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$SetAutoTheme;

    aput-object v1, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/event/CycleType;->THEME_MODE:Lcom/deepalhome/launcher/event/CycleType;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2, v6}, Lcom/deepalhome/launcher/event/EventActionExecutor;->cycleIndex(Lcom/deepalhome/launcher/event/CycleType;IZ)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/task/model/TaskAction;

    sget-object v1, Lcom/deepalhome/launcher/ble/BleEventToast;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventToast;

    invoke-static {v0}, Lcom/deepalhome/launcher/event/EventActionExecutor;->getActionIcon(Lcom/deepalhome/launcher/task/model/TaskAction;)I

    move-result v2

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/deepalhome/launcher/ble/BleEventToast;->show(ILjava/lang/String;)V

    sget-object v1, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeSingle(Lcom/deepalhome/launcher/task/model/TaskAction;)V

    goto/16 :goto_2a

    :pswitch_c
    filled-new-array {v9, v13, v11}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/event/CycleType;->POWER_MODE:Lcom/deepalhome/launcher/event/CycleType;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2, v6}, Lcom/deepalhome/launcher/event/EventActionExecutor;->cycleIndex(Lcom/deepalhome/launcher/event/CycleType;IZ)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;->Companion:Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode$Companion;

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode$Companion;->getModeName(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/ble/BleEventToast;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventToast;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f0800dd

    invoke-static {v2, v1}, Lcom/deepalhome/launcher/ble/BleEventToast;->show(ILjava/lang/String;)V

    sget-object v1, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    new-instance v2, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeSingle(Lcom/deepalhome/launcher/task/model/TaskAction;)V

    goto/16 :goto_2a

    :pswitch_d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v9, v13, v11, v10, v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/event/CycleType;->DRIVE_MODE:Lcom/deepalhome/launcher/event/CycleType;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2, v6}, Lcom/deepalhome/launcher/event/EventActionExecutor;->cycleIndex(Lcom/deepalhome/launcher/event/CycleType;IZ)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;->Companion:Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode$Companion;

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode$Companion;->getModeName(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/ble/BleEventToast;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventToast;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f08024e

    invoke-static {v2, v1}, Lcom/deepalhome/launcher/ble/BleEventToast;->show(ILjava/lang/String;)V

    sget-object v1, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    new-instance v2, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeSingle(Lcom/deepalhome/launcher/task/model/TaskAction;)V

    goto/16 :goto_2a

    :cond_3c
    instance-of v0, v9, Lcom/deepalhome/launcher/event/EventAction$ShowMenu;

    if-eqz v0, :cond_5e

    check-cast v9, Lcom/deepalhome/launcher/event/EventAction$ShowMenu;

    iget-object v0, v9, Lcom/deepalhome/launcher/event/EventAction$ShowMenu;->menuType:Lcom/deepalhome/launcher/event/MenuType;

    sget-object v6, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->INSTANCE:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/event/MenuType;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "menuType"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->currentState:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;

    sget-object v6, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;->HIDDEN:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;

    if-eq v0, v6, :cond_3d

    const-string v0, "Menu already shown, ignoring duplicate request"

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    :cond_3d
    sget-object v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    move-object v6, v0

    goto :goto_18

    :cond_3e
    const/4 v6, 0x0

    :goto_18
    if-nez v6, :cond_3f

    const-string v0, "Unable to get current Activity"

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    :cond_3f
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v9, "task_list"

    const-string v12, "app_list"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_26

    :sswitch_0
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_26

    :cond_40
    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->getCachedApps()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_44

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x0

    invoke-static {v0, v4, v1, v2}, Lcom/deepalhome/launcher/util/AppUtil;->loadAppsAsync$default(Lcom/deepalhome/launcher/util/AppUtil;ZLkotlin/jvm/functions/Function1;I)V

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto/16 :goto_27

    :cond_41
    sget-object v1, Lcom/deepalhome/launcher/util/AppUtil;->cachedApps:Ljava/util/ArrayList;

    if-eqz v1, :cond_42

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_19
    move-object v1, v0

    goto :goto_1a

    :cond_42
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    const/4 v1, 0x0

    invoke-static {v0, v4, v1, v2}, Lcom/deepalhome/launcher/util/AppUtil;->loadAppsAsync$default(Lcom/deepalhome/launcher/util/AppUtil;ZLkotlin/jvm/functions/Function1;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_19

    :cond_43
    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->loadAppsInternal()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/AppUtil;->cachedApps:Ljava/util/ArrayList;

    goto :goto_19

    :cond_44
    :goto_1a
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/deepalhome/launcher/app/App;

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v10}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_48

    new-instance v13, Lcom/deepalhome/launcher/ble/menu/MenuItem$App;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10}, Lcom/deepalhome/launcher/app/App;->getName()Ljava/lang/String;

    move-result-object v15

    sget-object v16, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/deepalhome/launcher/util/AppUtil;->getCachedIcon(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v17

    if-eqz v17, :cond_45

    move-object/from16 p2, v1

    move-object/from16 v1, v17

    goto :goto_1d

    :cond_45
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    :goto_1c
    move-object/from16 p2, v1

    const/4 v1, 0x0

    goto :goto_1d

    :cond_46
    invoke-static {v4}, Lcom/deepalhome/launcher/util/AppUtil;->loadIconBitmapInternal(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_47

    goto :goto_1c

    :cond_47
    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->getIconCache()Landroid/util/LruCache;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 p2, v1

    :try_start_2
    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->getIconCache()Landroid/util/LruCache;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v5

    invoke-static {v4}, Lcom/deepalhome/launcher/util/AppUtil;->getCachedIcon(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    :goto_1d
    invoke-direct {v13, v14, v15, v1, v0}, Lcom/deepalhome/launcher/ble/menu/MenuItem$App;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Landroid/content/Intent;)V

    goto :goto_21

    :catch_0
    move-exception v0

    goto :goto_1f

    :catchall_0
    move-exception v0

    goto :goto_1e

    :catchall_1
    move-exception v0

    move-object/from16 p2, v1

    :goto_1e
    monitor-exit v5

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_1
    move-exception v0

    move-object/from16 p2, v1

    goto :goto_1f

    :cond_48
    move-object/from16 p2, v1

    goto :goto_20

    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unable to load app: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/deepalhome/launcher/app/App;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    const/4 v13, 0x0

    :goto_21
    if-eqz v13, :cond_49

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    move-object/from16 v1, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    goto/16 :goto_1b

    :cond_4a
    sget-object v0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;->INSTANCE:Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;

    invoke-static {v8, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_27

    :sswitch_1
    const-string v0, "drive_mode"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_26

    :cond_4b
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    new-instance v3, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    const v4, 0x7f13010a

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v5, 0x7f0800be

    invoke-static {v5}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->tintedDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    new-instance v10, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    invoke-direct {v10, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;-><init>(I)V

    const-string v11, "drive_economy"

    invoke-direct {v3, v11, v4, v5, v10}, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/deepalhome/launcher/task/model/TaskAction;)V

    new-instance v4, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    const v5, 0x7f130108

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v10, 0x7f08007f

    invoke-static {v10}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->tintedDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v10

    new-instance v11, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    const/4 v13, 0x1

    invoke-direct {v11, v13}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;-><init>(I)V

    const-string v13, "drive_comfort"

    invoke-direct {v4, v13, v5, v10, v11}, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/deepalhome/launcher/task/model/TaskAction;)V

    new-instance v5, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    const v10, 0x7f13010c

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v11, 0x7f080269

    invoke-static {v11}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->tintedDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v11

    new-instance v13, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    const/4 v14, 0x2

    invoke-direct {v13, v14}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;-><init>(I)V

    const-string v14, "drive_sport"

    invoke-direct {v5, v14, v10, v11, v13}, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/deepalhome/launcher/task/model/TaskAction;)V

    new-instance v10, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    const v11, 0x7f13010b

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v13, 0x7f0800c0

    invoke-static {v13}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->tintedDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v13

    new-instance v14, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    invoke-direct {v14, v1}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;-><init>(I)V

    const-string v15, "drive_exclusive"

    invoke-direct {v10, v15, v11, v13, v14}, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/deepalhome/launcher/task/model/TaskAction;)V

    new-instance v11, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    const v13, 0x7f130109

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v8, 0x7f0800c5

    invoke-static {v8}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->tintedDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    new-instance v13, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;-><init>(I)V

    const-string v15, "drive_custom"

    invoke-direct {v11, v15, v0, v8, v13}, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/deepalhome/launcher/task/model/TaskAction;)V

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/deepalhome/launcher/ble/menu/MenuItem;

    aput-object v3, v0, v14

    const/4 v3, 0x1

    aput-object v4, v0, v3

    const/4 v3, 0x2

    aput-object v5, v0, v3

    aput-object v10, v0, v2

    aput-object v11, v0, v1

    sget-object v1, Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;->INSTANCE:Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_27

    :sswitch_2
    const-string v0, "power_mode"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto/16 :goto_26

    :cond_4c
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    new-instance v3, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    const v4, 0x7f130137

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v5, 0x7f080158

    invoke-static {v5}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->tintedDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    new-instance v10, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;-><init>(I)V

    const-string v11, "power_city"

    invoke-direct {v3, v11, v4, v5, v10}, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/deepalhome/launcher/task/model/TaskAction;)V

    new-instance v4, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    const v5, 0x7f130138

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v10, 0x7f080159

    invoke-static {v10}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->tintedDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v10

    new-instance v11, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    const/4 v13, 0x1

    invoke-direct {v11, v13}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;-><init>(I)V

    const-string v13, "power_highway"

    invoke-direct {v4, v13, v5, v10, v11}, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/deepalhome/launcher/task/model/TaskAction;)V

    new-instance v5, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    const v10, 0x7f130139

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const v8, 0x7f08015a

    invoke-static {v8}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->tintedDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    new-instance v10, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;-><init>(I)V

    const-string v13, "power_mountain"

    invoke-direct {v5, v13, v0, v8, v10}, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/deepalhome/launcher/task/model/TaskAction;)V

    new-array v0, v1, [Lcom/deepalhome/launcher/ble/menu/MenuItem;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    aput-object v5, v0, v11

    sget-object v1, Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;->INSTANCE:Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_27

    :sswitch_3
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_26

    :cond_4d
    sget-object v0, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->getTriggerlessTasks()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v10}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/task/model/ScheduledTask;

    new-instance v4, Lcom/deepalhome/launcher/ble/menu/MenuItem$Task;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v8, v1, v3}, Lcom/deepalhome/launcher/ble/menu/MenuItem$Task;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/deepalhome/launcher/task/model/ScheduledTask;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_4e
    sget-object v0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;->INSTANCE:Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_27

    :sswitch_4
    const-string v0, "body_control"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_26

    :cond_4f
    sget-object v0, Lcom/deepalhome/launcher/event/BodyControlType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lkotlin/jvm/internal/ArrayIterator;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Lkotlin/jvm/internal/ArrayIterator;-><init>(ILjava/lang/Object;)V

    :cond_50
    :goto_23
    invoke-virtual {v2}, Lkotlin/jvm/internal/ArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {v2}, Lkotlin/jvm/internal/ArrayIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/deepalhome/launcher/event/BodyControlType;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/event/BodyControlType;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_51
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/event/BodyControlType;

    new-instance v3, Lcom/deepalhome/launcher/ble/menu/MenuItem$BodyControlItem;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/event/BodyControlType;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/deepalhome/launcher/event/BodyControlType;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->INSTANCE:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/event/BodyControlType;->getIconRes()I

    move-result v10

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->tintedDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    invoke-direct {v3, v4, v5, v8, v2}, Lcom/deepalhome/launcher/ble/menu/MenuItem$BodyControlItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/deepalhome/launcher/event/BodyControlType;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_52
    sget-object v1, Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;->INSTANCE:Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_27

    :sswitch_5
    const-string v0, "wind_direction"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_26

    :cond_53
    sget-object v0, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->FACE:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "Blow face"

    invoke-direct {v1, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->FACE_FOOT:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "Blow face and feet"

    invoke-direct {v2, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->FOOT:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    new-instance v3, Lkotlin/Pair;

    const-string v4, "Blow feet"

    invoke-direct {v3, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->FOOT_SHIELD:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    new-instance v4, Lkotlin/Pair;

    const-string v5, "Blow feet and windshield"

    invoke-direct {v4, v0, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->SHIELD:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    new-instance v5, Lkotlin/Pair;

    const-string v8, "Blow windshield"

    invoke-direct {v5, v0, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v2, v3, v4, v5}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->Companion:Lcom/deepalhome/launcher/navigation/WindDirectionMode$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->ordered:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    sget-object v4, Lcom/deepalhome/launcher/navigation/WindDirectionCommandMapper;->INSTANCE:Lcom/deepalhome/launcher/navigation/WindDirectionCommandMapper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/navigation/WindDirectionCommandMapper;->spec(Lcom/deepalhome/launcher/navigation/WindDirectionMode;)Lcom/deepalhome/launcher/navigation/WindDirectionCommandSpec;

    move-result-object v4

    new-instance v5, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "wind_"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_54

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    :cond_54
    sget-object v11, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->INSTANCE:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->getIconRes()I

    move-result v3

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->tintedDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    new-instance v11, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v13, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    iget-object v4, v4, Lcom/deepalhome/launcher/navigation/WindDirectionCommandSpec;->windMode:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-direct {v13, v4}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    invoke-direct {v11, v13}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    invoke-direct {v5, v8, v10, v3, v11}, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/deepalhome/launcher/task/model/TaskAction;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_55
    sget-object v0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;->INSTANCE:Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_27

    :sswitch_6
    const-string v0, "seat_heating"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_26

    :cond_56
    new-instance v0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    invoke-static/range {v18 .. v18}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->tintedDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    new-instance v4, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v5, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;

    sget-object v8, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_LEFT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-direct {v5}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;-><init>()V

    invoke-direct {v4, v5}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v5, "heat_off"

    const-string v10, "Turn off heating"

    invoke-direct {v0, v5, v10, v3, v4}, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/deepalhome/launcher/task/model/TaskAction;)V

    new-instance v3, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    invoke-static {v15}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->tintedDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    new-instance v5, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v10, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v10, v11, v8, v13}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v5, v10}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v10, "heat_1"

    const-string v13, "Heating level 1"

    invoke-direct {v3, v10, v13, v4, v5}, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/deepalhome/launcher/task/model/TaskAction;)V

    new-instance v4, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    invoke-static/range {v16 .. v16}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->tintedDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    new-instance v10, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v13, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v11, v8, v15}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v10, v13}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v13, "heat_2"

    const-string v14, "Heating level 2"

    invoke-direct {v4, v13, v14, v5, v10}, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/deepalhome/launcher/task/model/TaskAction;)V

    new-instance v5, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    invoke-static/range {v17 .. v17}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->tintedDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v10

    new-instance v13, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v14, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v14, v11, v8, v15}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v13, v14}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v8, "heat_3"

    const-string v14, "Heating level 3"

    invoke-direct {v5, v8, v14, v10, v13}, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/deepalhome/launcher/task/model/TaskAction;)V

    const/4 v8, 0x5

    new-array v8, v8, [Lcom/deepalhome/launcher/ble/menu/MenuItem;

    const/4 v10, 0x0

    aput-object v0, v8, v10

    aput-object v3, v8, v11

    const/4 v3, 0x2

    aput-object v4, v8, v3

    aput-object v5, v8, v2

    sget-object v0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;->INSTANCE:Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;

    aput-object v0, v8, v1

    invoke-static {v8}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_27

    :sswitch_7
    const-string v0, "seat_ventilation"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    :goto_26
    const-string v0, "Unknown menu type: "

    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    :cond_57
    new-instance v0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    invoke-static {v14}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->tintedDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    new-instance v4, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v5, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;

    sget-object v8, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_LEFT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v5, v11, v8, v10}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v4, v5}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v5, "vent_off"

    const-string v10, "Turn off ventilation"

    invoke-direct {v0, v5, v10, v3, v4}, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/deepalhome/launcher/task/model/TaskAction;)V

    new-instance v3, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    const v4, 0x7f08011d

    invoke-static {v4}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->tintedDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    new-instance v5, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v10, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v10, v11, v8, v13}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v5, v10}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v10, "vent_1"

    const-string v13, "Ventilation level 1"

    invoke-direct {v3, v10, v13, v4, v5}, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/deepalhome/launcher/task/model/TaskAction;)V

    new-instance v4, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    const v5, 0x7f08011f

    invoke-static {v5}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->tintedDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    new-instance v10, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v13, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v11, v8, v15}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v10, v13}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v13, "vent_2"

    const-string v14, "Ventilation level 2"

    invoke-direct {v4, v13, v14, v5, v10}, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/deepalhome/launcher/task/model/TaskAction;)V

    new-instance v5, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    const v10, 0x7f080121

    invoke-static {v10}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->tintedDrawable(I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v10

    new-instance v13, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v14, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v14, v11, v8, v15}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v13, v14}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v8, "vent_3"

    const-string v14, "Ventilation level 3"

    invoke-direct {v5, v8, v14, v10, v13}, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/deepalhome/launcher/task/model/TaskAction;)V

    const/4 v8, 0x5

    new-array v8, v8, [Lcom/deepalhome/launcher/ble/menu/MenuItem;

    const/4 v10, 0x0

    aput-object v0, v8, v10

    aput-object v3, v8, v11

    const/4 v3, 0x2

    aput-object v4, v8, v3

    aput-object v5, v8, v2

    sget-object v0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;->INSTANCE:Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;

    aput-object v0, v8, v1

    invoke-static {v8}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    const v1, 0x7f13011d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_58
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    const v1, 0x7f13011f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_59
    const v1, 0x7f13011e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_28
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2a

    :cond_5a
    new-instance v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;

    sget-object v2, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$showMenu$1;->INSTANCE:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$showMenu$1;

    invoke-direct {v1, v6, v2}, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;-><init>(Landroid/app/Activity;Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$showMenu$1;)V

    sput-object v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->overlay:Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;

    sget-object v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;->SHOWING:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;

    sput-object v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->currentState:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;

    sget-object v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->overlay:Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;

    if-eqz v1, :cond_5c

    iget-boolean v2, v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;->isShowing:Z

    if-eqz v2, :cond_5b

    goto/16 :goto_29

    :cond_5b
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;->isShowing:Z

    iget-object v2, v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v3, Landroid/view/ViewGroup;

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setFocusable(Z)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/4 v5, 0x2

    invoke-direct {v2, v5, v1}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;

    iget-object v5, v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;->activity:Landroid/app/Activity;

    invoke-direct {v2, v5}, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;-><init>(Landroid/app/Activity;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    const/high16 v6, 0x43960000    # 300.0f

    invoke-virtual {v2, v6}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v2, v0}, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->setItems(Ljava/util/List;)V

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v4, v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;->container:Landroid/widget/FrameLayout;

    iput-object v2, v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;->menuView:Lcom/deepalhome/launcher/ble/menu/RadialMenuView;

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/high16 v6, -0x34000000    # -3.3554432E7f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v3, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay$$ExternalSyntheticLambda1;

    invoke-direct {v3, v4, v1}, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay$$ExternalSyntheticLambda1;-><init>(Landroid/widget/FrameLayout;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x15e

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v2}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5c
    :goto_29
    sget-object v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->autoHideRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    sget-object v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_5d

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    sput-object v2, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->autoHideRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    :cond_5d
    new-instance v0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sput-object v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->autoHideRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    goto :goto_2a

    :cond_5e
    instance-of v0, v9, Lcom/deepalhome/launcher/event/EventAction$BodyControl;

    if-eqz v0, :cond_60

    check-cast v9, Lcom/deepalhome/launcher/event/EventAction$BodyControl;

    iget-object v0, v9, Lcom/deepalhome/launcher/event/EventAction$BodyControl;->bodyControlType:Lcom/deepalhome/launcher/event/BodyControlType;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/event/BodyControlType;->execute()V

    goto :goto_2a

    :cond_5f
    const-string v0, "Invalid actionId: "

    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    :goto_2a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

    :sswitch_data_0
    .sparse-switch
        -0x7a78b9dd -> :sswitch_7
        -0x52239c48 -> :sswitch_6
        -0x489db7f8 -> :sswitch_5
        -0x38857c40 -> :sswitch_4
        0xac4df18 -> :sswitch_3
        0x1a45449d -> :sswitch_2
        0x226bbf38 -> :sswitch_1
        0x45981bfc -> :sswitch_0
    .end sparse-switch
.end method
