.class public final Lcom/deepalhome/launcher/hvac/HvacController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/hvac/HvacController;

.field private static final SOUND_LOCATION:Ljava/lang/String; = "0"

.field private static final ez6ActionComponent:Landroid/content/ComponentName;

.field private static final standardActionComponent:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/deepalhome/launcher/hvac/HvacController;

    invoke-direct {v0}, Lcom/deepalhome/launcher/hvac/HvacController;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/hvac/HvacController;->INSTANCE:Lcom/deepalhome/launcher/hvac/HvacController;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.mega.hvac"

    const-string v2, "com.mega.hvac.mars.HvacActionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/hvac/HvacController;->standardActionComponent:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "mega.assistant.action.ActionClientService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/hvac/HvacController;->ez6ActionComponent:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic execute$default(Lcom/deepalhome/launcher/hvac/HvacController;Lcom/deepalhome/launcher/hvac/HvacCommand;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;->SYSTEM_UI:Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/hvac/HvacController;->execute(Lcom/deepalhome/launcher/hvac/HvacCommand;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;)Z

    move-result p0

    return p0
.end method

.method private final native executeS05(Lcom/deepalhome/launcher/hvac/HvacCommand;)Ljava/lang/Boolean;
.end method

.method private final native isEz6()Z
.end method

.method private final native sendAdjustTemperatureControl(Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;)Z
.end method

.method private final native sendAirControl(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;)Z
.end method

.method public static synthetic sendAirControl$default(Lcom/deepalhome/launcher/hvac/HvacController;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;ILjava/lang/Object;)Z
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    move-object v3, p2

    goto :goto_0

    :cond_0
    move-object v3, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move-object v4, p2

    goto :goto_1

    :cond_1
    move-object v4, p4

    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    sget-object p5, Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;->SYSTEM_UI:Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/hvac/HvacController;->sendAirControl(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;)Z

    move-result p0

    return p0
.end method

.method private final sendHvacAction(Ljava/lang/String;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;)Z
    .locals 9

    invoke-direct {p0}, Lcom/deepalhome/launcher/hvac/HvacController;->isEz6()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "position"

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_ROW:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->getRawValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/google/gson/JsonObject;->deepCopy()Lcom/google/gson/JsonObject;

    move-result-object v4

    sget-object v1, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_LEFT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->getRawValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/deepalhome/launcher/hvac/HvacController;->sendSingleHvacAction(Ljava/lang/String;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;)Z

    move-result v1

    invoke-virtual {p2}, Lcom/google/gson/JsonObject;->deepCopy()Lcom/google/gson/JsonObject;

    move-result-object v4

    sget-object p2, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_RIGHT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-virtual {p2}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->getRawValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, v0, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {v2 .. v8}, Lcom/deepalhome/launcher/hvac/HvacController;->sendSingleHvacAction(Ljava/lang/String;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;)Z

    move-result p0

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :cond_2
    invoke-direct/range {p0 .. p6}, Lcom/deepalhome/launcher/hvac/HvacController;->sendSingleHvacAction(Ljava/lang/String;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;)Z

    move-result p0

    return p0
.end method

.method public static synthetic sendHvacAction$default(Lcom/deepalhome/launcher/hvac/HvacController;Ljava/lang/String;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;ILjava/lang/Object;)Z
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    move-object v4, p3

    goto :goto_0

    :cond_0
    move-object v4, p4

    :goto_0
    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    move-object v5, p3

    goto :goto_1

    :cond_1
    move-object v5, p5

    :goto_1
    and-int/lit8 p4, p7, 0x20

    if-eqz p4, :cond_2

    sget-object p6, Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;->SYSTEM_UI:Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;

    :cond_2
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/launcher/hvac/HvacController;->sendHvacAction(Ljava/lang/String;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;)Z

    move-result p0

    return p0
.end method

.method private final native sendPanelIntent(Z)Z
.end method

.method private final native sendPowerControl(Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;)Z
.end method

.method private final native sendSeatHeatingControl(Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;)Z
.end method

.method private final native sendSeatVentilationControl(Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;)Z
.end method

.method private final sendSingleHvacAction(Ljava/lang/String;Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;)Z
    .locals 4

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "application"

    const-string v1, "DC"

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "params"

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;->SYSTEM_UI:Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;

    const-string p2, "viewIds"

    const-string v1, "ttsIds"

    if-ne p6, p1, :cond_0

    new-instance v2, Lcom/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/google/gson/JsonArray;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->add()V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->add()V

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/google/gson/JsonArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    :goto_0
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "req_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestId"

    invoke-virtual {p2, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v0, "operations"

    invoke-virtual {p2, v0, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v0, "query"

    invoke-virtual {p2, v0, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/google/gson/JsonArray;

    invoke-direct {p3}, Lcom/google/gson/JsonArray;-><init>()V

    const-string v0, "0"

    const-string v1, "content"

    const-string v2, "id"

    if-ne p6, p1, :cond_1

    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {v3, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_1
    const-string p4, "tts"

    invoke-virtual {p2, p4, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance p4, Lcom/google/gson/JsonArray;

    invoke-direct {p4}, Lcom/google/gson/JsonArray;-><init>()V

    if-ne p6, p1, :cond_2

    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {p1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1, p5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :cond_2
    const-string p1, "viewText"

    invoke-virtual {p3, p1, p4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string p1, "view"

    invoke-virtual {p2, p1, p3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/hvac/HvacController;->isEz6()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/deepalhome/launcher/hvac/HvacController;->ez6ActionComponent:Landroid/content/ComponentName;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/deepalhome/launcher/hvac/HvacController;->standardActionComponent:Landroid/content/ComponentName;

    :goto_1
    new-instance p1, Landroid/content/Intent;

    const-string p3, "com.mega.assist.action.POST"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p0, "DC://com.mega.assist.action"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p0, "NluResponse_str"

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    sget p0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of p2, p0, Lkotlin/Result$Failure;

    if-eqz p2, :cond_5

    move-object p0, p1

    :cond_5
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final native sendTemperatureControl(Lcom/deepalhome/launcher/hvac/HvacCommand$SetTemperature;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;)Z
.end method

.method private final native toRuntimePowerPosition(Lcom/deepalhome/launcher/hvac/HvacCommand$Position;Z)Ljava/lang/String;
.end method

.method private final native toRuntimeSeatHeatingPosition(Lcom/deepalhome/launcher/hvac/HvacCommand$Position;)Lcom/deepalhome/launcher/hvac/HvacCommand$Position;
.end method

.method private final native toRuntimeSeatVentilationPosition(Lcom/deepalhome/launcher/hvac/HvacCommand$Position;)Lcom/deepalhome/launcher/hvac/HvacCommand$Position;
.end method

.method private final native toRuntimeTemperaturePosition(Lcom/deepalhome/launcher/hvac/HvacCommand$Position;)Lcom/deepalhome/launcher/hvac/HvacCommand$Position;
.end method


# virtual methods
.method public final native execute(Lcom/deepalhome/launcher/hvac/HvacCommand;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;)Z
.end method
