.class public final Lcom/deepalhome/launcher/task/model/TaskConditionAdapter;
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
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/deepalhome/launcher/task/model/TaskCondition;
    .locals 3

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

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    if-nez p1, :cond_1

    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskCondition$Invalid;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskCondition$Invalid;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string p0, "button_press_long"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_5

    :cond_2
    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;-><init>(Z)V

    goto/16 :goto_7

    :sswitch_1
    const-string p0, "wifi_state_disconnected"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_5

    :cond_3
    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;-><init>(Z)V

    goto/16 :goto_7

    :sswitch_2
    const-string p2, "time_range"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_5

    :cond_4
    new-instance p1, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;

    const-string p2, "startHour"

    invoke-virtual {p0, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p2

    goto :goto_1

    :cond_5
    move p2, v1

    :goto_1
    const-string p3, "startMinute"

    invoke-virtual {p0, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p3

    goto :goto_2

    :cond_6
    move p3, v1

    :goto_2
    const-string v0, "endHour"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    goto :goto_3

    :cond_7
    move v0, v1

    :goto_3
    const-string v2, "endMinute"

    invoke-virtual {p0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    :cond_8
    invoke-direct {p1, p2, p3, v0, v1}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;-><init>(IIII)V

    :goto_4
    move-object p0, p1

    goto :goto_7

    :sswitch_3
    const-string p0, "wifi_state_connected"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_5

    :cond_9
    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;-><init>(Z)V

    goto :goto_7

    :sswitch_4
    const-string p0, "button_press_short"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_5

    :cond_a
    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;-><init>(Z)V

    goto :goto_7

    :sswitch_5
    const-string p3, "speed_range"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    :goto_5
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskCondition$Invalid;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskCondition$Invalid;

    goto :goto_7

    :cond_b
    new-instance p1, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;

    const-string p3, "minSpeed"

    invoke-virtual {p0, p3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p3

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_6

    :cond_c
    move-object p3, p2

    :goto_6
    const-string v0, "maxSpeed"

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_d
    invoke-direct {p1, p3, p2}, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_4

    :goto_7
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6fcbf4bb -> :sswitch_5
        -0x2ca4a80d -> :sswitch_4
        -0x6cbd44f -> :sswitch_3
        0x439ee14b -> :sswitch_2
        0x5970d493 -> :sswitch_1
        0x72292825 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/deepalhome/launcher/task/model/TaskConditionAdapter;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/deepalhome/launcher/task/model/TaskCondition;

    move-result-object p0

    return-object p0
.end method

.method public serialize(Lcom/deepalhome/launcher/task/model/TaskCondition;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
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

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$Invalid;

    if-nez p2, :cond_4

    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->getStartHour()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "startHour"

    invoke-virtual {p0, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->getStartMinute()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "startMinute"

    invoke-virtual {p0, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->getEndHour()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "endHour"

    invoke-virtual {p0, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$TimeRange;->getEndMinute()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "endMinute"

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->getMinSpeed()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "minSpeed"

    invoke-virtual {p0, p3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_1
    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$SpeedRange;->getMaxSpeed()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "maxSpeed"

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$WifiState;->isConnected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "isConnected"

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_3
    instance-of p2, p1, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskCondition$ButtonPressType;->isLongPress()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "isLongPress"

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_4
    :goto_0
    return-object p0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskCondition;

    invoke-virtual {p0, p1, p2, p3}, Lcom/deepalhome/launcher/task/model/TaskConditionAdapter;->serialize(Lcom/deepalhome/launcher/task/model/TaskCondition;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
