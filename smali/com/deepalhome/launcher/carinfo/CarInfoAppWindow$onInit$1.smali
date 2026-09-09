.class public final Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;

    const-string v0, "carInfo"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, ""

    iget-object v1, p1, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;->value:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v3, ".0"

    invoke-static {v1, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v2, :cond_0

    invoke-static {v1, v3, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    :goto_0
    iget-object v3, p1, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;->id:Ljava/lang/String;

    const-string v4, "0x"

    invoke-static {v3, v4, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v3}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v5, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_EP_HV_BATT_REMAIN_RANGE:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalSocResidualRangeValueTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v0, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1$1;

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;

    invoke-static {v0}, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;->access$getCacheCarInfo(Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;)Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_3

    new-instance v0, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1$2;

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalResidualRangeValueTv:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;->updateTotalRemainRange()V

    goto/16 :goto_2

    :cond_4
    sget-wide v5, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_FUEL_REMAIN_RANGE:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_6

    const-string p1, "1023"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto/16 :goto_2

    :cond_5
    iget-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->totalOilResidualRangeValueTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v0, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1$3;

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;->updateTotalRemainRange()V

    goto/16 :goto_2

    :cond_6
    sget-wide v5, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_TIRE_PRESSURE_FRONTLEFT:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_7

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureFrontLeftValueTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;->getTireValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    sget-wide v5, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_TIRE_PRESSURE_FRONTRIGHT:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_8

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureFrontRightValueTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;->getTireValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    sget-wide v5, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_TIRE_PRESSURE_REARLEFT:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_9

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureRearLeftValueTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;->getTireValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    sget-wide v5, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_TIRE_PRESSURE_REARRIGHT:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureRearRightValueTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;->getTireValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    sget-wide v5, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_CAR_SPEED:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->speedTv:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow$onInit$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarInfoAppWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f13044b

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
