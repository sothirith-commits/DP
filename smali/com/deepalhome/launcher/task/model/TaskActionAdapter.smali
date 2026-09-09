.class public final Lcom/deepalhome/launcher/task/model/TaskActionAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/JsonSerializer;
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer;",
        "Lcom/google/gson/JsonDeserializer;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/deepalhome/launcher/task/model/TaskAction;
    .locals 8

    const-string p0, "json"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "typeOfT"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "context"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string p1, "type"

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_6f

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "text"

    const-string v4, "duration"

    const-string v5, "mode"

    const/4 v6, 0x3

    const-string v7, ""

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_17

    :sswitch_0
    const-string v0, "control_air_condition"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_17

    :cond_0
    sget-object p2, Lcom/deepalhome/launcher/hvac/HvacCommand;->Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;

    const-string v0, "command"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v1

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_3

    goto/16 :goto_e

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, v1

    :goto_2
    sget-object p2, Lcom/deepalhome/launcher/hvac/HvacCommand$OpenPanel;->INSTANCE:Lcom/deepalhome/launcher/hvac/HvacCommand$OpenPanel;

    iget-object v0, p2, Lcom/deepalhome/launcher/hvac/HvacCommand;->type:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_3
    move-object v1, p2

    goto/16 :goto_e

    :cond_5
    sget-object p2, Lcom/deepalhome/launcher/hvac/HvacCommand$ClosePanel;->INSTANCE:Lcom/deepalhome/launcher/hvac/HvacCommand$ClosePanel;

    iget-object v0, p2, Lcom/deepalhome/launcher/hvac/HvacCommand;->type:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    const-string p2, "set_power"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "enabled"

    const-string v3, "position"

    if-eqz p2, :cond_9

    new-instance p1, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v2

    :cond_7
    sget-object p2, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Position$Companion;

    invoke-virtual {p0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position$Companion;->fromRaw(Ljava/lang/String;)Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Position;Z)V

    :goto_4
    move-object v1, p1

    goto/16 :goto_e

    :cond_9
    const-string p2, "set_temperature"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    new-instance p1, Lcom/deepalhome/launcher/hvac/HvacCommand$SetTemperature;

    const-string p2, "temperature"

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsFloat()F

    move-result p2

    goto :goto_5

    :cond_a
    const/high16 p2, 0x41c80000    # 25.0f

    :goto_5
    sget-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Position$Companion;

    invoke-virtual {p0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position$Companion;->fromRaw(Ljava/lang/String;)Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetTemperature;-><init>(FLcom/deepalhome/launcher/hvac/HvacCommand$Position;)V

    goto :goto_4

    :cond_c
    const-string p2, "adjust_temperature"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const-string v4, "offset"

    if-eqz p2, :cond_f

    new-instance p1, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;

    invoke-virtual {p0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    :cond_d
    sget-object p2, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Position$Companion;

    invoke-virtual {p0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position$Companion;->fromRaw(Ljava/lang/String;)Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Position;I)V

    goto :goto_4

    :cond_f
    const-string p2, "set_mode"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    sget-object p1, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode$Companion;

    invoke-virtual {p0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_10
    move-object p0, v1

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->values()[Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    move-result-object p1

    array-length p2, p1

    move v0, p3

    :goto_7
    if-ge v0, p2, :cond_12

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->getRawValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_8

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_12
    move-object v2, v1

    :goto_8
    if-eqz v2, :cond_25

    new-instance v1, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    goto/16 :goto_e

    :cond_13
    const-string p2, "set_mode_state"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    sget-object p1, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode$Companion;

    invoke-virtual {p0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    if-eqz p2, :cond_14

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    goto :goto_9

    :cond_14
    move-object p2, v1

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->values()[Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    move-result-object p1

    array-length v3, p1

    move v4, p3

    :goto_a
    if-ge v4, v3, :cond_16

    aget-object v5, p1, v4

    invoke-virtual {v5}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->getRawValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_b

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_16
    move-object v5, v1

    :goto_b
    if-eqz v5, :cond_25

    new-instance v1, Lcom/deepalhome/launcher/hvac/HvacCommand$SetModeState;

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v2

    :cond_17
    invoke-direct {v1, v5, v2}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetModeState;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;Z)V

    goto/16 :goto_e

    :cond_18
    const-string p2, "set_seat_ventilation"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const-string v5, "level"

    if-eqz p2, :cond_1c

    new-instance p1, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    if-eqz p2, :cond_19

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v2

    :cond_19
    sget-object p2, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Position$Companion;

    invoke-virtual {p0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_1a
    move-object v0, v1

    :goto_c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position$Companion;->fromRaw(Ljava/lang/String;)Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    move-result-object p2

    invoke-virtual {p0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1b
    invoke-direct {p1, v2, p2, v1}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    goto/16 :goto_4

    :cond_1c
    const-string p2, "set_seat_heating"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    new-instance p1, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v2

    :cond_1d
    sget-object p2, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Position$Companion;

    invoke-virtual {p0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_1e
    move-object v0, v1

    :goto_d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position$Companion;->fromRaw(Ljava/lang/String;)Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    move-result-object p2

    invoke-virtual {p0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1f
    invoke-direct {p1, v2, p2, v1}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    goto/16 :goto_4

    :cond_20
    const-string p2, "set_fan_speed"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_22

    new-instance v1, Lcom/deepalhome/launcher/hvac/HvacCommand$SetFanSpeed;

    const-string p1, "speed"

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    :cond_21
    invoke-direct {v1, v6}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetFanSpeed;-><init>(I)V

    goto :goto_e

    :cond_22
    sget-object p2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMaxFanSpeed;->INSTANCE:Lcom/deepalhome/launcher/hvac/HvacCommand$SetMaxFanSpeed;

    iget-object v0, p2, Lcom/deepalhome/launcher/hvac/HvacCommand;->type:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto/16 :goto_3

    :cond_23
    const-string p2, "adjust_fan_speed"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    new-instance v1, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustFanSpeed;

    invoke-virtual {p0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    :cond_24
    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustFanSpeed;-><init>(I)V

    :cond_25
    :goto_e
    if-eqz v1, :cond_26

    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    goto/16 :goto_18

    :cond_26
    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskAction$Delay;

    invoke-direct {p0, p3}, Lcom/deepalhome/launcher/task/model/TaskAction$Delay;-><init>(I)V

    goto/16 :goto_18

    :sswitch_1
    const-string p0, "launch_system_launcher"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_17

    :cond_27
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchSystemLauncher;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$LaunchSystemLauncher;

    goto/16 :goto_18

    :sswitch_2
    const-string p0, "media_next"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto/16 :goto_17

    :cond_28
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$MediaNext;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$MediaNext;

    goto/16 :goto_18

    :sswitch_3
    const-string p0, "random_wallpaper"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto/16 :goto_17

    :cond_29
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$RandomWallpaper;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$RandomWallpaper;

    goto/16 :goto_18

    :sswitch_4
    const-string p1, "set_drive_mode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto/16 :goto_17

    :cond_2a
    new-instance p1, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    invoke-virtual {p0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    :cond_2b
    invoke-direct {p1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;-><init>(I)V

    :goto_f
    move-object p0, p1

    goto/16 :goto_18

    :sswitch_5
    const-string p1, "set_power_mode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto/16 :goto_17

    :cond_2c
    new-instance p1, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    invoke-virtual {p0, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p3

    :cond_2d
    invoke-direct {p1, p3}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;-><init>(I)V

    goto :goto_f

    :sswitch_6
    const-string p0, "toggle_air_condition"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto/16 :goto_17

    :cond_2e
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAirCondition;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAirCondition;

    goto/16 :goto_18

    :sswitch_7
    const-string p0, "activate_magisk"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto/16 :goto_17

    :cond_2f
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$ActivateMagisk;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ActivateMagisk;

    goto/16 :goto_18

    :sswitch_8
    const-string p0, "launch_music"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto/16 :goto_17

    :cond_30
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMusic;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMusic;

    goto/16 :goto_18

    :sswitch_9
    const-string p0, "set_auto_theme"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto/16 :goto_17

    :cond_31
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$SetAutoTheme;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$SetAutoTheme;

    goto/16 :goto_18

    :sswitch_a
    const-string p0, "show_card_windows"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto/16 :goto_17

    :cond_32
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$ShowCardWindows;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ShowCardWindows;

    goto/16 :goto_18

    :sswitch_b
    const-string p0, "auto_volume_by_speed"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto/16 :goto_17

    :cond_33
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$AutoVolumeBySpeed;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$AutoVolumeBySpeed;

    goto/16 :goto_18

    :sswitch_c
    const-string p0, "next_wallpaper"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto/16 :goto_17

    :cond_34
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$NextWallpaper;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$NextWallpaper;

    goto/16 :goto_18

    :sswitch_d
    const-string p0, "rear_fog_light_on"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto/16 :goto_17

    :cond_35
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOn;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOn;

    goto/16 :goto_18

    :sswitch_e
    const-string p0, "toggle_front_defrost"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto/16 :goto_17

    :cond_36
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleFrontDefrost;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ToggleFrontDefrost;

    goto/16 :goto_18

    :sswitch_f
    const-string p0, "low_beam_on"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    goto/16 :goto_17

    :cond_37
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOn;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOn;

    goto/16 :goto_18

    :sswitch_10
    const-string p0, "enable_auto_screen_brightness"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto/16 :goto_17

    :cond_38
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$EnableAutoScreenBrightness;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$EnableAutoScreenBrightness;

    goto/16 :goto_18

    :sswitch_11
    const-string p0, "enable_hud_lyrics"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto/16 :goto_17

    :cond_39
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$EnableHudLyrics;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$EnableHudLyrics;

    goto/16 :goto_18

    :sswitch_12
    const-string p0, "launch_map"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto/16 :goto_17

    :cond_3a
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMap;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMap;

    goto/16 :goto_18

    :sswitch_13
    const-string p1, "launch_app"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto/16 :goto_17

    :cond_3b
    new-instance p1, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;

    const-string p2, "packageName"

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    if-eqz p2, :cond_3c

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    goto :goto_10

    :cond_3c
    move-object p2, v1

    :goto_10
    if-nez p2, :cond_3d

    move-object p2, v7

    :cond_3d
    const-string p3, "appName"

    invoke-virtual {p0, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_3e

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    :cond_3e
    if-nez v1, :cond_3f

    goto :goto_11

    :cond_3f
    move-object v7, v1

    :goto_11
    invoke-direct {p1, p2, v7}, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :sswitch_14
    const-string p0, "switch_to_low_beam"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_40

    goto/16 :goto_17

    :cond_40
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$SwitchToLowBeam;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$SwitchToLowBeam;

    goto/16 :goto_18

    :sswitch_15
    const-string p0, "toggle_real_time_voice"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto/16 :goto_17

    :cond_41
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRealTimeVoice;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRealTimeVoice;

    goto/16 :goto_18

    :sswitch_16
    const-string p0, "switch_to_auto_light"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    goto/16 :goto_17

    :cond_42
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$SwitchToAutoLight;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$SwitchToAutoLight;

    goto/16 :goto_18

    :sswitch_17
    const-string p1, "delay"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    goto/16 :goto_17

    :cond_43
    new-instance p1, Lcom/deepalhome/launcher/task/model/TaskAction$Delay;

    const-string p2, "seconds"

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_44

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    :cond_44
    invoke-direct {p1, v6}, Lcom/deepalhome/launcher/task/model/TaskAction$Delay;-><init>(I)V

    goto/16 :goto_f

    :sswitch_18
    const-string p0, "toggle_fog_light_strobe"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_45

    goto/16 :goto_17

    :cond_45
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleFogLightStrobe;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ToggleFogLightStrobe;

    goto/16 :goto_18

    :sswitch_19
    const-string p1, "execute_task_event"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto/16 :goto_17

    :cond_46
    new-instance p1, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;

    const-string p2, "eventId"

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_47

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    :cond_47
    if-nez v1, :cond_48

    goto :goto_12

    :cond_48
    move-object v7, v1

    :goto_12
    invoke-direct {p1, v7}, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_f

    :sswitch_1a
    const-string p0, "pure_electric_mode"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_49

    goto/16 :goto_17

    :cond_49
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$PureElectricMode;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$PureElectricMode;

    goto/16 :goto_18

    :sswitch_1b
    const-string p1, "rear_fog_light_strobe"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    goto/16 :goto_17

    :cond_4a
    new-instance p1, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;

    invoke-virtual {p0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_4b

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    :cond_4b
    invoke-direct {p1, v6}, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;-><init>(I)V

    goto/16 :goto_f

    :sswitch_1c
    const-string p0, "set_dark_theme"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c

    goto/16 :goto_17

    :cond_4c
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$SetDarkTheme;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$SetDarkTheme;

    goto/16 :goto_18

    :sswitch_1d
    const-string p1, "speak_loop_tts"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    goto/16 :goto_17

    :cond_4d
    new-instance p1, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;

    invoke-virtual {p0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_4e

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    :cond_4e
    if-nez v1, :cond_4f

    goto :goto_13

    :cond_4f
    move-object v7, v1

    :goto_13
    invoke-direct {p1, v7}, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;-><init>(Ljava/lang/String;)V

    goto/16 :goto_f

    :sswitch_1e
    const-string p0, "heated_cockpit_normal"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_50

    goto/16 :goto_17

    :cond_50
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitNormal;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitNormal;

    goto/16 :goto_18

    :sswitch_1f
    const-string p0, "set_light_theme"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51

    goto/16 :goto_17

    :cond_51
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$SetLightTheme;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$SetLightTheme;

    goto/16 :goto_18

    :sswitch_20
    const-string p0, "toggle_auto_screen_brightness"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_52

    goto/16 :goto_17

    :cond_52
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAutoScreenBrightness;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAutoScreenBrightness;

    goto/16 :goto_18

    :sswitch_21
    const-string p0, "toggle_rear_seat_belt_alarm"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_53

    goto/16 :goto_17

    :cond_53
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRearSeatBeltAlarm;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRearSeatBeltAlarm;

    goto/16 :goto_18

    :sswitch_22
    const-string p0, "toggle_mode"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_54

    goto/16 :goto_17

    :cond_54
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleMode;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ToggleMode;

    goto/16 :goto_18

    :sswitch_23
    const-string p0, "toggle_rear_defrost"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_55

    goto/16 :goto_17

    :cond_55
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRearDefrost;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRearDefrost;

    goto/16 :goto_18

    :sswitch_24
    const-string p0, "toggle_car_status_bar"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_56

    goto/16 :goto_17

    :cond_56
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarStatusBar;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarStatusBar;

    goto/16 :goto_18

    :sswitch_25
    const-string p0, "previous_wallpaper"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_57

    goto/16 :goto_17

    :cond_57
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$PreviousWallpaper;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$PreviousWallpaper;

    goto/16 :goto_18

    :sswitch_26
    const-string p0, "open_journey"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_58

    goto/16 :goto_17

    :cond_58
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$OpenJourney;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$OpenJourney;

    goto/16 :goto_18

    :sswitch_27
    const-string p1, "low_beam_strobe"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_59

    goto/16 :goto_17

    :cond_59
    new-instance p1, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;

    invoke-virtual {p0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_5a

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    :cond_5a
    invoke-direct {p1, v6}, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;-><init>(I)V

    goto/16 :goto_f

    :sswitch_28
    const-string p0, "disable_auto_screen_brightness"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b

    goto/16 :goto_17

    :cond_5b
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$DisableAutoScreenBrightness;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$DisableAutoScreenBrightness;

    goto/16 :goto_18

    :sswitch_29
    const-string p0, "rear_fog_light_off"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5c

    goto/16 :goto_17

    :cond_5c
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOff;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOff;

    goto/16 :goto_18

    :sswitch_2a
    const-string p1, "set_volume"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5d

    goto/16 :goto_17

    :cond_5d
    new-instance p1, Lcom/deepalhome/launcher/task/model/TaskAction$SetVolume;

    const-string p2, "volume"

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_5e

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    goto :goto_14

    :cond_5e
    const/16 p0, 0xa

    :goto_14
    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/task/model/TaskAction$SetVolume;-><init>(I)V

    goto/16 :goto_f

    :sswitch_2b
    const-string p0, "low_beam_off"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5f

    goto/16 :goto_17

    :cond_5f
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOff;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOff;

    goto/16 :goto_18

    :sswitch_2c
    const-string p0, "return_home"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_60

    goto/16 :goto_17

    :cond_60
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$ReturnHome;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ReturnHome;

    goto/16 :goto_18

    :sswitch_2d
    const-string p0, "system_back"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_61

    goto/16 :goto_17

    :cond_61
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$SystemBack;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$SystemBack;

    goto/16 :goto_18

    :sswitch_2e
    const-string p0, "media_previous"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_62

    goto/16 :goto_17

    :cond_62
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$MediaPrevious;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$MediaPrevious;

    goto/16 :goto_18

    :sswitch_2f
    const-string p0, "heated_cockpit_low_power"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_63

    goto/16 :goto_17

    :cond_63
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitLowPower;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitLowPower;

    goto/16 :goto_18

    :sswitch_30
    const-string p1, "speak_tts"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64

    goto/16 :goto_17

    :cond_64
    new-instance p1, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakTts;

    invoke-virtual {p0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_65

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    :cond_65
    if-nez v1, :cond_66

    goto :goto_15

    :cond_66
    move-object v7, v1

    :goto_15
    invoke-direct {p1, v7}, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakTts;-><init>(Ljava/lang/String;)V

    goto/16 :goto_f

    :sswitch_31
    const-string p1, "set_screen_brightness"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    goto/16 :goto_17

    :cond_67
    new-instance p1, Lcom/deepalhome/launcher/task/model/TaskAction$SetScreenBrightness;

    const-string p2, "brightness"

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_68

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    goto :goto_16

    :cond_68
    const/16 p0, 0x32

    :goto_16
    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/task/model/TaskAction$SetScreenBrightness;-><init>(I)V

    goto/16 :goto_f

    :sswitch_32
    const-string p0, "disable_hud_lyrics"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_69

    goto :goto_17

    :cond_69
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$DisableHudLyrics;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$DisableHudLyrics;

    goto :goto_18

    :sswitch_33
    const-string p0, "toggle_car_navigation_bar"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6a

    goto :goto_17

    :cond_6a
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarNavigationBar;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarNavigationBar;

    goto :goto_18

    :sswitch_34
    const-string p0, "show_app_center"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6b

    goto :goto_17

    :cond_6b
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAppCenter;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAppCenter;

    goto :goto_18

    :sswitch_35
    const-string p0, "toggle_current_song_favorite"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6c

    goto :goto_17

    :cond_6c
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCurrentSongFavorite;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCurrentSongFavorite;

    goto :goto_18

    :sswitch_36
    const-string p0, "heated_cockpit_close"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6d

    goto :goto_17

    :cond_6d
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitClose;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitClose;

    goto :goto_18

    :sswitch_37
    const-string p0, "start_projection_hook"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6e

    goto :goto_17

    :cond_6e
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskAction$StartProjectionHook;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$StartProjectionHook;

    goto :goto_18

    :cond_6f
    :goto_17
    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskAction$Delay;

    invoke-direct {p0, p3}, Lcom/deepalhome/launcher/task/model/TaskAction$Delay;-><init>(I)V

    :goto_18
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7840ecca -> :sswitch_37
        -0x750282b0 -> :sswitch_36
        -0x714e056b -> :sswitch_35
        -0x70a87d4b -> :sswitch_34
        -0x6bb1a602 -> :sswitch_33
        -0x6adf120d -> :sswitch_32
        -0x69a46899 -> :sswitch_31
        -0x685247fa -> :sswitch_30
        -0x61b60c4e -> :sswitch_2f
        -0x5e60e30e -> :sswitch_2e
        -0x5b88af09 -> :sswitch_2d
        -0x589bd172 -> :sswitch_2c
        -0x4fa07296 -> :sswitch_2b
        -0x40df2a69 -> :sswitch_2a
        -0x4058bad6 -> :sswitch_29
        -0x40322955 -> :sswitch_28
        -0x38d6b0ba -> :sswitch_27
        -0x37956d35 -> :sswitch_26
        -0x35fd4546 -> :sswitch_25
        -0x31714424 -> :sswitch_24
        -0x2b82b1ad -> :sswitch_23
        -0x267cd452 -> :sswitch_22
        -0x2607dbf9 -> :sswitch_21
        -0x1f557b41 -> :sswitch_20
        -0x190302fd -> :sswitch_1f
        -0x185cf771 -> :sswitch_1e
        -0x15a25c5b -> :sswitch_1d
        -0x1080c043 -> :sswitch_1c
        -0xdf6807a -> :sswitch_1b
        -0x95e2982 -> :sswitch_1a
        0xbfa66a -> :sswitch_19
        0x419b3d6 -> :sswitch_18
        0x5b0b983 -> :sswitch_17
        0xa0910ff -> :sswitch_16
        0x15cfdf96 -> :sswitch_15
        0x1dd54273 -> :sswitch_14
        0x2096bb95 -> :sswitch_13
        0x2096e6d0 -> :sswitch_12
        0x21a3cc78 -> :sswitch_11
        0x230615b0 -> :sswitch_10
        0x26b8c284 -> :sswitch_f
        0x2f5df122 -> :sswitch_e
        0x37bb12c4 -> :sswitch_d
        0x390bbfb6 -> :sswitch_c
        0x3b422f54 -> :sswitch_b
        0x4b35c656 -> :sswitch_a
        0x4b56df36 -> :sswitch_9
        0x5681a299 -> :sswitch_8
        0x5d32cf1a -> :sswitch_7
        0x64ec76bb -> :sswitch_6
        0x67f5ac9a -> :sswitch_5
        0x701c2735 -> :sswitch_4
        0x72211586 -> :sswitch_3
        0x739d226e -> :sswitch_2
        0x74de8724 -> :sswitch_1
        0x7caa5d04 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/deepalhome/launcher/task/model/TaskActionAdapter;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/deepalhome/launcher/task/model/TaskAction;

    move-result-object p0

    return-object p0
.end method

.method public serialize(Lcom/deepalhome/launcher/task/model/TaskAction;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    const-string p0, "src"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "typeOfSrc"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "context"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string p2, "type"

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskAction;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$Delay;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction$Delay;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskAction$Delay;->getSeconds()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "seconds"

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_0

    :cond_0
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;->getEventId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "eventId"

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "packageName"

    invoke-virtual {p0, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "appName"

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;->getCommand()Lcom/deepalhome/launcher/hvac/HvacCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/hvac/HvacCommand;->toJson()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string p2, "command"

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto/16 :goto_0

    :cond_3
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    const-string p3, "mode"

    if-eqz p2, :cond_4

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;->getMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_0

    :cond_4
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    if-eqz p2, :cond_5

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;->getMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_0

    :cond_5
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$SetScreenBrightness;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction$SetScreenBrightness;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskAction$SetScreenBrightness;->getBrightness()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "brightness"

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_0

    :cond_6
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$SetVolume;

    if-eqz p2, :cond_7

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction$SetVolume;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskAction$SetVolume;->getVolume()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "volume"

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_0

    :cond_7
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakTts;

    const-string p3, "text"

    if-eqz p2, :cond_8

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakTts;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakTts;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;

    if-eqz p2, :cond_9

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;

    const-string p3, "duration"

    if-eqz p2, :cond_a

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;->getDuration()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_0

    :cond_a
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;

    if-eqz p2, :cond_b

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;->getDuration()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto/16 :goto_0

    :cond_b
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$RandomWallpaper;

    if-eqz p2, :cond_c

    goto/16 :goto_0

    :cond_c
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$NextWallpaper;

    if-eqz p2, :cond_d

    goto/16 :goto_0

    :cond_d
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$PreviousWallpaper;

    if-eqz p2, :cond_e

    goto/16 :goto_0

    :cond_e
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMusic;

    if-eqz p2, :cond_f

    goto/16 :goto_0

    :cond_f
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$MediaPrevious;

    if-eqz p2, :cond_10

    goto/16 :goto_0

    :cond_10
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$MediaNext;

    if-eqz p2, :cond_11

    goto/16 :goto_0

    :cond_11
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCurrentSongFavorite;

    if-eqz p2, :cond_12

    goto/16 :goto_0

    :cond_12
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMap;

    if-eqz p2, :cond_13

    goto/16 :goto_0

    :cond_13
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$ReturnHome;

    if-eqz p2, :cond_14

    goto/16 :goto_0

    :cond_14
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$OpenJourney;

    if-eqz p2, :cond_15

    goto/16 :goto_0

    :cond_15
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$SystemBack;

    if-eqz p2, :cond_16

    goto/16 :goto_0

    :cond_16
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchSystemLauncher;

    if-eqz p2, :cond_17

    goto/16 :goto_0

    :cond_17
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$ShowCardWindows;

    if-eqz p2, :cond_18

    goto/16 :goto_0

    :cond_18
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAppCenter;

    if-eqz p2, :cond_19

    goto/16 :goto_0

    :cond_19
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleMode;

    if-eqz p2, :cond_1a

    goto/16 :goto_0

    :cond_1a
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$SetDarkTheme;

    if-eqz p2, :cond_1b

    goto/16 :goto_0

    :cond_1b
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$SetLightTheme;

    if-eqz p2, :cond_1c

    goto/16 :goto_0

    :cond_1c
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$SetAutoTheme;

    if-eqz p2, :cond_1d

    goto/16 :goto_0

    :cond_1d
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$EnableHudLyrics;

    if-eqz p2, :cond_1e

    goto/16 :goto_0

    :cond_1e
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$DisableHudLyrics;

    if-eqz p2, :cond_1f

    goto/16 :goto_0

    :cond_1f
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarStatusBar;

    if-eqz p2, :cond_20

    goto/16 :goto_0

    :cond_20
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarNavigationBar;

    if-eqz p2, :cond_21

    goto/16 :goto_0

    :cond_21
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAirCondition;

    if-eqz p2, :cond_22

    goto/16 :goto_0

    :cond_22
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleFrontDefrost;

    if-eqz p2, :cond_23

    goto/16 :goto_0

    :cond_23
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRearDefrost;

    if-eqz p2, :cond_24

    goto/16 :goto_0

    :cond_24
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRealTimeVoice;

    if-eqz p2, :cond_25

    goto/16 :goto_0

    :cond_25
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitNormal;

    if-eqz p2, :cond_26

    goto/16 :goto_0

    :cond_26
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitLowPower;

    if-eqz p2, :cond_27

    goto :goto_0

    :cond_27
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitClose;

    if-eqz p2, :cond_28

    goto :goto_0

    :cond_28
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleFogLightStrobe;

    if-eqz p2, :cond_29

    goto :goto_0

    :cond_29
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$SwitchToLowBeam;

    if-eqz p2, :cond_2a

    goto :goto_0

    :cond_2a
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$SwitchToAutoLight;

    if-eqz p2, :cond_2b

    goto :goto_0

    :cond_2b
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$EnableAutoScreenBrightness;

    if-eqz p2, :cond_2c

    goto :goto_0

    :cond_2c
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$DisableAutoScreenBrightness;

    if-eqz p2, :cond_2d

    goto :goto_0

    :cond_2d
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAutoScreenBrightness;

    if-eqz p2, :cond_2e

    goto :goto_0

    :cond_2e
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRearSeatBeltAlarm;

    if-eqz p2, :cond_2f

    goto :goto_0

    :cond_2f
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$PureElectricMode;

    if-eqz p2, :cond_30

    goto :goto_0

    :cond_30
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$AutoVolumeBySpeed;

    if-eqz p2, :cond_31

    goto :goto_0

    :cond_31
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOn;

    if-eqz p2, :cond_32

    goto :goto_0

    :cond_32
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOff;

    if-eqz p2, :cond_33

    goto :goto_0

    :cond_33
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOn;

    if-eqz p2, :cond_34

    goto :goto_0

    :cond_34
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOff;

    if-eqz p2, :cond_35

    goto :goto_0

    :cond_35
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskAction$ActivateMagisk;

    if-eqz p2, :cond_36

    goto :goto_0

    :cond_36
    instance-of p1, p1, Lcom/deepalhome/launcher/task/model/TaskAction$StartProjectionHook;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction;

    invoke-virtual {p0, p1, p2, p3}, Lcom/deepalhome/launcher/task/model/TaskActionAdapter;->serialize(Lcom/deepalhome/launcher/task/model/TaskAction;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
