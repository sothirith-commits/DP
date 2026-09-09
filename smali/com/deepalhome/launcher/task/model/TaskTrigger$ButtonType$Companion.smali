.class public final Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromButtonType(Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;
    .locals 0

    const-string p0, "buttonType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "instrument_switch"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$InstrumentSwitch;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$InstrumentSwitch;

    goto :goto_1

    :sswitch_1
    const-string p0, "heart_key_2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$HeartKey2;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$HeartKey2;

    goto :goto_1

    :sswitch_2
    const-string p0, "heart_key_1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$HeartKey1;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$HeartKey1;

    goto :goto_1

    :sswitch_3
    const-string p0, "voice_key"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :goto_0
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$InstrumentSwitch;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$InstrumentSwitch;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$VoiceKey;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$VoiceKey;

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3cb83a2e -> :sswitch_3
        -0x1166eae8 -> :sswitch_2
        -0x1166eae7 -> :sswitch_1
        0x6d286e8c -> :sswitch_0
    .end sparse-switch
.end method
