.class public final Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$persistOptimisticState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

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

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->access$isS05Branch(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->access$getMirrorFolded$p(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "2"

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController$persistOptimisticState$1;->this$0:Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;->access$getMirrorFolded$p(Lcom/deepalhome/launcher/navigation/section/BodyQuickActionController;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "0"

    :goto_0
    invoke-virtual {p1, v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setRearViewMirrorFold(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
