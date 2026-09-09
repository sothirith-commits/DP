.class public final synthetic Lcom/deepalhome/launcher/util/AssistantUtil$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:D

.field public final synthetic f$2:D


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;DDI)V
    .locals 0

    iput p6, p0, Lcom/deepalhome/launcher/util/AssistantUtil$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/util/AssistantUtil$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lcom/deepalhome/launcher/util/AssistantUtil$$ExternalSyntheticLambda3;->f$1:D

    iput-wide p4, p0, Lcom/deepalhome/launcher/util/AssistantUtil$$ExternalSyntheticLambda3;->f$2:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/deepalhome/launcher/util/AssistantUtil$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/deepalhome/launcher/util/AssistantUtil$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    const-string v1, "$name"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/MapIntentRouter;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/MapIntentRouter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Lcom/deepalhome/launcher/util/AssistantUtil$$ExternalSyntheticLambda3;->f$1:D

    iget-wide v3, p0, Lcom/deepalhome/launcher/util/AssistantUtil$$ExternalSyntheticLambda3;->f$2:D

    invoke-static {v0, v1, v2, v3, v4}, Lcom/deepalhome/launcher/util/s05/navi/MapIntentRouter;->sendS05CoordinateNaviBroadcast(Ljava/lang/String;DD)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/deepalhome/launcher/util/AssistantUtil$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    const-string v1, "$destName"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-static {v1}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;->scheduleAutoNavi$default(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;)V

    sget-object v1, Lcom/deepalhome/launcher/util/LauncherUtil;->Companion:Lcom/deepalhome/launcher/util/LauncherUtil$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/LauncherUtil$Companion;->backToHomeAndShowWindow()V

    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/MapIntentRouter;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/MapIntentRouter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p0, Lcom/deepalhome/launcher/util/AssistantUtil$$ExternalSyntheticLambda3;->f$1:D

    iget-wide v3, p0, Lcom/deepalhome/launcher/util/AssistantUtil$$ExternalSyntheticLambda3;->f$2:D

    invoke-static {v0, v1, v2, v3, v4}, Lcom/deepalhome/launcher/util/s05/navi/MapIntentRouter;->sendS05CoordinateNaviBroadcast(Ljava/lang/String;DD)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
