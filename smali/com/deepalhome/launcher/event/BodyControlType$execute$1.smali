.class public final Lcom/deepalhome/launcher/event/BodyControlType$execute$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $nextOpen:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/event/BodyControlType$execute$1;->$nextOpen:Z

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

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/deepalhome/launcher/event/BodyControlType$execute$1;->$nextOpen:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "2"

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/deepalhome/launcher/event/BodyControlType$execute$1;->$nextOpen:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "0"

    :goto_0
    invoke-virtual {p1, v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setTrunkDoorDegree(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
