.class public final enum Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

.field public static final enum AUTO:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

.field public static final enum COOLING:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

.field public static final Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode$Companion;

.field public static final enum DEFROST_FRONT:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

.field public static final enum DEFROST_REAR:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

.field public static final enum HEATING:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

.field public static final enum INNER_LOOP:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

.field public static final enum OUTER_LOOP:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

.field public static final enum SYNC:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

.field public static final enum VENTILATION:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

.field public static final enum WIND_HEAD:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

.field public static final enum WIND_HEAD_LEG:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

.field public static final enum WIND_LEG:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

.field public static final enum WIND_SHIELD:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

.field public static final enum WIND_SHIELD_LEG:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final rawValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    const-string v1, "COOLING"

    const/4 v14, 0x0

    const-string v2, "cooling"

    const-string v3, "Cooling mode"

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->COOLING:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    new-instance v1, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    const-string v2, "HEATING"

    const/4 v3, 0x1

    const-string v4, "heating"

    const-string v5, "Heating mode"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->HEATING:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    const-string v3, "AUTO"

    const/4 v4, 0x2

    const-string v5, "auto"

    const-string v6, "Auto mode"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->AUTO:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    new-instance v3, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    const-string v4, "VENTILATION"

    const/4 v5, 0x3

    const-string v6, "ventilation"

    const-string v7, "Ventilation mode"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->VENTILATION:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    new-instance v4, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    const-string v5, "DEFROST_FRONT"

    const/4 v6, 0x4

    const-string v7, "defrost_front"

    const-string v8, "Front defrost"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->DEFROST_FRONT:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    new-instance v5, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    const-string v6, "DEFROST_REAR"

    const/4 v7, 0x5

    const-string v8, "defrost_rear"

    const-string v9, "Rear defog"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->DEFROST_REAR:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    new-instance v6, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    const-string v7, "INNER_LOOP"

    const/4 v8, 0x6

    const-string v9, "inner_loop"

    const-string v10, "Recirculation"

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->INNER_LOOP:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    new-instance v7, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    const-string v8, "OUTER_LOOP"

    const/4 v9, 0x7

    const-string v10, "outer_loop"

    const-string v11, "Outside air"

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->OUTER_LOOP:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    new-instance v8, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    const-string v9, "WIND_HEAD"

    const/16 v10, 0x8

    const-string v11, "wind_head"

    const-string v12, "Face"

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->WIND_HEAD:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    new-instance v9, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    const-string v10, "WIND_HEAD_LEG"

    const/16 v11, 0x9

    const-string v12, "wind_head_leg"

    const-string v13, "Face and feet"

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->WIND_HEAD_LEG:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    new-instance v10, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    const-string v11, "WIND_LEG"

    const/16 v12, 0xa

    const-string v13, "wind_leg"

    const-string v15, "Feet"

    invoke-direct {v10, v11, v12, v13, v15}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->WIND_LEG:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    new-instance v11, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    const-string v12, "WIND_SHIELD_LEG"

    const/16 v13, 0xb

    const-string v15, "wind_shield_leg"

    const-string v14, "Feet and windshield"

    invoke-direct {v11, v12, v13, v15, v14}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->WIND_SHIELD_LEG:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    new-instance v12, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    const-string v13, "WIND_SHIELD"

    const/16 v14, 0xc

    const-string v15, "wind_shield"

    move-object/from16 v16, v11

    const-string v11, "Windshield"

    invoke-direct {v12, v13, v14, v15, v11}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->WIND_SHIELD:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    new-instance v13, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    const-string v11, "SYNC"

    const/16 v14, 0xd

    const-string v15, "sync"

    move-object/from16 v17, v12

    const-string v12, "Sync mode"

    invoke-direct {v13, v11, v14, v15, v12}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->SYNC:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    filled-new-array/range {v0 .. v13}, [Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->$VALUES:[Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    new-instance v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->rawValue:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->$VALUES:[Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final getRawValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->rawValue:Ljava/lang/String;

    return-object p0
.end method
