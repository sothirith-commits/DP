.class public final enum Lcom/deepalhome/launcher/navigation/model/GridItemType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum AIR_RECYCLE:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum APP:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum DEFROST_FRONT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum DOOR_HANDLE_CLOSE:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum DOOR_HANDLE_OPEN:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum DRAWER:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum FAN_SPEED:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum FUEL_CAP:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum GLOVE_BOX:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum HOME:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum MIRROR_FOLD:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum MIRROR_HEAT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum MUSIC:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum REAR_SEAT_BELT_ALARM:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum SEAT_HEAT_LEFT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum SEAT_HEAT_RIGHT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum SEAT_VENT_LEFT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum SEAT_VENT_RIGHT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum SEPARATOR:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum TEMP_LEFT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum TEMP_LEFT_COMPACT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum TEMP_RIGHT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum TEMP_RIGHT_COMPACT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum TRUNK:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum VOLUME:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public static final enum WIND_DIRECTION:Lcom/deepalhome/launcher/navigation/model/GridItemType;


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    new-instance v0, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v1, "HOME"

    const/4 v2, 0x0

    const-string v3, "home"

    const-string v4, "Home"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->HOME:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v2, "DRAWER"

    const/4 v3, 0x1

    const-string v4, "drawer"

    const-string v5, "All apps"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->DRAWER:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v2, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v3, "APP"

    const/4 v4, 0x2

    const-string v5, "app"

    const-string v6, "Quick apps"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/deepalhome/launcher/navigation/model/GridItemType;->APP:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v3, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v4, "MUSIC"

    const/4 v5, 0x3

    const-string v6, "music"

    const-string v7, "Music control"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/deepalhome/launcher/navigation/model/GridItemType;->MUSIC:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v4, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v5, "TEMP_LEFT"

    const/4 v6, 0x4

    const-string v7, "temp_left"

    const-string v8, "Driver A/C"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/deepalhome/launcher/navigation/model/GridItemType;->TEMP_LEFT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v5, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v6, "TEMP_RIGHT"

    const/4 v7, 0x5

    const-string v8, "temp_right"

    const-string v9, "Passenger A/C"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/deepalhome/launcher/navigation/model/GridItemType;->TEMP_RIGHT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v6, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v7, "TEMP_LEFT_COMPACT"

    const/4 v8, 0x6

    const-string v9, "temp_left_compact"

    const-string v10, "Driver temperature"

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/deepalhome/launcher/navigation/model/GridItemType;->TEMP_LEFT_COMPACT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v7, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v8, "TEMP_RIGHT_COMPACT"

    const/4 v9, 0x7

    const-string v10, "temp_right_compact"

    const-string v11, "Passenger temperature"

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/deepalhome/launcher/navigation/model/GridItemType;->TEMP_RIGHT_COMPACT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v8, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v9, "VOLUME"

    const/16 v10, 0x8

    const-string v11, "volume"

    const-string v12, "Volume"

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/deepalhome/launcher/navigation/model/GridItemType;->VOLUME:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v9, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v10, "FAN_SPEED"

    const/16 v11, 0x9

    const-string v12, "fan_speed"

    const-string v13, "Fan speed adjustment"

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/deepalhome/launcher/navigation/model/GridItemType;->FAN_SPEED:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v10, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v11, "WIND_DIRECTION"

    const/16 v12, 0xa

    const-string v13, "wind_direction"

    const-string v14, "Wind direction switch"

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/deepalhome/launcher/navigation/model/GridItemType;->WIND_DIRECTION:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v11, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v12, "SEAT_VENT_LEFT"

    const/16 v13, 0xb

    const-string v14, "seat_vent_left"

    const-string v15, "Driver ventilation"

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_VENT_LEFT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v12, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v13, "SEAT_VENT_RIGHT"

    const/16 v14, 0xc

    const-string v15, "seat_vent_right"

    move-object/from16 v16, v11

    const-string v11, "Passenger ventilation"

    invoke-direct {v12, v13, v14, v15, v11}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_VENT_RIGHT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v13, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v11, "SEAT_HEAT_LEFT"

    const/16 v14, 0xd

    const-string v15, "seat_heat_left"

    move-object/from16 v17, v12

    const-string v12, "Driver heating"

    invoke-direct {v13, v11, v14, v15, v12}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_HEAT_LEFT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v14, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v11, "SEAT_HEAT_RIGHT"

    const/16 v12, 0xe

    const-string v15, "seat_heat_right"

    move-object/from16 v18, v13

    const-string v13, "Passenger heating"

    invoke-direct {v14, v11, v12, v15, v13}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_HEAT_RIGHT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v15, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v11, "DEFROST_FRONT"

    const/16 v12, 0xf

    const-string v13, "defrost_front"

    move-object/from16 v19, v14

    const-string v14, "Front defrost"

    invoke-direct {v15, v11, v12, v13, v14}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lcom/deepalhome/launcher/navigation/model/GridItemType;->DEFROST_FRONT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v14, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v11, "MIRROR_HEAT"

    const/16 v12, 0x10

    const-string v13, "mirror_heat"

    move-object/from16 v20, v15

    const-string v15, "Rear defog"

    invoke-direct {v14, v11, v12, v13, v15}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lcom/deepalhome/launcher/navigation/model/GridItemType;->MIRROR_HEAT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v15, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v11, "AIR_RECYCLE"

    const/16 v12, 0x11

    const-string v13, "air_recycle"

    move-object/from16 v21, v14

    const-string v14, "Recirculation/Outside air"

    invoke-direct {v15, v11, v12, v13, v14}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lcom/deepalhome/launcher/navigation/model/GridItemType;->AIR_RECYCLE:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v14, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v11, "FUEL_CAP"

    const/16 v12, 0x12

    const-string v13, "fuel_cap"

    move-object/from16 v22, v15

    const-string v15, "Fuel cap"

    invoke-direct {v14, v11, v12, v13, v15}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lcom/deepalhome/launcher/navigation/model/GridItemType;->FUEL_CAP:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v15, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v11, "GLOVE_BOX"

    const/16 v12, 0x13

    const-string v13, "glove_box"

    move-object/from16 v23, v14

    const-string v14, "Glove box"

    invoke-direct {v15, v11, v12, v13, v14}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lcom/deepalhome/launcher/navigation/model/GridItemType;->GLOVE_BOX:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v14, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v11, "DOOR_HANDLE_OPEN"

    const/16 v12, 0x14

    const-string v13, "door_handle_open"

    move-object/from16 v24, v15

    const-string v15, "Extend door handle"

    invoke-direct {v14, v11, v12, v13, v15}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lcom/deepalhome/launcher/navigation/model/GridItemType;->DOOR_HANDLE_OPEN:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v15, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v11, "DOOR_HANDLE_CLOSE"

    const/16 v12, 0x15

    const-string v13, "door_handle_close"

    move-object/from16 v25, v14

    const-string v14, "Retract door handle"

    invoke-direct {v15, v11, v12, v13, v14}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lcom/deepalhome/launcher/navigation/model/GridItemType;->DOOR_HANDLE_CLOSE:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v14, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v11, "MIRROR_FOLD"

    const/16 v12, 0x16

    const-string v13, "mirror_fold"

    move-object/from16 v26, v15

    const-string v15, "Fold rearview mirror"

    invoke-direct {v14, v11, v12, v13, v15}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lcom/deepalhome/launcher/navigation/model/GridItemType;->MIRROR_FOLD:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v15, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v11, "TRUNK"

    const/16 v12, 0x17

    const-string v13, "trunk"

    move-object/from16 v27, v14

    const-string v14, "Trunk"

    invoke-direct {v15, v11, v12, v13, v14}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lcom/deepalhome/launcher/navigation/model/GridItemType;->TRUNK:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v14, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v11, "REAR_SEAT_BELT_ALARM"

    const/16 v12, 0x18

    const-string v13, "rear_seat_belt_alarm"

    move-object/from16 v28, v15

    const-string v15, "Rear seat belt alarm sound"

    invoke-direct {v14, v11, v12, v13, v15}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lcom/deepalhome/launcher/navigation/model/GridItemType;->REAR_SEAT_BELT_ALARM:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    new-instance v15, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const-string v11, "SEPARATOR"

    const/16 v12, 0x19

    const-string v13, "separator"

    move-object/from16 v29, v14

    const-string v14, "Separator"

    invoke-direct {v15, v11, v12, v13, v14}, Lcom/deepalhome/launcher/navigation/model/GridItemType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEPARATOR:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v16, v21

    move-object/from16 v18, v23

    move-object/from16 v21, v25

    move-object/from16 v23, v27

    move-object/from16 v25, v29

    move-object/from16 v14, v19

    move-object/from16 v17, v22

    move-object/from16 v19, v24

    move-object/from16 v22, v26

    move-object/from16 v24, v28

    move-object/from16 v26, v15

    move-object/from16 v15, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    filled-new-array/range {v0 .. v25}, [Lcom/deepalhome/launcher/navigation/model/GridItemType;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->$VALUES:[Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->key:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/model/GridItemType;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/navigation/model/GridItemType;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/navigation/model/GridItemType;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->$VALUES:[Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/navigation/model/GridItemType;

    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->key:Ljava/lang/String;

    return-object p0
.end method
