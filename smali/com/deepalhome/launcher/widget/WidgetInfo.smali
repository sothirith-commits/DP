.class public final Lcom/deepalhome/launcher/widget/WidgetInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;


# instance fields
.field public final className:Ljava/lang/String;

.field public data:Ljava/lang/Object;

.field public final id:I

.field public final location:Lcom/deepalhome/launcher/widget/WidgetLocation;

.field public style:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

.field public transient widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/widget/WidgetInfo;->Companion:Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;IILandroid/graphics/Point;I)V
    .locals 3

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p3, v1

    :cond_0
    and-int/lit8 v0, p7, 0x8

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move p4, v2

    :cond_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move p5, v2

    :cond_2
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_3

    new-instance p6, Landroid/graphics/Point;

    const/4 p7, 0x0

    invoke-direct {p6, p7, p7}, Landroid/graphics/Point;-><init>(II)V

    :cond_3
    const-string p7, "className"

    invoke-static {p7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p7, "point"

    invoke-static {p7, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->id:I

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->className:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->data:Ljava/lang/Object;

    iput-object v1, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->style:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    new-instance p1, Lcom/deepalhome/launcher/widget/WidgetLocation;

    invoke-direct {p1, p4, p5, p6}, Lcom/deepalhome/launcher/widget/WidgetLocation;-><init>(IILandroid/graphics/Point;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->location:Lcom/deepalhome/launcher/widget/WidgetLocation;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/deepalhome/launcher/widget/WidgetInfo;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.deepalhome.launcher.widget.WidgetInfo"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Lcom/deepalhome/launcher/widget/WidgetInfo;

    iget v1, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->id:I

    iget v3, p1, Lcom/deepalhome/launcher/widget/WidgetInfo;->id:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->className:Ljava/lang/String;

    iget-object p1, p1, Lcom/deepalhome/launcher/widget/WidgetInfo;->className:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getOrCreateStyle()Lcom/deepalhome/launcher/widget/WidgetStyleConfig;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->style:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->sanitize()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->style:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    return-object v0
.end method

.method public final getWidgetView(Landroid/content/Context;)Lcom/deepalhome/launcher/widget/BaseWidgetView;
    .locals 6

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->className:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p1, :cond_16

    :cond_4
    const-class v0, Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x2

    if-eqz v0, :cond_5

    new-instance v0, Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;

    invoke-direct {v0, p1, v1, v4, v1}, Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    goto/16 :goto_3

    :cond_5
    const-class v0, Lcom/deepalhome/launcher/app/AppShortcutWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/deepalhome/launcher/app/AppShortcutWidgetView;

    invoke-direct {v0, p1, v1, v4, v1}, Lcom/deepalhome/launcher/app/AppShortcutWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->data:Ljava/lang/Object;

    invoke-static {}, Lcom/blankj/utilcode/util/GsonUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/blankj/utilcode/util/GsonUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v4

    const-class v5, Lcom/deepalhome/launcher/app/App;

    invoke-virtual {v4, v5, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/app/App;

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/app/AppShortcutWidgetView;->setApp(Lcom/deepalhome/launcher/app/App;)V

    goto/16 :goto_3

    :cond_6
    const-class v0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;

    invoke-direct {v0, p1, v1, v4, v1}, Lcom/deepalhome/launcher/weather/WeatherWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    goto/16 :goto_3

    :cond_7
    const-class v0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    invoke-direct {v0, p1, v1}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    goto/16 :goto_3

    :cond_8
    const-class v0, Lcom/deepalhome/launcher/time/TimeWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/deepalhome/launcher/time/TimeWidgetView;

    invoke-direct {v0, p1, v1, v4, v1}, Lcom/deepalhome/launcher/time/TimeWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    goto/16 :goto_3

    :cond_9
    const-class v0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-direct {v0, p1, v1}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    goto/16 :goto_3

    :cond_a
    const-class v0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;

    invoke-direct {v0, p1, v1}, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    goto/16 :goto_3

    :cond_b
    const-class v0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-direct {v0, p1, v1}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    goto/16 :goto_3

    :cond_c
    const-class v0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;

    invoke-direct {v0, p1, v1}, Lcom/deepalhome/launcher/widget/RecentAppsWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    goto/16 :goto_3

    :cond_d
    const-class v0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;

    invoke-direct {v0, p1, v1}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    goto/16 :goto_3

    :cond_e
    const-class v0, Lcom/deepalhome/launcher/widget/TirePressureWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/deepalhome/launcher/widget/TirePressureWidgetView;

    invoke-direct {v0, p1, v1}, Lcom/deepalhome/launcher/widget/TirePressureWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    goto/16 :goto_3

    :cond_f
    const-class v0, Lcom/deepalhome/launcher/widget/RangeWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/deepalhome/launcher/widget/RangeWidgetView;

    invoke-direct {v0, p1, v1}, Lcom/deepalhome/launcher/widget/RangeWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    goto/16 :goto_3

    :cond_10
    const-class v0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;

    invoke-direct {v0, p1, v1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    goto :goto_3

    :cond_11
    const-class v0, Lcom/deepalhome/launcher/widget/ImageWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/deepalhome/launcher/widget/ImageWidgetView;

    invoke-direct {v0, p1, v1, v4, v1}, Lcom/deepalhome/launcher/widget/ImageWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    goto :goto_3

    :cond_12
    const-class v0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Lcom/deepalhome/launcher/widget/MagiskWidgetView;

    invoke-direct {v0, p1, v1}, Lcom/deepalhome/launcher/widget/MagiskWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    goto :goto_3

    :cond_13
    const-class v0, Lcom/deepalhome/launcher/time/CompassClockWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/deepalhome/launcher/time/CompassClockWidgetView;

    invoke-direct {v0, p1, v1}, Lcom/deepalhome/launcher/time/CompassClockWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    goto :goto_3

    :cond_14
    const-class v0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;

    invoke-direct {v0, p1, v1}, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    goto :goto_3

    :cond_15
    new-instance v0, Lcom/deepalhome/launcher/time/TimeWidgetView;

    invoke-direct {v0, p1, v1, v4, v1}, Lcom/deepalhome/launcher/time/TimeWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    :goto_3
    iput-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    :cond_16
    iget-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    if-nez p1, :cond_17

    goto :goto_4

    :cond_17
    invoke-virtual {p1, v2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setPreview(Z)V

    :goto_4
    iget-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->location:Lcom/deepalhome/launcher/widget/WidgetLocation;

    if-nez p1, :cond_18

    goto :goto_5

    :cond_18
    iget v2, v0, Lcom/deepalhome/launcher/widget/WidgetLocation;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, v0, Lcom/deepalhome/launcher/widget/WidgetLocation;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/deepalhome/launcher/widget/WidgetInfo;->Companion:Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2, v4}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->buildWidgetClipLabel(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_5
    iget-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    instance-of v2, p1, Lcom/deepalhome/launcher/widget/ImageWidgetView;

    if-eqz v2, :cond_19

    check-cast p1, Lcom/deepalhome/launcher/widget/ImageWidgetView;

    goto :goto_6

    :cond_19
    move-object p1, v1

    :goto_6
    if-eqz p1, :cond_1a

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/widget/ImageWidgetView;->bindWidgetInfo(Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    :cond_1a
    iget-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    instance-of v2, p1, Lcom/deepalhome/launcher/widget/MiTempWidgetView;

    if-eqz v2, :cond_1b

    check-cast p1, Lcom/deepalhome/launcher/widget/MiTempWidgetView;

    goto :goto_7

    :cond_1b
    move-object p1, v1

    :goto_7
    if-eqz p1, :cond_1c

    iput-object p0, p1, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v2

    if-nez v2, :cond_1c

    sget-object v2, Lcom/deepalhome/mitemp/MiTemp;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/deepalhome/mitemp/MiTemp;->_deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->refreshContent(Ljava/util/List;)V

    :cond_1c
    iget-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    instance-of v2, p1, Lcom/deepalhome/launcher/time/CompassClockWidgetView;

    if-eqz v2, :cond_1d

    check-cast p1, Lcom/deepalhome/launcher/time/CompassClockWidgetView;

    goto :goto_8

    :cond_1d
    move-object p1, v1

    :goto_8
    if-eqz p1, :cond_1e

    iput-object p0, p1, Lcom/deepalhome/launcher/time/CompassClockWidgetView;->widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v2, Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu;->INSTANCE:Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/CompassClockWidgetViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/CompassClockWidgetViewBinding;->compassClockView:Lcom/deepalhome/launcher/time/CompassClockView;

    const-string v3, "compassClockView"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, v0, Lcom/deepalhome/launcher/widget/WidgetLocation;->width:I

    iget v4, v0, Lcom/deepalhome/launcher/widget/WidgetLocation;->height:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3, v4}, Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu;->applySquareContentSize(Landroid/view/View;II)V

    :cond_1e
    iget-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    instance-of v2, p1, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;

    if-eqz v2, :cond_1f

    check-cast p1, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;

    goto :goto_9

    :cond_1f
    move-object p1, v1

    :goto_9
    if-eqz p1, :cond_20

    iput-object p0, p1, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    sget-object v2, Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu;->INSTANCE:Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;->lunarCompassClockView:Lcom/deepalhome/launcher/time/LunarCompassClockView;

    const-string v3, "lunarCompassClockView"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v3, v0, Lcom/deepalhome/launcher/widget/WidgetLocation;->width:I

    iget v0, v0, Lcom/deepalhome/launcher/widget/WidgetLocation;->height:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3, v0}, Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu;->applySquareContentSize(Landroid/view/View;II)V

    :cond_20
    iget-object p1, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    instance-of v0, p1, Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;

    if-eqz v0, :cond_21

    move-object v1, p1

    check-cast v1, Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;

    :cond_21
    if-eqz v1, :cond_22

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/WidgetInfo;->getOrCreateStyle()Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;->applyWidgetStyle(Lcom/deepalhome/launcher/widget/WidgetStyleConfig;)V

    :cond_22
    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->widgetView:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/WidgetInfo;->className:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
