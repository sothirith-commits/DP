.class public final Lcom/deepalhome/launcher/config/ConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

.field private static final KEY_USER_CONFIG:Ljava/lang/String; = "KEY_USER_CONFIG"

.field private static final appConfig:Lcom/deepalhome/launcher/config/appconfig/AppConfig;

.field private static final gson:Lcom/google/gson/Gson;

.field private static final hasBackgroundBlurPercent:Z

.field private static final mainHandler:Landroid/os/Handler;

.field private static final rawUserConfigJson:Ljava/lang/String;

.field private static final saveDebounceMs$delegate:Lkotlin/Lazy;

.field private static final saveRunnable:Ljava/lang/Runnable;

.field private static volatile saveScheduled:Z

.field private static final userConfig:Lcom/deepalhome/launcher/config/UserConfig;


# direct methods
.method public static synthetic $r8$lambda$HaiqzKLFNSOkBSzVrL7kEvFN9bg()V
    .locals 0

    invoke-static {}, Lcom/deepalhome/launcher/config/ConfigManager;->saveRunnable$lambda$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/config/ConfigManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager$saveDebounceMs$2;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager$saveDebounceMs$2;

    invoke-static {v1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v1

    sput-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->saveDebounceMs$delegate:Lkotlin/Lazy;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v2, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;

    invoke-direct {v2}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfigTypeAdapter;-><init>()V

    const-class v3, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v2, Lcom/deepalhome/launcher/task/model/TaskTriggerAdapter;

    invoke-direct {v2}, Lcom/deepalhome/launcher/task/model/TaskTriggerAdapter;-><init>()V

    const-class v3, Lcom/deepalhome/launcher/task/model/TaskTrigger;

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v2, Lcom/deepalhome/launcher/task/model/TaskActionAdapter;

    invoke-direct {v2}, Lcom/deepalhome/launcher/task/model/TaskActionAdapter;-><init>()V

    const-class v3, Lcom/deepalhome/launcher/task/model/TaskAction;

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v2, Lcom/deepalhome/launcher/task/model/TaskConditionAdapter;

    invoke-direct {v2}, Lcom/deepalhome/launcher/task/model/TaskConditionAdapter;-><init>()V

    const-class v3, Lcom/deepalhome/launcher/task/model/TaskCondition;

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    sput-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->gson:Lcom/google/gson/Gson;

    new-instance v2, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    sput-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->saveRunnable:Ljava/lang/Runnable;

    const-string v2, ""

    invoke-static {v2}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    const-string v3, "KEY_USER_CONFIG"

    const-string v4, "{}"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->rawUserConfigJson:Ljava/lang/String;

    const-string v3, "\"backgroundBlurPercent\""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    sput-boolean v3, Lcom/deepalhome/launcher/config/ConfigManager;->hasBackgroundBlurPercent:Z

    new-instance v3, Lcom/deepalhome/launcher/config/appconfig/AppConfig;

    invoke-direct {v3}, Lcom/deepalhome/launcher/config/appconfig/AppConfig;-><init>()V

    sput-object v3, Lcom/deepalhome/launcher/config/ConfigManager;->appConfig:Lcom/deepalhome/launcher/config/appconfig/AppConfig;

    const-class v3, Lcom/deepalhome/launcher/config/UserConfig;

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/config/UserConfig;

    if-nez v1, :cond_0

    new-instance v1, Lcom/deepalhome/launcher/config/UserConfig;

    invoke-direct {v1}, Lcom/deepalhome/launcher/config/UserConfig;-><init>()V

    :cond_0
    sput-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->userConfig:Lcom/deepalhome/launcher/config/UserConfig;

    invoke-direct {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->normalizeLoadedUserConfig()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\"color\""

    invoke-static {v2, v1, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfigImmediately()V

    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getSaveDebounceMs()J
    .locals 2

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->saveDebounceMs$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private final normalizeLoadedUserConfig()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->userConfig:Lcom/deepalhome/launcher/config/UserConfig;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getNavBarGridConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->sanitized()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    goto :goto_1

    :goto_0
    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v2

    :goto_1
    instance-of v3, v2, Lkotlin/Result$Failure;

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, v2

    :goto_2
    check-cast v1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->userConfig:Lcom/deepalhome/launcher/config/UserConfig;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getNavBarGridConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setNavBarGridConfig(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V

    move v1, v0

    goto :goto_3

    :cond_2
    move v1, v4

    :goto_3
    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getAppDensityDpi()I

    move-result v3

    const/16 v5, 0xa0

    const/16 v6, 0xdc

    invoke-static {v3, v5, v6}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v3

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getAppDensityDpi()I

    move-result v5

    if-eq v3, v5, :cond_3

    invoke-virtual {v2, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setAppDensityDpi(I)V

    move v1, v0

    :cond_3
    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getDesktopWidgets()Ljava/util/ArrayList;

    move-result-object v3

    sget-boolean v5, Lcom/deepalhome/launcher/config/ConfigManager;->hasBackgroundBlurPercent:Z

    xor-int/2addr v5, v0

    invoke-direct {p0, v3, v5}, Lcom/deepalhome/launcher/config/ConfigManager;->normalizeWidgetStyles(Ljava/util/ArrayList;Z)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move v1, v4

    goto :goto_5

    :cond_5
    :goto_4
    move v1, v0

    :goto_5
    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getWindowWidgets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2, v5}, Lcom/deepalhome/launcher/config/ConfigManager;->normalizeWidgetStyles(Ljava/util/ArrayList;Z)Z

    move-result p0

    if-nez p0, :cond_7

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    move v0, v4

    :cond_7
    :goto_6
    return v0
.end method

.method private final normalizeWidgetStyles(Ljava/util/ArrayList;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/deepalhome/launcher/widget/WidgetInfo;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/widget/WidgetInfo;

    iget-object v1, v0, Lcom/deepalhome/launcher/widget/WidgetInfo;->style:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget v1, v1, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundOpacityPercent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    iget-object v3, v0, Lcom/deepalhome/launcher/widget/WidgetInfo;->style:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    if-eqz v3, :cond_3

    iget v2, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    invoke-virtual {v0}, Lcom/deepalhome/launcher/widget/WidgetInfo;->getOrCreateStyle()Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    move-result-object v0

    if-eqz p2, :cond_4

    const/16 v3, 0x64

    iput v3, v0, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    :cond_4
    invoke-virtual {v0}, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->sanitize()V

    iget v3, v0, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundOpacityPercent:I

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_7

    iget v0, v0, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_7
    :goto_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_8
    :goto_3
    return p0
.end method

.method private static final saveRunnable$lambda$0()V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/deepalhome/launcher/config/ConfigManager;->saveScheduled:Z

    invoke-static {}, Lcom/blankj/utilcode/util/SPUtils;->getInstance()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->gson:Lcom/google/gson/Gson;

    sget-object v3, Lcom/deepalhome/launcher/config/ConfigManager;->userConfig:Lcom/deepalhome/launcher/config/UserConfig;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KEY_USER_CONFIG"

    invoke-virtual {v1, v3, v2, v0}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getAppConfig()Lcom/deepalhome/launcher/config/appconfig/AppConfig;
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->appConfig:Lcom/deepalhome/launcher/config/appconfig/AppConfig;

    return-object p0
.end method

.method public final getGson()Lcom/google/gson/Gson;
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method public final getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->userConfig:Lcom/deepalhome/launcher/config/UserConfig;

    return-object p0
.end method

.method public final isCarInit()Z
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->userConfig:Lcom/deepalhome/launcher/config/UserConfig;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getType()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final saveUserConfig()V
    .locals 4

    sget-boolean v0, Lcom/deepalhome/launcher/config/ConfigManager;->saveScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/deepalhome/launcher/config/ConfigManager;->saveScheduled:Z

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->saveRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getSaveDebounceMs()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final saveUserConfigImmediately()V
    .locals 3

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->mainHandler:Landroid/os/Handler;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->saveRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/deepalhome/launcher/config/ConfigManager;->saveScheduled:Z

    invoke-static {}, Lcom/blankj/utilcode/util/SPUtils;->getInstance()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->gson:Lcom/google/gson/Gson;

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->userConfig:Lcom/deepalhome/launcher/config/UserConfig;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "KEY_USER_CONFIG"

    invoke-virtual {p0, v2, v0, v1}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final declared-synchronized updateCarInfo(Lkotlin/jvm/functions/Function1;)V
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    const-string v1, "block"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->userConfig:Lcom/deepalhome/launcher/config/UserConfig;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v2

    const v34, 0x7fffffff

    const/16 v35, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v36, v2

    invoke-static/range {v2 .. v35}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->copy$default(Lcom/deepalhome/launcher/carinfo/CacheCarInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v2

    invoke-virtual/range {v36 .. v36}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->setType(Ljava/lang/Integer;)V

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v36

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getType()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/UserConfig;->setCarInfo(Lcom/deepalhome/launcher/carinfo/CacheCarInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method
