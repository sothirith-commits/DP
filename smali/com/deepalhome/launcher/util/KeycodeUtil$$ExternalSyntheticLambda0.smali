.class public final synthetic Lcom/deepalhome/launcher/util/KeycodeUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/util/KeycodeUtil$$ExternalSyntheticLambda0;->$r8$classId:I

    iput p1, p0, Lcom/deepalhome/launcher/util/KeycodeUtil$$ExternalSyntheticLambda0;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/deepalhome/launcher/util/KeycodeUtil$$ExternalSyntheticLambda0;->f$0:I

    iget p0, p0, Lcom/deepalhome/launcher/util/KeycodeUtil$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/deepalhome/launcher/util/KeycodeUtil;->INSTANCE:Lcom/deepalhome/launcher/util/KeycodeUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/KeycodeUtil;->getButtonTypeForKeyCode(I)Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/task/TriggerMonitor;->INSTANCE:Lcom/deepalhome/launcher/task/TriggerMonitor;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/TriggerMonitor;->clearLongPressEvent()V

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/task/TriggerMonitor;->notifySteeringWheelButtonPressed(Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;)V

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/task/TriggerMonitor;->notifySteeringWheelButtonReleased(Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;)V

    return-void

    :pswitch_0
    sget-object p0, Lcom/deepalhome/launcher/util/KeycodeUtil;->INSTANCE:Lcom/deepalhome/launcher/util/KeycodeUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/util/KeycodeUtil;->notifyKeyEventListeners(IZ)V

    return-void

    :pswitch_1
    const/4 p0, 0x0

    sput-object p0, Lcom/deepalhome/launcher/theme/UIModeManager;->pendingSwitchRunnable:Lcom/deepalhome/launcher/util/KeycodeUtil$$ExternalSyntheticLambda0;

    sget-object v2, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    if-eq v1, v0, :cond_1

    if-eq v1, v2, :cond_0

    move-object v3, p0

    goto :goto_0

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    if-eqz v3, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, p0

    :goto_1
    sput-object v3, Lcom/deepalhome/launcher/theme/UIModeManager;->pendingVerificationType:Ljava/lang/Integer;

    :try_start_0
    sget v3, Lkotlin/Result;->$r8$clinit:I

    if-eq v1, v0, :cond_4

    if-eq v1, v2, :cond_3

    const-string v0, "settings_auto"

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    const-string v0, "off"

    goto :goto_2

    :cond_4
    const-string v0, "on"

    :goto_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.mega.controller"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.mega.controller.night"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "night_mode"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    sput-object p0, Lcom/deepalhome/launcher/theme/UIModeManager;->pendingVerificationType:Ljava/lang/Integer;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "dispatchSystemNightMode failed, type="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UIModeManager"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    return-void

    :pswitch_2
    sget-object p0, Lcom/deepalhome/launcher/util/KeycodeUtil;->INSTANCE:Lcom/deepalhome/launcher/util/KeycodeUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/KeycodeUtil;->getButtonTypeForKeyCode(I)Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/task/TriggerMonitor;->INSTANCE:Lcom/deepalhome/launcher/task/TriggerMonitor;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/TriggerMonitor;->setLongPressEvent()V

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/task/TriggerMonitor;->notifySteeringWheelButtonPressed(Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;)V

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/task/TriggerMonitor;->notifySteeringWheelButtonReleased(Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/TriggerMonitor;->clearLongPressEvent()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
