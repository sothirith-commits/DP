.class public final enum Lcom/deepalhome/launcher/event/BodyControlType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/event/BodyControlType;

.field public static final Companion:Lcom/deepalhome/launcher/event/BodyControlType$Companion;

.field public static final enum EXPAND_DOOR_HANDLE:Lcom/deepalhome/launcher/event/BodyControlType;

.field public static final enum OPEN_FUEL_CAP:Lcom/deepalhome/launcher/event/BodyControlType;

.field public static final enum OPEN_GLOVE_BOX:Lcom/deepalhome/launcher/event/BodyControlType;

.field public static final enum RETRACT_DOOR_HANDLE:Lcom/deepalhome/launcher/event/BodyControlType;

.field public static final enum TOGGLE_MIRROR_FOLD:Lcom/deepalhome/launcher/event/BodyControlType;

.field public static final enum TOGGLE_TRUNK:Lcom/deepalhome/launcher/event/BodyControlType;


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final iconRes:I

.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Lcom/deepalhome/launcher/event/BodyControlType;

    const/4 v1, 0x0

    const-string v4, "trunk"

    const-string v3, "TOGGLE_TRUNK"

    const-string v5, "Toggle trunk"

    const v2, 0x7f0800fd

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/event/BodyControlType;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/deepalhome/launcher/event/BodyControlType;->TOGGLE_TRUNK:Lcom/deepalhome/launcher/event/BodyControlType;

    new-instance v1, Lcom/deepalhome/launcher/event/BodyControlType;

    const/4 v8, 0x1

    const-string v11, "door_handle_expand"

    const-string v10, "EXPAND_DOOR_HANDLE"

    const-string v12, "Extend door handle"

    const v9, 0x7f08013d

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/event/BodyControlType;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/deepalhome/launcher/event/BodyControlType;->EXPAND_DOOR_HANDLE:Lcom/deepalhome/launcher/event/BodyControlType;

    new-instance v2, Lcom/deepalhome/launcher/event/BodyControlType;

    const/4 v14, 0x2

    const-string v17, "door_handle_retract"

    const-string v16, "RETRACT_DOOR_HANDLE"

    const-string v18, "Retract door handle"

    const v15, 0x7f08013c

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/event/BodyControlType;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/deepalhome/launcher/event/BodyControlType;->RETRACT_DOOR_HANDLE:Lcom/deepalhome/launcher/event/BodyControlType;

    new-instance v3, Lcom/deepalhome/launcher/event/BodyControlType;

    const/4 v8, 0x3

    const-string v11, "fuel_cap"

    const-string v10, "OPEN_FUEL_CAP"

    const-string v12, "Open fuel cap"

    const v9, 0x7f0800f3

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/event/BodyControlType;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/deepalhome/launcher/event/BodyControlType;->OPEN_FUEL_CAP:Lcom/deepalhome/launcher/event/BodyControlType;

    new-instance v4, Lcom/deepalhome/launcher/event/BodyControlType;

    const/4 v14, 0x4

    const-string v17, "glove_box"

    const-string v16, "OPEN_GLOVE_BOX"

    const-string v18, "Open glove box"

    const v15, 0x7f0800f5

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/event/BodyControlType;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/deepalhome/launcher/event/BodyControlType;->OPEN_GLOVE_BOX:Lcom/deepalhome/launcher/event/BodyControlType;

    new-instance v5, Lcom/deepalhome/launcher/event/BodyControlType;

    const/4 v8, 0x5

    const-string v11, "mirror_fold"

    const-string v10, "TOGGLE_MIRROR_FOLD"

    const-string v12,  "Fold/unfold rearview mirror"

    const v9, 0x7f0800fa

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/event/BodyControlType;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/deepalhome/launcher/event/BodyControlType;->TOGGLE_MIRROR_FOLD:Lcom/deepalhome/launcher/event/BodyControlType;

    move-object v0, v6

    filled-new-array/range {v0 .. v5}, [Lcom/deepalhome/launcher/event/BodyControlType;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/event/BodyControlType;->$VALUES:[Lcom/deepalhome/launcher/event/BodyControlType;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/event/BodyControlType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    new-instance v0, Lcom/deepalhome/launcher/event/BodyControlType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/event/BodyControlType$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/event/BodyControlType;->Companion:Lcom/deepalhome/launcher/event/BodyControlType$Companion;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/deepalhome/launcher/event/BodyControlType;->key:Ljava/lang/String;

    iput-object p5, p0, Lcom/deepalhome/launcher/event/BodyControlType;->displayName:Ljava/lang/String;

    iput p2, p0, Lcom/deepalhome/launcher/event/BodyControlType;->iconRes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/event/BodyControlType;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/event/BodyControlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/event/BodyControlType;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/event/BodyControlType;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/event/BodyControlType;->$VALUES:[Lcom/deepalhome/launcher/event/BodyControlType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/event/BodyControlType;

    return-object v0
.end method


# virtual methods
.method public final execute()V
    .locals 11

    invoke-virtual {p0}, Lcom/deepalhome/launcher/event/BodyControlType;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x0

    const-string v1, "toLowerCase(...)"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_e

    if-eq p0, v3, :cond_c

    const/4 v4, 0x2

    if-eq p0, v4, :cond_a

    const/4 v4, 0x3

    if-eq p0, v4, :cond_9

    const/4 v4, 0x4

    if-eq p0, v4, :cond_8

    const/4 v4, 0x5

    if-eq p0, v4, :cond_1

    goto/16 :goto_4

    :cond_1
    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getRearViewMirrorFold()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne v0, v3, :cond_7

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_7

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_6

    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    sget-object v1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v1

    if-eqz v1, :cond_5

    if-ne v0, v3, :cond_7

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_7

    goto :goto_0

    :cond_6
    const-string v7, "closed"

    const-string v8, "on"

    const-string v4, "fold"

    const-string v5, "folded"

    const-string v6, "close"

    const-string v9, "true"

    const-string v10, "enabled"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    :cond_7
    :goto_1
    xor-int/lit8 v0, v2, 0x1

    sget-object v1, Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;->setMirrorFold(Z)Z

    new-instance v1, Lcom/deepalhome/launcher/event/BodyControlType$execute$2;

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/event/BodyControlType$execute$2;-><init>(Z)V

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_4

    :cond_8
    sget-object p0, Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;->openGloveBox()Z

    goto/16 :goto_4

    :cond_9
    sget-object p0, Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;->openFuelCap()Z

    goto/16 :goto_4

    :cond_a
    sget-object p0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p0

    if-nez p0, :cond_b

    return-void

    :cond_b
    sget-object p0, Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;

    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;->setDoorHandleExpanded(Z)Z

    goto/16 :goto_4

    :cond_c
    sget-object p0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p0

    if-nez p0, :cond_d

    return-void

    :cond_d
    sget-object p0, Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;

    invoke-virtual {p0, v3}, Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;->setDoorHandleExpanded(Z)Z

    goto/16 :goto_4

    :cond_e
    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getTrunkDoorDegree()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-static {v4}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    if-eqz v0, :cond_11

    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v1

    if-eqz v1, :cond_10

    if-ne v0, v3, :cond_14

    :goto_2
    move v2, v3

    goto :goto_3

    :cond_10
    if-lez v0, :cond_14

    goto :goto_2

    :cond_11
    if-eqz v0, :cond_13

    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    sget-object v4, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v4

    if-eqz v4, :cond_12

    double-to-int v0, v0

    if-ne v0, v3, :cond_14

    goto :goto_2

    :cond_12
    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_14

    goto :goto_2

    :cond_13
    const-string v1, "opened"

    const-string v2, "on"

    const-string v4, "open"

    const-string v5, "true"

    const-string v6, "enabled"

    filled-new-array {v4, v1, v2, v5, v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    :cond_14
    :goto_3
    xor-int/lit8 v0, v2, 0x1

    sget-object v1, Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;->setTrunk(Z)Z

    new-instance v1, Lcom/deepalhome/launcher/event/BodyControlType$execute$1;

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/event/BodyControlType$execute$1;-><init>(Z)V

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    :goto_4
    return-void
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/event/BodyControlType;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final getIconRes()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/event/BodyControlType;->iconRes:I

    return p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/event/BodyControlType;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final isSupported()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    if-eq p0, v0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    :cond_4
    :goto_0
    return v0
.end method
