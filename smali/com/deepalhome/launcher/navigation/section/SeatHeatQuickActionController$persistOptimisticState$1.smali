.class public final Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$persistOptimisticState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    const-string v0, "$this$updateCarInfo"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->access$getType$p(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)Lcom/deepalhome/launcher/navigation/model/GridItemType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->access$currentCommittedSeatHeatLevel(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setSeatHeatingFrontRight(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->access$currentCommittedSeatHeatLevel(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setSeatHeatingFrontLeft(Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
