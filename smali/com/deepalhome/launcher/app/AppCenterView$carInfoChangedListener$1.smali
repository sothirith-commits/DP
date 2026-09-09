.class public final Lcom/deepalhome/launcher/app/AppCenterView$carInfoChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/app/AppCenterView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$carInfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;

    const-string v0, "carInfo"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_CAR_GEAR:J

    invoke-static {p1, v0, v1}, Lcom/deepalhome/launcher/util/CarInfoUtil;->equalsId(Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;J)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$carInfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$getFunctionAdapter$p(Lcom/deepalhome/launcher/app/AppCenterView;)Lcom/deepalhome/launcher/app/FunctionListAdapter;

    move-result-object p0

    invoke-static {}, Lcom/deepalhome/launcher/app/AppCenterView;->access$getPARKED_ACCESS_RUNTIME_TYPES$cp()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/app/FunctionListAdapter;->refreshRuntimeState(Ljava/util/Set;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
