.class public final Lcom/deepalhome/launcher/carinfo/CarStatusAppWindow$onInit$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/carinfo/CarStatusAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/carinfo/CarStatusAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarStatusAppWindow$onInit$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarStatusAppWindow;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CarStatus;

    const-string v0, "carInfo"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/deepalhome/launcher/carinfo/CarStatus$DrivingInfo$Speed;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarStatusAppWindow$onInit$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarStatusAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->speedTv:Landroid/widget/TextView;

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CarStatus$DrivingInfo$Speed;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->value:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " km/h"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "0 km/h"

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$FrontLeft;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarStatusAppWindow$onInit$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarStatusAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureFrontLeftValueTv:Landroid/widget/TextView;

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$FrontLeft;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$FrontRight;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarStatusAppWindow$onInit$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarStatusAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureFrontRightValueTv:Landroid/widget/TextView;

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$FrontRight;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$RearLeft;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarStatusAppWindow$onInit$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarStatusAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureRearLeftValueTv:Landroid/widget/TextView;

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$RearLeft;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$RearRight;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarStatusAppWindow$onInit$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarStatusAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoAppWindowBinding;->tirePressureRearRightValueTv:Landroid/widget/TextView;

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$RearRight;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
