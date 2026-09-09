.class public final enum Lcom/deepalhome/launcher/settings/ActionPickerMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/settings/ActionPickerMode;

.field public static final enum FLOATING_BALL:Lcom/deepalhome/launcher/settings/ActionPickerMode;

.field public static final enum SCHEDULED_TASK:Lcom/deepalhome/launcher/settings/ActionPickerMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/deepalhome/launcher/settings/ActionPickerMode;

    const-string v1, "SCHEDULED_TASK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/settings/ActionPickerMode;->SCHEDULED_TASK:Lcom/deepalhome/launcher/settings/ActionPickerMode;

    new-instance v1, Lcom/deepalhome/launcher/settings/ActionPickerMode;

    const-string v2, "FLOATING_BALL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/deepalhome/launcher/settings/ActionPickerMode;->FLOATING_BALL:Lcom/deepalhome/launcher/settings/ActionPickerMode;

    new-instance v2, Lcom/deepalhome/launcher/settings/ActionPickerMode;

    const-string v3, "BLE_EVENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2}, [Lcom/deepalhome/launcher/settings/ActionPickerMode;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/settings/ActionPickerMode;->$VALUES:[Lcom/deepalhome/launcher/settings/ActionPickerMode;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/settings/ActionPickerMode;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/settings/ActionPickerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/settings/ActionPickerMode;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/settings/ActionPickerMode;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/settings/ActionPickerMode;->$VALUES:[Lcom/deepalhome/launcher/settings/ActionPickerMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/settings/ActionPickerMode;

    return-object v0
.end method
