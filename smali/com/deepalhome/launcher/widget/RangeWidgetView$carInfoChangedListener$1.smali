.class public final Lcom/deepalhome/launcher/widget/RangeWidgetView$carInfoChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/widget/RangeWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/widget/RangeWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$carInfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/RangeWidgetView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;

    const-string v0, "carInfo"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$carInfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/RangeWidgetView;

    sget v1, Lcom/deepalhome/launcher/widget/RangeWidgetView;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "0x"

    iget-object p1, p1, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;->id:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {v0, p1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(ILjava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_EP_HV_BATT_REMAIN_RANGE:J

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    goto/16 :goto_7

    :cond_1
    :goto_0
    sget-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_FUEL_REMAIN_RANGE:J

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_3

    goto :goto_7

    :cond_3
    :goto_1
    sget-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_FUEL_LEVEL:J

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_5

    goto :goto_7

    :cond_5
    :goto_2
    sget-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_FUEL_L:J

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    :goto_3
    sget-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_HV_PERCENT:J

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    :goto_4
    sget-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_FUEL_PERCENT:J

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    :goto_5
    sget-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_REMAINING_MILEAGE_REAL:J

    if-nez p1, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_d

    goto :goto_7

    :cond_d
    :goto_6
    sget-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_REMAINING_MILEAGE_STANDARD:J

    if-nez p1, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-nez p1, :cond_f

    :goto_7
    iget-object p0, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView$carInfoChangedListener$1;->this$0:Lcom/deepalhome/launcher/widget/RangeWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->refreshContent()V

    :cond_f
    :goto_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
