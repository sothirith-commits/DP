.class public final enum Lcom/deepalhome/launcher/app/FunctionPanelMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/app/FunctionPanelMode;

.field public static final enum EDIT:Lcom/deepalhome/launcher/app/FunctionPanelMode;

.field public static final enum NORMAL:Lcom/deepalhome/launcher/app/FunctionPanelMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/app/FunctionPanelMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/app/FunctionPanelMode;->NORMAL:Lcom/deepalhome/launcher/app/FunctionPanelMode;

    new-instance v1, Lcom/deepalhome/launcher/app/FunctionPanelMode;

    const-string v2, "EDIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/deepalhome/launcher/app/FunctionPanelMode;->EDIT:Lcom/deepalhome/launcher/app/FunctionPanelMode;

    filled-new-array {v0, v1}, [Lcom/deepalhome/launcher/app/FunctionPanelMode;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/app/FunctionPanelMode;->$VALUES:[Lcom/deepalhome/launcher/app/FunctionPanelMode;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/app/FunctionPanelMode;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/app/FunctionPanelMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/app/FunctionPanelMode;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/app/FunctionPanelMode;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/app/FunctionPanelMode;->$VALUES:[Lcom/deepalhome/launcher/app/FunctionPanelMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/app/FunctionPanelMode;

    return-object v0
.end method
