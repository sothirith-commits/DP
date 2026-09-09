.class public final Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$persistOptimisticState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    const-string v0, "$this$updateCarInfo"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$getType$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Lcom/deepalhome/launcher/navigation/model/GridItemType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "0"

    const-string v2, "1"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$getInnerRecycleEnabled$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Z

    move-result p0

    if-eqz p0, :cond_0

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_0
    const-string v1, "2"

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$getInnerRecycleEnabled$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setAirRecycleMode(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$getRearDefrostEnabled$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Z

    move-result p0

    if-eqz p0, :cond_3

    move-object v1, v2

    :cond_3
    invoke-virtual {p1, v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setRearDefrost(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$getDefrostEnabled$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Z

    move-result p0

    if-eqz p0, :cond_4

    move-object v1, v2

    :cond_4
    invoke-virtual {p1, v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setFrontDefrost(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$currentCommittedSeatVentLevel(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setSeatVentilationFrontRight(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$currentCommittedSeatVentLevel(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setSeatVentilationFrontLeft(Ljava/lang/String;)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
