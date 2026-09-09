.class public final enum Lcom/deepalhome/launcher/navigation/AirConditionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/navigation/AirConditionMode;

.field public static final enum AUTO:Lcom/deepalhome/launcher/navigation/AirConditionMode;

.field public static final enum COOLING:Lcom/deepalhome/launcher/navigation/AirConditionMode;

.field public static final Companion:Lcom/deepalhome/launcher/navigation/AirConditionMode$Companion;

.field public static final enum HEATING:Lcom/deepalhome/launcher/navigation/AirConditionMode;

.field public static final enum VENTILATION:Lcom/deepalhome/launcher/navigation/AirConditionMode;

.field public static final ordered:Ljava/util/List;


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final iconRes:I

.field private final temperatureIndicatorColorRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Lcom/deepalhome/launcher/navigation/AirConditionMode;

    const/4 v1, 0x0

    const-string v5, "Auto"

    const-string v4, "AUTO"

    const v2, 0x7f080181

    const v3, 0x7f060041

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/navigation/AirConditionMode;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/deepalhome/launcher/navigation/AirConditionMode;->AUTO:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    new-instance v0, Lcom/deepalhome/launcher/navigation/AirConditionMode;

    const/4 v8, 0x1

    const-string v12, "Cooling"

    const-string v11, "COOLING"

    const v9, 0x7f080182

    const v10, 0x7f060042

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/navigation/AirConditionMode;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/AirConditionMode;->COOLING:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    new-instance v1, Lcom/deepalhome/launcher/navigation/AirConditionMode;

    const/4 v14, 0x2

    const-string v18, "Heating"

    const-string v17, "HEATING"

    const v15, 0x7f080183

    const v16, 0x7f060043

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/navigation/AirConditionMode;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/deepalhome/launcher/navigation/AirConditionMode;->HEATING:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    new-instance v2, Lcom/deepalhome/launcher/navigation/AirConditionMode;

    const/4 v8, 0x3

    const-string v12, "Ventilation"

    const-string v11, "VENTILATION"

    const v9, 0x7f080184

    const v10, 0x7f060044

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/navigation/AirConditionMode;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/deepalhome/launcher/navigation/AirConditionMode;->VENTILATION:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    filled-new-array {v6, v0, v1, v2}, [Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object v3

    sput-object v3, Lcom/deepalhome/launcher/navigation/AirConditionMode;->$VALUES:[Lcom/deepalhome/launcher/navigation/AirConditionMode;

    invoke-static {v3}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    new-instance v3, Lcom/deepalhome/launcher/navigation/AirConditionMode$Companion;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/deepalhome/launcher/navigation/AirConditionMode$Companion;-><init>(I)V

    sput-object v3, Lcom/deepalhome/launcher/navigation/AirConditionMode;->Companion:Lcom/deepalhome/launcher/navigation/AirConditionMode$Companion;

    filled-new-array {v6, v0, v1, v2}, [Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/AirConditionMode;->ordered:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p4, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p5, p0, Lcom/deepalhome/launcher/navigation/AirConditionMode;->displayName:Ljava/lang/String;

    iput p2, p0, Lcom/deepalhome/launcher/navigation/AirConditionMode;->iconRes:I

    iput p3, p0, Lcom/deepalhome/launcher/navigation/AirConditionMode;->temperatureIndicatorColorRes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/AirConditionMode;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/navigation/AirConditionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/navigation/AirConditionMode;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/navigation/AirConditionMode;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/navigation/AirConditionMode;->$VALUES:[Lcom/deepalhome/launcher/navigation/AirConditionMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/navigation/AirConditionMode;

    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/AirConditionMode;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final getIconRes()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/AirConditionMode;->iconRes:I

    return p0
.end method

.method public final getTemperatureIndicatorColorRes()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/AirConditionMode;->temperatureIndicatorColorRes:I

    return p0
.end method