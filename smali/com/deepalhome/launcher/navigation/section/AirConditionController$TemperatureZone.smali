.class public final enum Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

.field public static final enum LEFT:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

.field public static final enum RIGHT:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;


# instance fields
.field private final position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    sget-object v1, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_LEFT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    const-string v2, "LEFT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;-><init>(Ljava/lang/String;ILcom/deepalhome/launcher/hvac/HvacCommand$Position;)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;->LEFT:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    new-instance v1, Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    sget-object v2, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_RIGHT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    const-string v3, "RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;-><init>(Ljava/lang/String;ILcom/deepalhome/launcher/hvac/HvacCommand$Position;)V

    sput-object v1, Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;->RIGHT:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    filled-new-array {v0, v1}, [Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;->$VALUES:[Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/deepalhome/launcher/hvac/HvacCommand$Position;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;->$VALUES:[Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    return-object v0
.end method


# virtual methods
.method public final getPosition()Lcom/deepalhome/launcher/hvac/HvacCommand$Position;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    return-object p0
.end method
