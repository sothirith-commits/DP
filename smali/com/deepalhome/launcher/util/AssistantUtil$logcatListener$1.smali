.class public final Lcom/deepalhome/launcher/util/AssistantUtil$logcatListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/AssistantUtil$logcatListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/AssistantUtil$logcatListener$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/AssistantUtil$logcatListener$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/AssistantUtil$logcatListener$1;->INSTANCE:Lcom/deepalhome/launcher/util/AssistantUtil$logcatListener$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    const-string v0, "log"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/AssistantUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AssistantUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, ", lon="

    const-string v3, ", lat="

    const-string v4, "Execute S05 coordinate navigation dest="

    const-string v5, "Recognized S05 semantic log query="

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    const-string v7, "Go home"

    const-string v8, "Go to company"

    const-string v9, "Go home now"

    const-string v10, "Navigate home"

    const-string v11, "Close navigation"

    const-string v12, "Navigate to work"

    const-string v13, "Navigate to company"

    const-string v14, "Navigate go home"

    const-string v15, "Navigation exit"

    const-string v6, "End navigation"

    move-object/from16 p1, v4

    const-string v4, "Exit navigation"

    move-object/from16 v16, v7

    const-string v7, "Navigate to work"

    move-object/from16 v17, v8

    const-string v8, "Navigate to company"

    const/16 v18, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object/from16 v21, v1

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v22, v11

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    move-object/from16 v30, v16

    move-object/from16 v16, v12

    goto/16 :goto_19

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->isS05SemanticLog(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->isS05SemanticLog(Ljava/lang/String;)Z

    move-result v0

    move-object/from16 v19, v9

    if-nez v0, :cond_2

    move-object/from16 v21, v1

    move-object/from16 v20, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    :goto_1
    move-object/from16 v9, v18

    goto/16 :goto_9

    :cond_2
    const-string v0, "semantic="

    const/4 v9, 0x6

    move-object/from16 v20, v10

    const/4 v10, 0x0

    invoke-static {v1, v0, v10, v10, v9}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    if-gez v0, :cond_4

    move-object/from16 v21, v1

    move-object/from16 v22, v11

    move-object/from16 v23, v12

    :cond_3
    :goto_2
    move-object/from16 v0, v18

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v9, "substring(...)"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v1

    const/16 v1, 0x7b

    move-object/from16 v22, v11

    const/4 v11, 0x6

    invoke-static {v0, v1, v10, v10, v11}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZI)I

    move-result v1

    move-object/from16 v23, v12

    const/16 v12, 0x7d

    invoke-static {v0, v12, v10, v11}, Lkotlin/text/StringsKt__StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CII)I

    move-result v11

    if-ltz v1, :cond_3

    if-gt v11, v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v10, 0x1

    add-int/2addr v11, v10

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->findS05Coordinate(Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    new-instance v9, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser$S05VoiceSemanticResult;

    sget-object v10, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->S05_QUERY_KEYS:Ljava/util/List;

    invoke-static {v1, v10}, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->findS05StringByKeys(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_7

    const-string v10, ""

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_7
    :goto_4
    sget-object v11, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->S05_DEST_NAME_KEYS:Ljava/util/List;

    invoke-static {v1, v11}, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser;->findS05StringByKeys(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    goto :goto_5

    :cond_8
    move-object/from16 v11, v18

    :goto_5
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    goto :goto_6

    :cond_9
    move-object/from16 v0, v18

    :goto_6
    invoke-direct {v9, v10, v1, v11, v0}, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser$S05VoiceSemanticResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :goto_7
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v9

    :goto_8
    instance-of v0, v9, Lkotlin/Result$Failure;

    if-eqz v0, :cond_a

    move-object/from16 v9, v18

    :cond_a
    check-cast v9, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser$S05VoiceSemanticResult;

    :goto_9
    if-nez v9, :cond_b

    const-string v0, "Recognized S05 semantic log but parse failed"

    invoke-static {v0}, Lcom/deepalhome/launcher/util/AssistantUtil;->logS05VoiceSemantic(Ljava/lang/String;)V

    :goto_a
    move-object/from16 v31, v13

    move-object/from16 v32, v14

    move-object/from16 v30, v16

    move-object/from16 v16, v23

    goto/16 :goto_19

    :cond_b
    iget-object v0, v9, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser$S05VoiceSemanticResult;->latitude:Ljava/lang/Double;

    iget-object v1, v9, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser$S05VoiceSemanticResult;->destName:Ljava/lang/String;

    iget-object v10, v9, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser$S05VoiceSemanticResult;->longitude:Ljava/lang/Double;

    :try_start_1
    iget-object v9, v9, Lcom/deepalhome/launcher/util/s05/navi/VoiceCommandParser$S05VoiceSemanticResult;->query:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", dest="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/deepalhome/launcher/util/AssistantUtil;->logS05VoiceSemantic(Ljava/lang/String;)V

    sget-object v5, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/deepalhome/launcher/config/UserConfig;->getVoiceAutoNavi()Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_a

    :cond_c
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :goto_b
    move-object/from16 v12, v16

    move-object/from16 v11, v23

    goto/16 :goto_11

    :sswitch_0
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    goto :goto_b

    :cond_d
    move-object/from16 v12, v17

    move-object/from16 v11, v23

    goto/16 :goto_10

    :catch_0
    move-exception v0

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    move-object/from16 v30, v16

    move-object/from16 v16, v23

    goto/16 :goto_18

    :sswitch_1
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    goto :goto_b

    :sswitch_2
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    goto :goto_b

    :cond_e
    move-object/from16 v12, v22

    move-object/from16 v11, v23

    goto :goto_e

    :sswitch_3
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    goto :goto_b

    :sswitch_4
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    goto :goto_b

    :sswitch_5
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    goto :goto_b

    :cond_f
    move-object/from16 v31, v13

    move-object/from16 v32, v14

    move-object/from16 v30, v16

    move-object/from16 v16, v23

    goto/16 :goto_17

    :sswitch_6
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v11, :cond_d

    goto :goto_b

    :sswitch_7
    move-object/from16 v11, v23

    :try_start_2
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v12, :cond_10

    :goto_c
    move-object/from16 v12, v16

    goto/16 :goto_11

    :cond_10
    move-object/from16 v12, v17

    goto/16 :goto_10

    :catch_1
    move-exception v0

    :goto_d
    move-object/from16 v31, v13

    move-object/from16 v32, v14

    move-object/from16 v30, v16

    move-object/from16 v16, v11

    goto/16 :goto_18

    :sswitch_8
    move-object/from16 v12, v22

    move-object/from16 v11, v23

    :try_start_3
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_11

    move-object/from16 v22, v12

    goto :goto_c

    :cond_11
    :goto_e
    const-string v0, "Execute S05 exit navigation"

    invoke-static {v0}, Lcom/deepalhome/launcher/util/AssistantUtil;->logS05VoiceSemantic(Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_20

    :catch_2
    move-exception v0

    move-object/from16 v22, v12

    goto :goto_d

    :sswitch_9
    move-object/from16 v12, v20

    move-object/from16 v11, v23

    :try_start_4
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v20, :cond_12

    move-object/from16 v20, v12

    goto :goto_c

    :cond_12
    move-object/from16 v20, v12

    :goto_f
    move-object/from16 v31, v13

    move-object/from16 v32, v14

    move-object/from16 v30, v16

    move-object/from16 v16, v11

    goto/16 :goto_17

    :catch_3
    move-exception v0

    move-object/from16 v20, v12

    goto :goto_d

    :sswitch_a
    move-object/from16 v12, v19

    move-object/from16 v11, v23

    :try_start_5
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    if-eqz v19, :cond_13

    move-object/from16 v19, v12

    goto :goto_f

    :cond_13
    move-object/from16 v19, v12

    goto :goto_c

    :catch_4
    move-exception v0

    move-object/from16 v19, v12

    goto :goto_d

    :sswitch_b
    move-object/from16 v12, v17

    move-object/from16 v11, v23

    :try_start_6
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_14

    move-object/from16 v17, v12

    goto :goto_c

    :cond_14
    :goto_10
    const-string v0, "Execute S05 company navigation"

    invoke-static {v0}, Lcom/deepalhome/launcher/util/AssistantUtil;->logS05VoiceSemantic(Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_20

    :catch_5
    move-exception v0

    move-object/from16 v17, v12

    goto :goto_d

    :sswitch_c
    move-object/from16 v12, v16

    move-object/from16 v11, v23

    :try_start_7
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    if-nez v16, :cond_1c

    :goto_11
    if-eqz v0, :cond_1b

    if-eqz v10, :cond_1b

    move-object/from16 v16, v11

    move-object/from16 v30, v12

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    :try_start_9
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    if-eqz v1, :cond_17

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v10, 0x1

    xor-int/2addr v0, v10

    if-eqz v0, :cond_15

    goto :goto_12

    :cond_15
    move-object/from16 v1, v18

    :goto_12
    if-nez v1, :cond_16

    goto :goto_13

    :cond_16
    move-object v9, v1

    const/4 v1, 0x1

    goto :goto_15

    :catch_6
    move-exception v0

    goto/16 :goto_18

    :cond_17
    :goto_13
    invoke-static {v9}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_18

    goto :goto_14

    :cond_18
    move-object/from16 v9, v18

    :goto_14
    if-nez v9, :cond_19

    goto/16 :goto_19

    :cond_19
    :goto_15
    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getS05VoiceAutoNaviMode()I

    move-result v0

    if-ne v0, v1, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/AssistantUtil;->logS05VoiceSemantic(Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/AssistantUtil$$ExternalSyntheticLambda3;

    const/16 v29, 0x0

    move-object/from16 v23, v0

    move-object/from16 v24, v9

    move-wide/from16 v25, v11

    move-wide/from16 v27, v13

    invoke-direct/range {v23 .. v29}, Lcom/deepalhome/launcher/util/AssistantUtil$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;DDI)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_20

    :cond_1a
    const-string v0, "Current mode is wait-for-system-navigation, ignoring semantic log direct third-party navigation"

    invoke-static {v0}, Lcom/deepalhome/launcher/util/AssistantUtil;->logS05VoiceSemantic(Ljava/lang/String;)V

    goto/16 :goto_20

    :catch_7
    move-exception v0

    :goto_16
    move-object/from16 v31, v13

    move-object/from16 v32, v14

    goto :goto_18

    :cond_1b
    move-object/from16 v16, v11

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    const-string v0, "S05 semantic log did not parse to coordinates, ignoring auto navigation"

    invoke-static {v0}, Lcom/deepalhome/launcher/util/AssistantUtil;->logS05VoiceSemantic(Ljava/lang/String;)V

    goto :goto_19

    :cond_1c
    move-object/from16 v16, v11

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    :goto_17
    const-string v0, "Execute S05 go home navigation"

    invoke-static {v0}, Lcom/deepalhome/launcher/util/AssistantUtil;->logS05VoiceSemantic(Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_20

    :catch_8
    move-exception v0

    move-object/from16 v16, v11

    move-object/from16 v30, v12

    goto :goto_16

    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception processing S05 semantic log: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/AssistantUtil;->logS05VoiceSemantic(Ljava/lang/String;)V

    :goto_19
    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto/16 :goto_20

    :cond_1d
    sget-object v0, Lcom/deepalhome/launcher/util/AssistantUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AssistantUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/AssistantUtil;->parsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/launcher/util/AssistantUtil$LogParser;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/deepalhome/launcher/util/AssistantUtil$LogParser;->keyword:Ljava/lang/String;

    move-object/from16 v3, v21

    const/4 v5, 0x0

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_1b

    :cond_1e
    move-object/from16 v21, v3

    goto :goto_1a

    :cond_1f
    move-object/from16 v3, v21

    move-object/from16 v1, v18

    :goto_1b
    check-cast v1, Lcom/deepalhome/launcher/util/AssistantUtil$LogParser;

    if-nez v1, :cond_20

    :goto_1c
    move-object/from16 v0, v18

    goto :goto_1d

    :cond_20
    iget-object v0, v1, Lcom/deepalhome/launcher/util/AssistantUtil$LogParser;->parse:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;

    goto :goto_1c

    :goto_1d
    if-nez v0, :cond_21

    goto/16 :goto_20

    :cond_21
    :try_start_a
    iget-object v1, v0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->query:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getVoiceAutoNavi()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_1f

    :sswitch_d
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto/16 :goto_1f

    :sswitch_e
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto/16 :goto_1f

    :sswitch_f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto/16 :goto_1f

    :sswitch_10
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto/16 :goto_1f

    :sswitch_11
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto/16 :goto_1f

    :sswitch_12
    move-object/from16 v3, v32

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto/16 :goto_1f

    :sswitch_13
    move-object/from16 v3, v31

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_1f

    :sswitch_14
    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_1f

    :sswitch_15
    move-object/from16 v3, v22

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_1f

    :cond_22
    new-instance v0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_20

    :sswitch_16
    move-object/from16 v3, v20

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_1f

    :sswitch_17
    move-object/from16 v3, v19

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_1e

    :sswitch_18
    move-object/from16 v3, v17

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_1f

    :cond_23
    new-instance v0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_20

    :sswitch_19
    move-object/from16 v3, v30

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_1f

    :cond_24
    :goto_1e
    new-instance v0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_20

    :cond_25
    :goto_1f
    iget-boolean v1, v0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->isStartNavi:Z

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->destName:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/util/AssistantUtil$ParsedLog;->coord:Lcom/deepalhome/launcher/util/AssistantUtil$Coord;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_26

    goto :goto_20

    :cond_26
    if-eqz v0, :cond_27

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getVoiceAutoNavi()Z

    move-result v2

    if-eqz v2, :cond_27

    new-instance v2, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1, v0}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    :catch_9
    :cond_27
    :goto_20
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0xae098 -> :sswitch_c
        0x1448107 -> :sswitch_b
        0x151868f -> :sswitch_a
        0x1696bc8 -> :sswitch_9
        0x2744ca08 -> :sswitch_8
        0x2bc2d951 -> :sswitch_7
        0x2bc3223a -> :sswitch_6
        0x2bc3d2c6 -> :sswitch_5
        0x2bcab428 -> :sswitch_4
        0x3b365d9a -> :sswitch_3
        0x42b4d128 -> :sswitch_2
        0x4ca98bb0 -> :sswitch_1
        0x4ca9d499 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xae098 -> :sswitch_19
        0x1448107 -> :sswitch_18
        0x151868f -> :sswitch_17
        0x1696bc8 -> :sswitch_16
        0x2744ca08 -> :sswitch_15
        0x2bc2d951 -> :sswitch_14
        0x2bc3223a -> :sswitch_13
        0x2bc3d2c6 -> :sswitch_12
        0x2bcab428 -> :sswitch_11
        0x3b365d9a -> :sswitch_10
        0x42b4d128 -> :sswitch_f
        0x4ca98bb0 -> :sswitch_e
        0x4ca9d499 -> :sswitch_d
    .end sparse-switch
.end method