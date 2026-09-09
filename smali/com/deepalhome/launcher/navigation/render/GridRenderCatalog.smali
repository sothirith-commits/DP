.class public final Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final environment:Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;

.field public final renderers:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;)V
    .locals 29

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->environment:Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->HOME:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$HomeRenderer;

    invoke-direct {v2}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$HomeRenderer;-><init>()V

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->DRAWER:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$DrawerRenderer;

    invoke-direct {v2}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$DrawerRenderer;-><init>()V

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->APP:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$AppRenderer;

    invoke-direct {v2}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$AppRenderer;-><init>()V

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->MUSIC:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$MusicRenderer;

    invoke-direct {v2}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$MusicRenderer;-><init>()V

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->TEMP_LEFT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;

    sget-object v7, Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;->LEFT:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;I)V

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->TEMP_RIGHT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;

    sget-object v9, Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;->RIGHT:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    const/4 v10, 0x0

    invoke-direct {v2, v9, v10}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;I)V

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->TEMP_LEFT_COMPACT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;

    const/4 v11, 0x1

    invoke-direct {v2, v7, v11}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;I)V

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->TEMP_RIGHT_COMPACT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;

    const/4 v7, 0x1

    invoke-direct {v2, v9, v7}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$TemperatureRenderer;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;I)V

    new-instance v12, Lkotlin/Pair;

    invoke-direct {v12, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->VOLUME:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$VolumeRenderer;

    invoke-direct {v2}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$VolumeRenderer;-><init>()V

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->FAN_SPEED:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/FanSpeedQuickActionRenderer;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/deepalhome/launcher/navigation/render/FanSpeedQuickActionRenderer;-><init>(I)V

    new-instance v14, Lkotlin/Pair;

    invoke-direct {v14, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->WIND_DIRECTION:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/FanSpeedQuickActionRenderer;

    const/4 v7, 0x1

    invoke-direct {v2, v7}, Lcom/deepalhome/launcher/navigation/render/FanSpeedQuickActionRenderer;-><init>(I)V

    new-instance v15, Lkotlin/Pair;

    invoke-direct {v15, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_VENT_LEFT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;

    const/4 v7, 0x2

    invoke-direct {v2, v1, v7}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;I)V

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_VENT_RIGHT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;

    const/4 v7, 0x2

    invoke-direct {v2, v1, v7}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_HEAT_LEFT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;

    move-object/from16 p1, v7

    const/4 v7, 0x2

    invoke-direct {v2, v1, v7}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_HEAT_RIGHT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;

    move-object/from16 v16, v7

    const/4 v7, 0x2

    invoke-direct {v2, v1, v7}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->DEFROST_FRONT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;

    move-object/from16 v17, v7

    const/4 v7, 0x1

    invoke-direct {v2, v1, v7}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->MIRROR_HEAT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;

    move-object/from16 v18, v7

    const/4 v7, 0x1

    invoke-direct {v2, v1, v7}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->AIR_RECYCLE:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;

    move-object/from16 v19, v7

    const/4 v7, 0x1

    invoke-direct {v2, v1, v7}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->FUEL_CAP:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;

    move-object/from16 v20, v7

    const/4 v7, 0x0

    invoke-direct {v2, v1, v7}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->GLOVE_BOX:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;

    move-object/from16 v21, v7

    const/4 v7, 0x0

    invoke-direct {v2, v1, v7}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->DOOR_HANDLE_OPEN:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;

    move-object/from16 v22, v7

    const/4 v7, 0x0

    invoke-direct {v2, v1, v7}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->DOOR_HANDLE_CLOSE:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;

    move-object/from16 v23, v7

    const/4 v7, 0x0

    invoke-direct {v2, v1, v7}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->MIRROR_FOLD:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;

    move-object/from16 v24, v7

    const/4 v7, 0x0

    invoke-direct {v2, v1, v7}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->TRUNK:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;

    move-object/from16 v25, v7

    const/4 v7, 0x0

    invoke-direct {v2, v1, v7}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->REAR_SEAT_BELT_ALARM:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;

    move-object/from16 v26, v7

    const/4 v7, 0x0

    invoke-direct {v2, v1, v7}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$BodyQuickActionRenderer;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;I)V

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEPARATOR:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$SeparatorRenderer;

    invoke-direct {v2}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog$SeparatorRenderer;-><init>()V

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v1, p1

    move-object/from16 v27, v7

    move-object/from16 v2, v16

    move-object v7, v8

    move-object v8, v10

    move-object/from16 v16, v9

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v16

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v28, v0

    filled-new-array/range {v3 .. v28}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->renderers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final bind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;)V
    .locals 3

    const-string v0, "view"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "item"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "mode"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p2, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->renderer(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/render/GridItemRenderer;

    move-result-object v1

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->environment:Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/deepalhome/launcher/navigation/render/GridItemRenderer;->bind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;Lcom/deepalhome/launcher/navigation/render/GridRenderEnvironment;)V

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->renderer(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/render/GridItemRenderer;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    invoke-interface {p0, p1, p2, v0, p3}, Lcom/deepalhome/launcher/navigation/render/GridItemRenderer;->updateUIMode(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;ZLcom/deepalhome/launcher/navigation/render/RenderMode;)V

    return-void
.end method

.method public final renderer(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/render/GridItemRenderer;
    .locals 1

    const-string v0, "type"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->renderers:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/collections/MapsKt__MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/navigation/render/GridItemRenderer;

    return-object p0
.end method

.method public final unbind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;)V
    .locals 1

    const-string v0, "item"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "mode"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p2, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->renderer(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/render/GridItemRenderer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/deepalhome/launcher/navigation/render/GridItemRenderer;->unbind(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;Lcom/deepalhome/launcher/navigation/render/RenderMode;)V

    return-void
.end method

.method public final updateUIMode(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;ZLcom/deepalhome/launcher/navigation/render/RenderMode;)V
    .locals 1

    const-string v0, "item"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "mode"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p2, Lcom/deepalhome/launcher/navigation/model/GridItem;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/render/GridRenderCatalog;->renderer(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/render/GridItemRenderer;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/navigation/render/GridItemRenderer;->updateUIMode(Landroid/view/View;Lcom/deepalhome/launcher/navigation/model/GridItem;ZLcom/deepalhome/launcher/navigation/render/RenderMode;)V

    return-void
.end method
