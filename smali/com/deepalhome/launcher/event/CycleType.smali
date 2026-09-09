.class public final enum Lcom/deepalhome/launcher/event/CycleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/event/CycleType;

.field public static final enum COCKPIT_MODE:Lcom/deepalhome/launcher/event/CycleType;

.field public static final Companion:Lcom/deepalhome/launcher/event/CycleType$Companion;

.field public static final enum DRIVE_MODE:Lcom/deepalhome/launcher/event/CycleType;

.field public static final enum POWER_MODE:Lcom/deepalhome/launcher/event/CycleType;

.field public static final enum SCREEN_BRIGHTNESS:Lcom/deepalhome/launcher/event/CycleType;

.field public static final enum SEAT_HEATING:Lcom/deepalhome/launcher/event/CycleType;

.field public static final enum SEAT_VENTILATION:Lcom/deepalhome/launcher/event/CycleType;

.field public static final enum THEME_MODE:Lcom/deepalhome/launcher/event/CycleType;

.field public static final enum WIND_DIRECTION:Lcom/deepalhome/launcher/event/CycleType;


# instance fields
.field private final descriptionRes:I

.field private final displayNameRes:I

.field private final iconRes:I

.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    new-instance v7, Lcom/deepalhome/launcher/event/CycleType;

    const-string v3, "drive_mode"

    const v4, 0x7f1300e7

    const-string v1, "DRIVE_MODE"

    const/4 v2, 0x0

    const v5, 0x7f1300e8

    const v6, 0x7f0800e8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/launcher/event/CycleType;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v7, Lcom/deepalhome/launcher/event/CycleType;->DRIVE_MODE:Lcom/deepalhome/launcher/event/CycleType;

    new-instance v1, Lcom/deepalhome/launcher/event/CycleType;

    const-string v11, "power_mode"

    const v12, 0x7f1300f1

    const-string v9, "POWER_MODE"

    const/4 v10, 0x1

    const v13, 0x7f1300f2

    const v14, 0x7f0800dd

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lcom/deepalhome/launcher/event/CycleType;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v1, Lcom/deepalhome/launcher/event/CycleType;->POWER_MODE:Lcom/deepalhome/launcher/event/CycleType;

    new-instance v2, Lcom/deepalhome/launcher/event/CycleType;

    const-string v18, "theme_mode"

    const v19, 0x7f1300fc

    const-string v16, "THEME_MODE"

    const/16 v17, 0x2

    const v20, 0x7f1300fd

    const v21, 0x7f0800cd

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Lcom/deepalhome/launcher/event/CycleType;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v2, Lcom/deepalhome/launcher/event/CycleType;->THEME_MODE:Lcom/deepalhome/launcher/event/CycleType;

    new-instance v3, Lcom/deepalhome/launcher/event/CycleType;

    const-string v11, "cockpit_mode"

    const v12, 0x7f1300e5

    const-string v9, "COCKPIT_MODE"

    const/4 v10, 0x3

    const v13, 0x7f1300e6

    const v14, 0x7f0800e1

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lcom/deepalhome/launcher/event/CycleType;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/deepalhome/launcher/event/CycleType;->COCKPIT_MODE:Lcom/deepalhome/launcher/event/CycleType;

    new-instance v4, Lcom/deepalhome/launcher/event/CycleType;

    const-string v18, "wallpaper"

    const v19, 0x7f1300fe

    const-string v16, "WALLPAPER"

    const/16 v17, 0x4

    const v20, 0x7f1300ff

    const v21, 0x7f0800cc

    move-object v15, v4

    invoke-direct/range {v15 .. v21}, Lcom/deepalhome/launcher/event/CycleType;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v5, Lcom/deepalhome/launcher/event/CycleType;

    const-string v11, "fan_speed"

    const v12, 0x7f1300e9

    const-string v9, "FAN_SPEED"

    const/4 v10, 0x5

    const v13, 0x7f1300ea

    const v14, 0x7f08010d

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lcom/deepalhome/launcher/event/CycleType;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v6, Lcom/deepalhome/launcher/event/CycleType;

    const-string v18, "wind_direction"

    const v19, 0x7f130100

    const-string v16, "WIND_DIRECTION"

    const/16 v17, 0x6

    const v20, 0x7f130101

    const v21, 0x7f08017e

    move-object v15, v6

    invoke-direct/range {v15 .. v21}, Lcom/deepalhome/launcher/event/CycleType;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v6, Lcom/deepalhome/launcher/event/CycleType;->WIND_DIRECTION:Lcom/deepalhome/launcher/event/CycleType;

    new-instance v15, Lcom/deepalhome/launcher/event/CycleType;

    const-string v11, "temperature"

    const v12, 0x7f1300fa

    const-string v9, "TEMPERATURE"

    const/4 v10, 0x7

    const v13, 0x7f1300fb

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lcom/deepalhome/launcher/event/CycleType;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v8, Lcom/deepalhome/launcher/event/CycleType;

    const-string v19, "seat_ventilation"

    const v20, 0x7f1300f7

    const-string v17, "SEAT_VENTILATION"

    const/16 v18, 0x8

    const v21, 0x7f1300f8

    const v22, 0x7f080123

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v22}, Lcom/deepalhome/launcher/event/CycleType;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v8, Lcom/deepalhome/launcher/event/CycleType;->SEAT_VENTILATION:Lcom/deepalhome/launcher/event/CycleType;

    new-instance v9, Lcom/deepalhome/launcher/event/CycleType;

    const-string v26, "seat_heating"

    const v27, 0x7f1300f5

    const-string v24, "SEAT_HEATING"

    const/16 v25, 0x9

    const v28, 0x7f1300f6

    const v29, 0x7f080115

    move-object/from16 v23, v9

    invoke-direct/range {v23 .. v29}, Lcom/deepalhome/launcher/event/CycleType;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v9, Lcom/deepalhome/launcher/event/CycleType;->SEAT_HEATING:Lcom/deepalhome/launcher/event/CycleType;

    new-instance v10, Lcom/deepalhome/launcher/event/CycleType;

    const-string v19, "screen_brightness"

    const v20, 0x7f1300f3

    const-string v17, "SCREEN_BRIGHTNESS"

    const/16 v18, 0xa

    const v21, 0x7f1300f4

    const v22, 0x7f0800d8

    move-object/from16 v16, v10

    invoke-direct/range {v16 .. v22}, Lcom/deepalhome/launcher/event/CycleType;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v10, Lcom/deepalhome/launcher/event/CycleType;->SCREEN_BRIGHTNESS:Lcom/deepalhome/launcher/event/CycleType;

    new-instance v11, Lcom/deepalhome/launcher/event/CycleType;

    const-string v26, "music_switch"

    const v27, 0x7f1300ed

    const-string v24, "MUSIC_SWITCH"

    const/16 v25, 0xb

    const v28, 0x7f1300ee

    const v29, 0x7f0800db

    move-object/from16 v23, v11

    invoke-direct/range {v23 .. v29}, Lcom/deepalhome/launcher/event/CycleType;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v12, Lcom/deepalhome/launcher/event/CycleType;

    const-string v19, "media_volume"

    const v20, 0x7f1300eb

    const-string v17, "MEDIA_VOLUME"

    const/16 v18, 0xc

    const v21, 0x7f1300ec

    const v22, 0x7f0801aa

    move-object/from16 v16, v12

    invoke-direct/range {v16 .. v22}, Lcom/deepalhome/launcher/event/CycleType;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    new-instance v13, Lcom/deepalhome/launcher/event/CycleType;

    const-string v26, "navigation_volume"

    const v27, 0x7f1300ef

    const-string v24, "NAVIGATION_VOLUME"

    const/16 v25, 0xd

    const v28, 0x7f1300f0

    const v29, 0x7f0801f0

    move-object/from16 v23, v13

    invoke-direct/range {v23 .. v29}, Lcom/deepalhome/launcher/event/CycleType;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    move-object v0, v7

    move-object v7, v15

    filled-new-array/range {v0 .. v13}, [Lcom/deepalhome/launcher/event/CycleType;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/event/CycleType;->$VALUES:[Lcom/deepalhome/launcher/event/CycleType;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/event/CycleType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    new-instance v0, Lcom/deepalhome/launcher/event/CycleType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/event/CycleType$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/event/CycleType;->Companion:Lcom/deepalhome/launcher/event/CycleType$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/deepalhome/launcher/event/CycleType;->key:Ljava/lang/String;

    iput p4, p0, Lcom/deepalhome/launcher/event/CycleType;->displayNameRes:I

    iput p5, p0, Lcom/deepalhome/launcher/event/CycleType;->descriptionRes:I

    iput p6, p0, Lcom/deepalhome/launcher/event/CycleType;->iconRes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/event/CycleType;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/event/CycleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/event/CycleType;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/event/CycleType;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/event/CycleType;->$VALUES:[Lcom/deepalhome/launcher/event/CycleType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/event/CycleType;

    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    iget p0, p0, Lcom/deepalhome/launcher/event/CycleType;->displayNameRes:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getIconRes()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/event/CycleType;->iconRes:I

    return p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/event/CycleType;->key:Ljava/lang/String;

    return-object p0
.end method
