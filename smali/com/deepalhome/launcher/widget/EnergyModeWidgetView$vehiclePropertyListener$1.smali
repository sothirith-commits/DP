.class public final Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$vehiclePropertyListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$vehiclePropertyListener$1;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;

    const-string v0, "vehicleProperty"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "EnergyInfo/EnergyManagementMode"

    iget-object v1, p1, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;->canonicalTopic:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;->raw:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_5

    const-string v0, "receive EnergyInfo/EnergyManagementMode"

    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-ne p1, v3, :cond_5

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$vehiclePropertyListener$1;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    sget v0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->$r8$clinit:I

    invoke-virtual {p1, v5}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->parseModeIndex$1(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->confirmedModeIndex:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$vehiclePropertyListener$1;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    iput-object v4, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->pendingActionIndex:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->refreshModeStates$2()V

    goto :goto_2

    :cond_1
    const-string v0, "VCU_2A1/VcuFEveSetSts"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    const-string v0, "receive VCU_2A1/VcuFEveSetSts"

    invoke-static {p1, v0, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-ne p1, v3, :cond_5

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$vehiclePropertyListener$1;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    sget v0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v5, :cond_2

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v4

    :goto_0
    const-string v1, "1"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    const-string v1, "0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    iput-boolean v2, p1, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->isPureElectricSelected:Z

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/deepalhome/launcher/config/UserConfig;->setPureElectricModeWidgetSelected(Z)V

    :cond_4
    iget-object p0, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$vehiclePropertyListener$1;->this$0:Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    iput-object v4, p0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->pendingActionIndex:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->refreshModeStates$2()V

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
