.class public final Lcom/deepalhome/launcher/app/AppCenterView$vehiclePropertyChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/app/AppCenterView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$vehiclePropertyChangedListener$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;

    const-string v0, "vehicleProperty"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/app/AppCenterView;->Companion:Lcom/deepalhome/launcher/app/AppCenterView$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;->canonicalTopic:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "AC/RearDefrost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "AC/RearViewMirrorHeating/Left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "AC/RearViewMirrorHeating"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "AC/SeatHeating/FrontLeft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object p1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_HEAT_LEFT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {p1}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "AC/SeatVentilation/FrontLeft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    sget-object p1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_VENT_LEFT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {p1}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "AC/RearViewMirrorHeating/Right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    sget-object p1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->MIRROR_HEAT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {p1}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "VehicleWindow/RearViewMirrorFold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    sget-object p1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->MIRROR_FOLD:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {p1}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "AC/SeatHeating/FrontRight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    sget-object p1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_HEAT_RIGHT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {p1}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "AC/CycleMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->AIR_RECYCLE:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {p1}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :sswitch_9
    const-string v0, "AC/SeatVentilation/FrontRight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    sget-object p1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_VENT_RIGHT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {p1}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :sswitch_a
    const-string v0, "AC/WindMode/Front"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    sget-object p1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->WIND_DIRECTION:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {p1}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :sswitch_b
    const-string v0, "VehicleDoor/TrunkDoorDegree"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    sget-object p1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->TRUNK:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {p1}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :sswitch_c
    const-string v0, "AC/FrontDefrost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    sget-object p1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->DEFROST_FRONT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->WIND_DIRECTION:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    filled-new-array {p1, v0}, [Lcom/deepalhome/launcher/navigation/model/GridItemType;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_1

    :sswitch_d
    const-string v0, "VehicleSeat/SeatBeltCheck/Rear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    :goto_0
    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    goto :goto_1

    :cond_a
    sget-object p1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->REAR_SEAT_BELT_ALARM:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {p1}, Lkotlin/collections/SetsKt__SetsJVMKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$vehiclePropertyChangedListener$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$getFunctionAdapter$p(Lcom/deepalhome/launcher/app/AppCenterView;)Lcom/deepalhome/launcher/app/FunctionListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->refreshRuntimeState(Ljava/util/Set;)V

    :cond_b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7d2e8107 -> :sswitch_d
        -0x6d291699 -> :sswitch_c
        -0x68961a67 -> :sswitch_b
        -0x63cf398e -> :sswitch_a
        -0x4b77d7e9 -> :sswitch_9
        -0x202ef224 -> :sswitch_8
        -0x13c0889e -> :sswitch_7
        -0xaaddd64 -> :sswitch_6
        0x5bd326a -> :sswitch_5
        0x5d00eac -> :sswitch_4
        0x79c2a01 -> :sswitch_3
        0x26450cfd -> :sswitch_2
        0x2976edf9 -> :sswitch_1
        0x70fb4212 -> :sswitch_0
    .end sparse-switch
.end method
