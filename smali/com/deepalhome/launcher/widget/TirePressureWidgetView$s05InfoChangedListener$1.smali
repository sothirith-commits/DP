.class public final Lcom/deepalhome/launcher/widget/TirePressureWidgetView$s05InfoChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/TirePressureWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/TirePressureWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/TirePressureWidgetView$s05InfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/TirePressureWidgetView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    check-cast p2, Ljava/util/Set;

    const-string v0, "info"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "changedFields"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->TIRE_FRONT_LEFT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/TirePressureWidgetView$s05InfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/TirePressureWidgetView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/TirePressureWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/TirePressureWidgetViewBinding;->frontLeftValueTv:Landroid/widget/TextView;

    const-string v2, "frontLeftValueTv"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureFrontLeft:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/deepalhome/launcher/widget/TirePressureWidgetView;->updateValue(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->TIRE_FRONT_RIGHT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/TirePressureWidgetView$s05InfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/TirePressureWidgetView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/TirePressureWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/TirePressureWidgetViewBinding;->frontRightValueTv:Landroid/widget/TextView;

    const-string v2, "frontRightValueTv"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureFrontRight:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/deepalhome/launcher/widget/TirePressureWidgetView;->updateValue(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->TIRE_REAR_LEFT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/TirePressureWidgetView$s05InfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/TirePressureWidgetView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/TirePressureWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/TirePressureWidgetViewBinding;->rearLeftValueTv:Landroid/widget/TextView;

    const-string v2, "rearLeftValueTv"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureRearLeft:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/deepalhome/launcher/widget/TirePressureWidgetView;->updateValue(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->TIRE_REAR_RIGHT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/TirePressureWidgetView$s05InfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/TirePressureWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/databinding/TirePressureWidgetViewBinding;

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/TirePressureWidgetViewBinding;->rearRightValueTv:Landroid/widget/TextView;

    const-string v0, "rearRightValueTv"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureRearRight:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/deepalhome/launcher/widget/TirePressureWidgetView;->updateValue(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
