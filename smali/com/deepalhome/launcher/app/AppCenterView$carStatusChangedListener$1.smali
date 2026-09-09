.class public final Lcom/deepalhome/launcher/app/AppCenterView$carStatusChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/app/AppCenterView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$carStatusChangedListener$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CarStatus;

    const-string v0, "carStatus"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p1, p1, Lcom/deepalhome/launcher/carinfo/CarStatus$DrivingInfo$Gear;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$carStatusChangedListener$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$getFunctionAdapter$p(Lcom/deepalhome/launcher/app/AppCenterView;)Lcom/deepalhome/launcher/app/FunctionListAdapter;

    move-result-object p0

    invoke-static {}, Lcom/deepalhome/launcher/app/AppCenterView;->access$getPARKED_ACCESS_RUNTIME_TYPES$cp()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->refreshRuntimeState(Ljava/util/Set;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
