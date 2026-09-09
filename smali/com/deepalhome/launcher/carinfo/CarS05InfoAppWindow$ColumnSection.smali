.class public final enum Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

.field public static final enum CURRENT_TRIP:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

.field public static final enum SINCE_CHARGED:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

    const-string v1, "CURRENT_TRIP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;->CURRENT_TRIP:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

    new-instance v1, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

    const-string v2, "SINCE_CHARGED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;->SINCE_CHARGED:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

    filled-new-array {v0, v1}, [Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;->$VALUES:[Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;->$VALUES:[Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$ColumnSection;

    return-object v0
.end method
