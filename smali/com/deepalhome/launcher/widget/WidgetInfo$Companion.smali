.class public final Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;-><init>()V

    return-void
.end method

.method public static buildWidgetClipLabel(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 6

    const-string v0, "className"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "|"

    const/4 v2, 0x0

    const/16 v5, 0x3e

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string p1, "WIDGET_CLIP_DATA"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createWidgetInfo$default(Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Integer;I)Lcom/deepalhome/launcher/widget/WidgetInfo;
    .locals 11

    move-object v2, p1

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, p3

    :goto_1
    and-int/lit8 v4, p5, 0x8

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, p4

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "className"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v5, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/IdUtil;->getIntId()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v9, Landroid/graphics/Point;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->getRightX(I)I

    move-result v0

    invoke-direct {v9, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const/16 v10, 0x40

    move-object v0, v8

    move v1, v5

    move-object v2, p1

    move v4, v6

    move v5, v7

    move-object v6, v9

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    goto/16 :goto_4

    :cond_3
    const-class v0, Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_4

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v0, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/IdUtil;->getIntId()I

    move-result v3

    new-instance v6, Landroid/graphics/Point;

    invoke-static {v1}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->getRightX(I)I

    move-result v0

    invoke-direct {v6, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x3

    const/16 v7, 0x44

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object v0, v8

    move v1, v3

    move-object v2, p1

    move-object v3, v5

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    goto/16 :goto_4

    :cond_4
    const-class v0, Lcom/deepalhome/launcher/app/AppShortcutWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v0, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/IdUtil;->getIntId()I

    move-result v1

    const/4 v5, 0x1

    const/16 v7, 0x60

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    goto/16 :goto_4

    :cond_5
    const-class v0, Lcom/deepalhome/launcher/time/TimeWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v0, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/IdUtil;->getIntId()I

    move-result v3

    new-instance v6, Landroid/graphics/Point;

    invoke-static {v1}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->getRightX(I)I

    move-result v0

    invoke-direct {v6, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x3

    const/16 v7, 0x44

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object v0, v8

    move v1, v3

    move-object v2, p1

    move-object v3, v5

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    goto/16 :goto_4

    :cond_6
    const-class v0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_7

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v0, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/IdUtil;->getIntId()I

    move-result v1

    new-instance v6, Landroid/graphics/Point;

    invoke-static {v5}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->getRightX(I)I

    move-result v0

    invoke-direct {v6, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x2

    const/16 v7, 0x44

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    goto/16 :goto_4

    :cond_7
    const-class v0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v0, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/IdUtil;->getIntId()I

    move-result v3

    new-instance v6, Landroid/graphics/Point;

    invoke-static {v1}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->getRightX(I)I

    move-result v0

    invoke-direct {v6, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x3

    const/16 v7, 0x44

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object v0, v8

    move v1, v3

    move-object v2, p1

    move-object v3, v5

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    goto/16 :goto_4

    :cond_8
    const-class v0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v0, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/IdUtil;->getIntId()I

    move-result v3

    new-instance v6, Landroid/graphics/Point;

    invoke-static {v1}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->getRightX(I)I

    move-result v0

    invoke-direct {v6, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x3

    const/16 v7, 0x44

    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object v0, v8

    move v1, v3

    move-object v2, p1

    move-object v3, v5

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    goto/16 :goto_4

    :cond_9
    const-class v0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v0, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/IdUtil;->getIntId()I

    move-result v3

    new-instance v6, Landroid/graphics/Point;

    invoke-static {v1}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->getRightX(I)I

    move-result v0

    invoke-direct {v6, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x3

    const/16 v7, 0x44

    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object v0, v8

    move v1, v3

    move-object v2, p1

    move-object v3, v5

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    goto/16 :goto_4

    :cond_a
    const-class v0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v0, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/IdUtil;->getIntId()I

    move-result v3

    new-instance v6, Landroid/graphics/Point;

    invoke-static {v1}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->getRightX(I)I

    move-result v0

    invoke-direct {v6, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x3

    const/16 v7, 0x44

    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object v0, v8

    move v1, v3

    move-object v2, p1

    move-object v3, v5

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    goto/16 :goto_4

    :cond_b
    const-class v0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v0, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/IdUtil;->getIntId()I

    move-result v3

    new-instance v6, Landroid/graphics/Point;

    invoke-static {v1}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->getRightX(I)I

    move-result v0

    invoke-direct {v6, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x3

    const/16 v7, 0x44

    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object v0, v8

    move v1, v3

    move-object v2, p1

    move-object v3, v5

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    goto/16 :goto_4

    :cond_c
    const-class v0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v0, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/IdUtil;->getIntId()I

    move-result v3

    new-instance v6, Landroid/graphics/Point;

    invoke-static {v1}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->getRightX(I)I

    move-result v0

    invoke-direct {v6, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x3

    const/16 v7, 0x44

    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object v0, v8

    move v1, v3

    move-object v2, p1

    move-object v3, v5

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    goto/16 :goto_4

    :cond_d
    const-class v0, Lcom/deepalhome/launcher/widget/TirePressureWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v0, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/IdUtil;->getIntId()I

    move-result v3

    new-instance v6, Landroid/graphics/Point;

    invoke-static {v1}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->getRightX(I)I

    move-result v0

    invoke-direct {v6, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x3

    const/16 v7, 0x44

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object v0, v8

    move v1, v3

    move-object v2, p1

    move-object v3, v5

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    goto/16 :goto_4

    :cond_e
    const-class v0, Lcom/deepalhome/launcher/widget/RangeWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_11

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v0, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/IdUtil;->getIntId()I

    move-result v3

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_3

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_10

    move v5, v6

    :cond_10
    :goto_3
    new-instance v6, Landroid/graphics/Point;

    invoke-static {v1}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->getRightX(I)I

    move-result v0

    invoke-direct {v6, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x0

    const/16 v7, 0x44

    const/4 v9, 0x3

    move-object v0, v8

    move v1, v3

    move-object v2, p1

    move-object v3, v4

    move v4, v9

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    goto/16 :goto_4

    :cond_11
    const-class v0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v0, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/IdUtil;->getIntId()I

    move-result v1

    new-instance v6, Landroid/graphics/Point;

    invoke-static {v5}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->getRightX(I)I

    move-result v0

    invoke-direct {v6, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x2

    const/16 v7, 0x44

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    goto/16 :goto_4

    :cond_12
    const-class v0, Lcom/deepalhome/launcher/widget/ImageWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v0, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/IdUtil;->getIntId()I

    move-result v1

    new-instance v7, Landroid/graphics/Point;

    invoke-static {v6}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->getRightX(I)I

    move-result v0

    invoke-direct {v7, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x1

    const/16 v9, 0x40

    const/4 v5, 0x1

    move-object v0, v8

    move-object v2, p1

    move-object v6, v7

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    goto/16 :goto_4

    :cond_13
    const-class v0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v0, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/IdUtil;->getIntId()I

    move-result v1

    new-instance v7, Landroid/graphics/Point;

    invoke-static {v6}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->getRightX(I)I

    move-result v0

    invoke-direct {v7, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x1

    const/16 v9, 0x44

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v8

    move-object v2, p1

    move-object v6, v7

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    goto/16 :goto_4

    :cond_14
    const-class v0, Lcom/deepalhome/launcher/time/CompassClockWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v0, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/IdUtil;->getIntId()I

    move-result v3

    new-instance v6, Landroid/graphics/Point;

    invoke-static {v1}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->getRightX(I)I

    move-result v0

    invoke-direct {v6, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x3

    const/16 v7, 0x44

    const/4 v5, 0x0

    const/4 v9, 0x3

    move-object v0, v8

    move v1, v3

    move-object v2, p1

    move-object v3, v5

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    goto :goto_4

    :cond_15
    const-class v0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v0, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/IdUtil;->getIntId()I

    move-result v1

    new-instance v6, Landroid/graphics/Point;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->getRightX(I)I

    move-result v0

    invoke-direct {v6, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x5

    const/16 v7, 0x44

    const/4 v3, 0x0

    const/4 v5, 0x5

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    goto :goto_4

    :cond_16
    new-instance v8, Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v0, Lcom/deepalhome/launcher/util/IdUtil;->INSTANCE:Lcom/deepalhome/launcher/util/IdUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/IdUtil;->getIntId()I

    move-result v3

    new-instance v6, Landroid/graphics/Point;

    invoke-static {v1}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->getRightX(I)I

    move-result v0

    invoke-direct {v6, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x3

    const/16 v7, 0x44

    const/4 v5, 0x0

    const/4 v9, 0x2

    move-object v0, v8

    move v1, v3

    move-object v2, p1

    move-object v3, v5

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/widget/WidgetInfo;-><init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V

    :goto_4
    return-object v8
.end method

.method public static getRightX(I)I
    .locals 4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v2

    sget-object v3, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v3

    if-eqz v3, :cond_0

    div-int/2addr v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0700a7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    div-int/2addr v2, v1

    :goto_0
    sub-int/2addr v2, p0

    if-gez v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    return v2
.end method

.method public static isWidgetClassSupported(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "className"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-class v0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getType()Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v2, :cond_5

    :cond_1
    :goto_0
    move v1, v2

    goto :goto_2

    :cond_2
    const-class v0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-class v0, Lcom/deepalhome/launcher/widget/RangeWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-class v0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_1
    sget-object p0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    :goto_2
    return v1
.end method
