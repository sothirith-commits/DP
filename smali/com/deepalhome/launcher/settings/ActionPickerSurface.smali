.class public final enum Lcom/deepalhome/launcher/settings/ActionPickerSurface;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/settings/ActionPickerSurface;

.field public static final enum BLE_DEVICE:Lcom/deepalhome/launcher/settings/ActionPickerSurface;

.field public static final Companion:Lcom/deepalhome/launcher/settings/ActionPickerSurface$Companion;

.field public static final enum FLOATING_BALL:Lcom/deepalhome/launcher/settings/ActionPickerSurface;

.field public static final enum SCHEDULED_TASK:Lcom/deepalhome/launcher/settings/ActionPickerSurface;


# instance fields
.field private final bit:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    const-string v1, "SCHEDULED_TASK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/deepalhome/launcher/settings/ActionPickerSurface;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->SCHEDULED_TASK:Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    new-instance v1, Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    const-string v4, "BLE_DEVICE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/deepalhome/launcher/settings/ActionPickerSurface;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->BLE_DEVICE:Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    new-instance v3, Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    const-string v4, "FLOATING_BALL"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/deepalhome/launcher/settings/ActionPickerSurface;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->FLOATING_BALL:Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    filled-new-array {v0, v1, v3}, [Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->$VALUES:[Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/settings/ActionPickerSurface$Companion;

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/settings/ActionPickerSurface$Companion;-><init>(I)V

    sput-object v1, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->Companion:Lcom/deepalhome/launcher/settings/ActionPickerSurface$Companion;

    new-instance v1, Lkotlin/jvm/internal/ArrayIterator;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lkotlin/jvm/internal/ArrayIterator;-><init>(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {v1}, Lkotlin/jvm/internal/ArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lkotlin/jvm/internal/ArrayIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    iget v0, v0, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->bit:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->bit:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/settings/ActionPickerSurface;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/settings/ActionPickerSurface;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->$VALUES:[Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    return-object v0
.end method


# virtual methods
.method public final getBit()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->bit:I

    return p0
.end method
