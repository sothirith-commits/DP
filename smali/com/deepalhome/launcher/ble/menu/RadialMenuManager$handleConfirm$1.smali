.class public final Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$handleConfirm$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $selectedItem:Lcom/deepalhome/launcher/ble/menu/MenuItem;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/ble/menu/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$handleConfirm$1;->$selectedItem:Lcom/deepalhome/launcher/ble/menu/MenuItem;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->INSTANCE:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;

    iget-object p0, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$handleConfirm$1;->$selectedItem:Lcom/deepalhome/launcher/ble/menu/MenuItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$App;

    const-string v1, "RadialMenuManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/deepalhome/launcher/ble/menu/MenuItem$App;

    iget-object v0, v0, Lcom/deepalhome/launcher/ble/menu/MenuItem$App;->launchIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to open app: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$App;

    iget-object p0, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$App;->title:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    const v0, 0x7f130119

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Task;

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    move-object v3, p0

    check-cast v3, Lcom/deepalhome/launcher/ble/menu/MenuItem$Task;

    iget-object v3, v3, Lcom/deepalhome/launcher/ble/menu/MenuItem$Task;->task:Lcom/deepalhome/launcher/task/model/ScheduledTask;

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/task/TaskExecutor;->execute(Lcom/deepalhome/launcher/task/model/ScheduledTask;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    move-object v3, p0

    check-cast v3, Lcom/deepalhome/launcher/ble/menu/MenuItem$Task;

    iget-object v3, v3, Lcom/deepalhome/launcher/ble/menu/MenuItem$Task;->title:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f13011c

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Task execution failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Task;

    iget-object p0, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Task;->title:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    const v0, 0x7f13011b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    check-cast p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;

    iget-object p0, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Action;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeSingle(Lcom/deepalhome/launcher/task/model/TaskAction;)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$BodyControlItem;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$BodyControlItem;

    iget-object p0, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$BodyControlItem;->bodyControlType:Lcom/deepalhome/launcher/event/BodyControlType;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/event/BodyControlType;->execute()V

    goto :goto_0

    :cond_3
    instance-of p0, p0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;

    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
