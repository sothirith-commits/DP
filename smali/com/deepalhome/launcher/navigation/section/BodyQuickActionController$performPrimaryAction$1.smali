.class public final Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$performPrimaryAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->access$getDismissOtherTransientUi$p(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->access$getType$p(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Lcom/deepalhome/launcher/navigation/model/GridItemType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->access$toggleRearSeatBeltAlarm(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Z

    move-result v1

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->access$toggleTrunk(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Z

    move-result v1

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->access$toggleMirrorFold(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Z

    move-result v1

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    invoke-static {p0, v1}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->access$setDoorHandleExpanded(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;Z)Z

    move-result v1

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->access$setDoorHandleExpanded(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;Z)Z

    move-result v1

    goto :goto_0

    :pswitch_5
    sget-object p0, Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;->openGloveBox()Z

    move-result v1

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$performPrimaryAction$1;->this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->access$openFuelCap(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
