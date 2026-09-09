.class public final synthetic Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;

    const-string v1, "this$0"

    iget p0, p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handleLimitBeforeStartNavigation()V

    return-void

    :pswitch_0
    sget-object p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->clickNavButtonInternal()V

    return-void

    :pswitch_1
    sget-object p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handleLimitBeforeStartNavigation()V

    return-void

    :pswitch_2
    sget-object p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handleLimitBeforeStartNavigation()V

    return-void

    :pswitch_3
    sget-object p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->performAutoNaviAction()V

    return-void

    :pswitch_4
    sget-object p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handleLimitBeforeStartNavigation()V

    return-void

    :pswitch_5
    sget-object p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handleLimitBeforeStartNavigation()V

    return-void

    :pswitch_6
    sget-object p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->isReadyForAutoNavi()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_0
    iget-object p0, v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :pswitch_7
    sget-object p0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->performAutoNaviAction()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
