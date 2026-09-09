.class public final Lcom/deepalhome/launcher/task/model/TaskTriggerAdapter;
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

.method private final readGearSuffix(Lcom/google/gson/JsonElement;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lcom/google/gson/JsonObject;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string p1, "gear"

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    instance-of p1, p0, Lcom/google/gson/JsonPrimitive;

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final readTriggerType(Lcom/google/gson/JsonElement;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lcom/google/gson/JsonPrimitive;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    instance-of p0, p1, Lcom/google/gson/JsonObject;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string p1, "type"

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_2

    instance-of p1, p0, Lcom/google/gson/JsonPrimitive;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_4

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, p0

    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/deepalhome/launcher/task/model/TaskTrigger;
    .locals 1

    const-string v0, "json"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "typeOfT"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskTriggerAdapter;->readTriggerType(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$Invalid;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$Invalid;

    return-object p0

    :cond_0
    const-string p3, "custom_voice"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    instance-of p0, p1, Lcom/google/gson/JsonObject;

    const-string p2, ""

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0

    const-string p1, "value"

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    instance-of p3, p0, Lcom/google/gson/JsonPrimitive;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, p1

    :cond_4
    :goto_1
    new-instance p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;

    invoke-direct {p0, p2}, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_5
    const-string p3, "headlight_changed"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$LowBeamOn;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$LowBeamOn;

    return-object p0

    :cond_6
    const-string p3, "gear_changed"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/task/model/TaskTriggerAdapter;->readGearSuffix(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    sget-object p1, Lcom/deepalhome/launcher/task/model/TaskTrigger;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "gear_changed_"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;->fromType(Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/TaskTrigger;

    move-result-object p0

    if-eqz p0, :cond_8

    return-object p0

    :cond_8
    :goto_2
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged$Companion;->D()Lcom/deepalhome/launcher/task/model/TaskTrigger$GearChanged;

    move-result-object p0

    return-object p0

    :cond_9
    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;->fromType(Ljava/lang/String;)Lcom/deepalhome/launcher/task/model/TaskTrigger;

    move-result-object p0

    if-nez p0, :cond_a

    sget-object p0, Lcom/deepalhome/launcher/task/model/TaskTrigger$Invalid;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$Invalid;

    :cond_a
    return-object p0
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/deepalhome/launcher/task/model/TaskTriggerAdapter;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/deepalhome/launcher/task/model/TaskTrigger;

    move-result-object p0

    return-object p0
.end method

.method public serialize(Lcom/deepalhome/launcher/task/model/TaskTrigger;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    const-string p0, "src"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "typeOfSrc"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "context"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string p2, "type"

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskTrigger;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskTrigger$CustomVoice;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string p2, "value"

    invoke-virtual {p0, p2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/task/model/TaskTrigger;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskTrigger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/deepalhome/launcher/task/model/TaskTriggerAdapter;->serialize(Lcom/deepalhome/launcher/task/model/TaskTrigger;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
