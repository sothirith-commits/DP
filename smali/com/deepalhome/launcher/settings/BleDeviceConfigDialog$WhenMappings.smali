.class public abstract synthetic Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/deepalhome/tuotuotie/EventType;->values()[Lcom/deepalhome/tuotuotie/EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_0
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/deepalhome/tuotuotie/EventType;->CLICK:Lcom/deepalhome/tuotuotie/EventType;

    const/4 v1, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;->values()[Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
