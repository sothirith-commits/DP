.class public final Lcom/deepalhome/launcher/util/CarInfoUtil$cacheRangeState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $range:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheRangeState$1;->$range:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheRangeState$1;->$range:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setSocRemainRange(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheRangeState$1;->$range:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheRangeState$1;->$range:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getOilRemainRange()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/deepalhome/launcher/util/CarInfoUtil;->access$sumRemainRange(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setTotalRemainRange(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
