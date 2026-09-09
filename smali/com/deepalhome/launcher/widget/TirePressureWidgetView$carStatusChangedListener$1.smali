.class public final Lcom/deepalhome/launcher/widget/TirePressureWidgetView$carStatusChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/TirePressureWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/TirePressureWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/TirePressureWidgetView$carStatusChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/TirePressureWidgetView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CarStatus;

    const-string v0, "carStatus"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$FrontLeft;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/TirePressureWidgetView$carStatusChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/TirePressureWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/TirePressureWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/TirePressureWidgetViewBinding;->frontLeftValueTv:Landroid/widget/TextView;

    const-string v1, "frontLeftValueTv"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$FrontLeft;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/widget/TirePressureWidgetView;->updateValue(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$FrontRight;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/TirePressureWidgetView$carStatusChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/TirePressureWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/TirePressureWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/TirePressureWidgetViewBinding;->frontRightValueTv:Landroid/widget/TextView;

    const-string v1, "frontRightValueTv"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$FrontRight;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/widget/TirePressureWidgetView;->updateValue(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$RearLeft;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/TirePressureWidgetView$carStatusChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/TirePressureWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/TirePressureWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/TirePressureWidgetViewBinding;->rearLeftValueTv:Landroid/widget/TextView;

    const-string v1, "rearLeftValueTv"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$RearLeft;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/widget/TirePressureWidgetView;->updateValue(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$RearRight;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/TirePressureWidgetView$carStatusChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/TirePressureWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/TirePressureWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/TirePressureWidgetViewBinding;->rearRightValueTv:Landroid/widget/TextView;

    const-string v1, "rearRightValueTv"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$RearRight;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/widget/TirePressureWidgetView;->updateValue(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
