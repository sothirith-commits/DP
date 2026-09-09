.class public abstract synthetic Lcom/deepalhome/launcher/window/WindowsView$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->values()[Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->SINGLE_GINGER_LEFT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    const/4 v2, 0x0

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v2, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->SINGLE_GINGER_LEFT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    const/4 v2, 0x2

    const/16 v3, 0xf

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->SINGLE_GINGER_LEFT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->SINGLE_GINGER_LEFT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    const/4 v1, 0x4

    const/16 v3, 0x10

    aput v1, v0, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->SINGLE_GINGER_LEFT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    const/4 v1, 0x5

    aput v1, v0, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->SINGLE_GINGER_LEFT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    const/4 v1, 0x6

    const/16 v2, 0xb

    aput v1, v0, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    sput-object v0, Lcom/deepalhome/launcher/window/WindowsView$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
