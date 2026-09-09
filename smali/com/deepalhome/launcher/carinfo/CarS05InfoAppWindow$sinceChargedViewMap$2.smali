.class public final Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$sinceChargedViewMap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$sinceChargedViewMap$2;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$sinceChargedViewMap$2;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->itemSupAvgElec:Landroid/widget/LinearLayout;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "sup_avg_elec"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$sinceChargedViewMap$2;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->itemSupAvgFuel:Landroid/widget/LinearLayout;

    new-instance v2, Lkotlin/Pair;

    const-string v3, "sup_avg_fuel"

    invoke-direct {v2, v3, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$sinceChargedViewMap$2;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->itemSupTime:Landroid/widget/LinearLayout;

    new-instance v3, Lkotlin/Pair;

    const-string v4, "sup_time"

    invoke-direct {v3, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$sinceChargedViewMap$2;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->itemSupDistance:Landroid/widget/LinearLayout;

    new-instance v4, Lkotlin/Pair;

    const-string v5, "sup_distance"

    invoke-direct {v4, v5, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$sinceChargedViewMap$2;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->itemSupFuelDistance:Landroid/widget/LinearLayout;

    new-instance v5, Lkotlin/Pair;

    const-string v6, "sup_fuel_distance"

    invoke-direct {v5, v6, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$sinceChargedViewMap$2;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->itemSupFuelTime:Landroid/widget/LinearLayout;

    new-instance v6, Lkotlin/Pair;

    const-string v7, "sup_fuel_time"

    invoke-direct {v6, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$sinceChargedViewMap$2;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->itemSupDrivingElec:Landroid/widget/LinearLayout;

    new-instance v7, Lkotlin/Pair;

    const-string v8, "sup_driving_elec"

    invoke-direct {v7, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$sinceChargedViewMap$2;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/CarInfoS05AppWindowBinding;->itemSupAttachmentElec:Landroid/widget/LinearLayout;

    new-instance v8, Lkotlin/Pair;

    const-string v0, "sup_attachment_elec"

    invoke-direct {v8, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v1 .. v8}, [Lkotlin/Pair;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-static {v0, p0}, Lkotlin/collections/MapsKt__MapsKt;->putAll(Ljava/util/HashMap;[Lkotlin/Pair;)V

    return-object v0
.end method
